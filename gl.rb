# =============================================================================
#  P R I M E  G R A P H  C O M P U T E R
#
#  Rules (and only these):
#   1. Nodes store values as prime factorizations
#   2. Edges define arithmetic operations between nodes
#   3. A node's value is NEVER computed unless a consumer pulls it  (lazy)
#   4. Each compute increments the node's revision counter
#   5. Call stack depth is tracked during evaluation, never encoded as physics
#   6. Snapshots are non-mutating reads — they never trigger computation
#
#  Everything else (mass, gravity, time dilation) is left to the observer.
# =============================================================================

require 'prime'

# -----------------------------------------------------------------------------
# PrimeValue — a number stored as its prime factorization { p => exponent }
# -----------------------------------------------------------------------------
class PrimeValue
  attr_reader :factors

  def initialize(n = 1)
    @factors = n == 1 ? {} : Prime.prime_division(n.abs).to_h
  end

  def self.from_factors(f)
    pv = allocate
    pv.instance_variable_set(:@factors, f.reject { |_, e| e.zero? })
    pv
  end

  def to_s    = @factors.empty? ? "1" : @factors.map { |p,e| e==1 ? p.to_s : "#{p}^#{e}" }.join("·")
  def ==(o)   = @factors == o.factors
  def vacuum? = @factors.empty?

  def *(o)   = merge(o) { |_, a, b| a + b }
  def /(o)   = merge(o) { |_, a, b| a - b }
  def invert = PrimeValue.from_factors(@factors.transform_values(&:-@))

  def self.lcm(a, b)
    from_factors((a.factors.keys | b.factors.keys).map { |p|
      [p, [a.factors[p]||0, b.factors[p]||0].max]
    }.to_h)
  end

  def self.gcd(a, b)
    from_factors((a.factors.keys & b.factors.keys).map { |p|
      [p, [a.factors[p], b.factors[p]].min]
    }.to_h)
  end

  private

  def merge(o, &blk)
    PrimeValue.from_factors(
      (@factors.keys | o.factors.keys).map { |p|
        [p, blk.call(p, @factors[p]||0, o.factors[p]||0)]
      }.to_h
    )
  end
end

# -----------------------------------------------------------------------------
# Node — lazy. Value is nil until a consumer pulls it.
# -----------------------------------------------------------------------------
class Node
  attr_reader :id, :label, :op, :children, :revision, :peak_stack_depth
  attr_reader :cached  # nil = not yet computed (unobserved)

  @@counter = 0

  def initialize(seed, op: :multiply, label: nil)
    @id               = (@@counter += 1)
    @seed             = seed.is_a?(PrimeValue) ? seed : PrimeValue.new(seed)
    @cached           = nil          # unobserved until pulled
    @revision         = 0
    @peak_stack_depth = 0
    @children         = []
    @op               = op
    @label            = label || "n#{@id}"
  end

  def computed? = !@cached.nil?
  def leaf?     = @children.empty?

  # Called only by Graph#pull — never call directly
  def _compute(stack_depth, &evaluator)
    child_vals = @children.map { |c| evaluator.call(c) }

    @cached = child_vals.empty? ? @seed : _reduce(child_vals)
    @revision         += 1
    @peak_stack_depth  = [@peak_stack_depth, stack_depth].max
    @cached
  end

  # Non-mutating peek — safe for snapshots
  def peek = @cached

  def invalidate!
    @cached = nil
  end

  private

  def _reduce(vals)
    case @op
    when :multiply then vals.reduce(:*)
    when :divide   then vals.reduce(:/)
    when :lcm      then vals.reduce { |a, b| PrimeValue.lcm(a, b) }
    when :gcd      then vals.reduce { |a, b| PrimeValue.gcd(a, b) }
    else vals.last
    end
  end
end

# -----------------------------------------------------------------------------
# Graph — manages nodes, edges, call stack tracking, and snapshots
# -----------------------------------------------------------------------------
class Graph
  attr_reader :nodes, :edges

  def initialize
    @nodes      = {}   # id => Node
    @edges      = []   # [parent_id, child_id]
    @call_stack = []   # live stack during evaluation (ids)
  end

  def add(seed, op: :multiply, label: nil)
    n = Node.new(seed, op: op, label: label)
    @nodes[n.id] = n
    n
  end

  def connect(parent, child)
    parent.children << child
    @edges << [parent.id, child.id]
    parent.invalidate!  # subgraph changed, result is now stale
    self
  end

  # Pull: the only way to trigger computation. Lazy — only computes what's needed.
  def pull(node)
    _eval(node)
  end

  # Snapshot: a non-mutating read. Never triggers computation.
  def snapshot(label = nil)
    Snapshot.new(
      nodes:  @nodes.values.map { |n| NodeRecord::Factory.from(n) },
      edges:  @edges.dup,
      label:  label
    )
  end

  private

  def _eval(node)
    @call_stack.push(node.id)
    depth = @call_stack.size

    result = node._compute(depth) { |child| _eval(child) }

    @call_stack.pop
    result
  end
end

# -----------------------------------------------------------------------------
# NodeRecord — immutable snapshot of one node at one moment in time
# -----------------------------------------------------------------------------
NodeRecord = Struct.new(:id, :label, :value_str, :revision, :peak_stack_depth,
                        :computed, :child_ids, keyword_init: true)

module NodeRecord::Factory
  def self.from(node)
    NodeRecord.new(
      id:               node.id,
      label:            node.label,
      value_str:        node.peek&.to_s || "?",
      revision:         node.revision,
      peak_stack_depth: node.peak_stack_depth,
      computed:         node.computed?,
      child_ids:        node.children.map(&:id)
    )
  end
end

# -----------------------------------------------------------------------------
# Snapshot — two render modes, zero side effects
# -----------------------------------------------------------------------------
class Snapshot
  def initialize(nodes:, edges:, label: nil)
    @nodes    = nodes
    @edges    = edges
    @label    = label
    @node_map = nodes.map { |n| [n.id, n] }.to_h
  end

  # --- Mode 1: Graph topology — nodes, edges, current values ----------------
  def render_graph
    child_ids = @edges.map { |_, to| to }.to_set
    roots     = @nodes.reject { |n| child_ids.include?(n.id) }

    out = []
    out << "┌─ GRAPH  #{@label ? "[ #{@label} ]" : ""}".ljust(52) + "─┐"
    roots.each { |r| _tree(r, out, "", true) }
    out << "└" + "─" * 53 + "┘"
    out.join("\n")
  end

  # --- Mode 2: Call stack topology — peak depth as vertical bars -------------
  # Nodes with deep subgraphs appear as tall peaks.
  # Uncomputed nodes are shown as dashed lines (they have no depth yet).
  def render_stack
    max_d = [@nodes.map(&:peak_stack_depth).max, 1].max

    out = []
    out << "┌─ CALL STACK TOPOLOGY  #{@label ? "[ #{@label} ]" : ""}".ljust(52) + "─┐"
    out << "  peak stack depth (height) per node"
    out << "  unobserved nodes shown as ·"
    out << ""

    max_d.downto(1) do |d|
      row = @nodes.map { |n|
        if !n.computed
          "   ·    "
        elsif n.peak_stack_depth >= d
          "  ████  "
        else
          "        "
        end
      }
      out << "#{d.to_s.rjust(3)} │#{row.join}│"
    end

    out << "    └" + ("────────" * @nodes.size) + "┘"
    out << "     #{@nodes.map { |n| n.label.center(8) }.join}"
    out << ""
    out << "  rev:   #{@nodes.map { |n| "#{n.label}=#{n.revision}" }.join("  ")}"
    out << "└" + "─" * 53 + "┘"
    out.join("\n")
  end

  private

  def _tree(node, out, prefix, last)
    branch  = last ? "└── " : "├── "
    state   = node.computed ? "✓" : "○"
    out << "#{prefix}#{branch}#{state} #{node.label.ljust(10)} " \
           "v=#{node.value_str.ljust(10)} " \
           "rev=#{node.revision}  peak_depth=#{node.peak_stack_depth}"

    ext   = prefix + (last ? "    " : "│   ")
    kids  = node.child_ids.map { |id| @node_map[id] }.compact
    kids.each_with_index { |c, i| _tree(c, out, ext, i == kids.size - 1) }
  end
end


# =============================================================================
#  D E M O
# =============================================================================

g = Graph.new

# Build a subgraph
root  = g.add(1,   op: :multiply, label: "root")
a     = g.add(12,  op: :multiply, label: "a")      # 2²·3
b     = g.add(10,  op: :multiply, label: "b")      # 2·5
c     = g.add(3,   op: :multiply, label: "c")      # 3
leaf1 = g.add(2,   op: :multiply, label: "leaf1")
leaf2 = g.add(5,   op: :multiply, label: "leaf2")

g.connect(root, a)
g.connect(root, b)
g.connect(a,    c)
g.connect(b,    leaf1)
g.connect(b,    leaf2)

# --- Snapshot BEFORE any computation — all nodes unobserved ---
puts "\n=== BEFORE PULL ==="
snap1 = g.snapshot("before pull")
puts snap1.render_graph
puts snap1.render_stack

# --- Pull the root — triggers lazy evaluation down the subgraph ---
puts "\n\n=== PULLING root ==="
result = g.pull(root)
puts "  result: #{result}"

# --- Snapshot AFTER pull — all nodes now observed ---
puts "\n=== AFTER PULL ==="
snap2 = g.snapshot("after pull")
puts snap2.render_graph
puts snap2.render_stack

# --- Pull again — revisions increment, proving re-evaluation ---
puts "\n\n=== PULLING root again ==="
g.pull(root)
snap3 = g.snapshot("second pull")
puts snap3.render_stack

# --- Lazy demo: add a disconnected node, snapshot shows it as unobserved ---
puts "\n\n=== ADDING unobserved node ==="
ghost = g.add(7, label: "ghost")
snap4 = g.snapshot("ghost unobserved")
puts snap4.render_graph