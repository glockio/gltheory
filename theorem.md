# Theorem.md v20 Revision Plan — Single Graph Model

## EXECUTIVE SUMMARY

The move from two graphs to one graph is the largest conceptual change since
the framework's inception. A1 is completely rewritten. A3 becomes trivially
true and merges into A1. Every derived mechanic that referenced the two-layer
architecture needs updated language. Several open problems get closed or
substantially narrowed.

But the change is SIMPLIFYING — we're removing a layer, not adding one. The
document should get shorter, not longer.

---

## SECTION-BY-SECTION PLAN

### DEFINITIONS — Minor updates

**ADD:**

- **Committed edge:** An edge that has been resolved to a definite weight and
  written into the current frame. Committed edges form the neighborhood
  structure (space).
- **Uncommitted edge (potential edge):** An edge pattern the engine is computing
  but hasn't committed. The set of uncommitted potential edges IS the wave
  function for that subgraph.
- **Neighborhood topology:** The large-scale pattern of committed edges. This IS
  space. Distance = shortest committed-path length. Dimension = growth rate of
  reachable nodes with hop count.
- **Local topology:** The structure of a node and its immediate connections.
  Determines whether something is mass (cyclic), energy (propagating return
  value), or quantum (uncommitted edges).

**KEEP:** Graph, DAG, Cyclic Graph, Spectral Radius, Strict Consumer, Lazy
Evaluation, Return Value — all unchanged.

**REMOVE:** No definitions to remove, but "Topological Sort" can stay as-is since
it's used in the DAG/cycle distinction.

---

### A1 — COMPLETE REWRITE

**OLD:** Two types of graph structure in a many-to-many relationship. Content
graphs (no spatial properties) + spatial graph (IS space). Dependency edges
correlate with spatial proximity. Spacetime = edge-cost matrix [identification].

**NEW: A1 — One Graph**

Reality is a single graph. Nodes connected by weighted directed edges.

- **Local topology** (a node and its immediate connections) determines what
  something IS: mass (cyclic subgraph, return values recycle), energy
  (propagating return value, traversing edges), quantum state (uncommitted
  edge pattern, no strict consumer has demanded resolution).

- **Neighborhood topology** (the large-scale pattern of committed edges) IS
  space. Distance between nodes = shortest committed-path length. Dimension
  is defined by how the count of reachable nodes grows with distance: if
  reachable nodes at distance r grows as ~r³, the graph is 3-dimensional.
  Curvature = non-uniform distribution of edge weights, caused by budget
  drain from mass.

- **Position** = having committed edges to specific neighbors. A particle
  "at location X" means its subgraph has committed edges connecting it to the
  nodes in cluster X. Being "in superposition" means those edges haven't been
  committed — the engine is walking potential edge patterns.

- **Entanglement** = a direct edge between nodes that are distant in the
  neighborhood topology. When particles interact, they form direct edges.
  Subsequent interactions with other nodes build long neighborhood paths
  between them, but the direct entanglement edge remains — one hop. Resolution
  propagates through the direct edge, bypassing neighborhood distance.

- **[IDENTIFICATION] Spacetime = the pattern of committed edge weights** across
  the graph. What GR calls the metric tensor = the committed edge-weight
  distribution. Flat spacetime = uniform weights. Curved = weights distorted
  by mass's budget drain.

- **Space emerges from computation.** Propagating return values create new edges
  and nodes. The graph grows through its own computation. More computation
  produces more structure, which enables more computation — a self-reinforcing
  process. This is cosmic expansion.

**KEY IMPLICATIONS to note in the axiom:**

- "Two layers" are now two SCALES of the same graph: micro (local topology) =
  content, macro (neighborhood topology) = space
- The dependency-proximity correlation from old A1 is AUTOMATIC — nodes that
  are close in the graph (few hops) naturally share more edges, so interactions
  are local by construction
- No separate "spatial graph" that "references" content graphs — position IS
  committed edges, space IS neighborhood topology

---

### A2 — MINOR UPDATE

**KEEP:** S(Ω+1) = F(S(Ω)), determinism, non-invertibility, three time levels.

**UPDATE the three-level time table:**

| Level            | What it is                 | Old language                     | New language                                                                                    |
| ---------------- | -------------------------- | -------------------------------- | ----------------------------------------------------------------------------------------------- |
| Engine time      | Global tick                | unchanged                        | unchanged                                                                                       |
| Experienced time | State transitions per tick | "computed on your content graph" | "computed on your subgraph" (no longer a "content graph" — it's a subgraph of the single graph) |
| Rendered time    | Committed frame            | "static snapshot"                | "the pattern of committed edges — a static snapshot"                                            |

---

### A3 — MERGE INTO A1

**OLD:** "Everything is a graph. Interactions = graph merges. Inverse graphs
cancel. Topology determines behavior."

**NEW:** This is now trivially true since A1 says reality IS a single graph.
The content of A3 (interactions = merges, inverses cancel, topology determines
behavior) should be moved INTO A1 as a subsection: "How the graph evolves."

**Renumber:** A4 → A3, A5 → A4. Framework becomes FOUR axioms instead of five.
(This is a good thing — fewer axioms, same explanatory power.)

ACTUALLY — let me reconsider. The content in A3 (merges, inverses, topology)
is distinct from A1 (the structure). It's about OPERATIONS, not structure.
And A4 (budget) and A5 (lazy eval) are also distinct. Maybe keep five axioms
but make A3 tighter: "Graph Operations" instead of "Everything is a Graph."

**DECISION: Keep five axioms.** Rename A3 to "Graph Operations" and tighten it:

A3 — Graph Operations

- Interaction = subgraph merge (adjacency matrices combine)
- Annihilation = inverse subgraphs meeting (matrices cancel, all locked
  return values escape as energy)
- Topology (cycles, spectral radius, connectivity) determines behavior
- Propagating return values create new edges in the graph → the graph grows
  through its own computation

That last point is NEW and critical — it's what gives us expansion.

---

### A4 — MINOR LANGUAGE UPDATE

**OLD:** References "content graphs" and "spatial graph" in places.

**UPDATE all references:**

- "content graph" → "subgraph" or "cyclic subgraph" or "local topology"
- "spatial graph" → "neighborhood topology" or "committed edge structure"
- "propagate through the spatial graph" → "propagate through committed edges"

**ADD to the energy/mass table:**
A third category:

|              | Energy                        | Mass                          | Structure (new)                     |
| ------------ | ----------------------------- | ----------------------------- | ----------------------------------- |
| Definition   | Return values propagating OUT | Return values feeding BACK IN | Return values creating NEW edges    |
| What happens | Traverses existing edges      | Recycles within cycle         | Extends the graph                   |
| Budget       | Consumed, released            | Consumed, locked              | Consumed, invested in new structure |

This third category is what drives expansion. Not all return values either
escape or recycle — some create new connections in the graph. These are
"invested" in new structure. This is the mechanism for expansion.

**KEEP:** Conservation, E=mc² derivation, budget mechanics — all unchanged.

---

### A5 — MINOR LANGUAGE UPDATE

**UPDATE:**

- "write to spatial graph" → "commit edges to the neighborhood structure"
- "data-layer state" → "uncommitted edge pattern"
- "content-graph layer" → "the uncommitted subgraph"
- "spatial graph references it" → "the neighborhood structure holds potential
  connections to it"

**REWRITE "Where the wave function lives":**

OLD: "At the content-graph layer ONLY. The spatial graph holds a reference to
the unresolved content graph."

NEW: "The wave function is the set of uncommitted potential edges — the engine
is computing which edges to commit but no strict consumer has demanded a
definite answer. Position means committed edges to specific neighbors. The
wave function IS the uncommitted version of position — potential edges to
many possible neighbors, none yet committed."

This is actually CLEARER because position and wave function are now the same
thing at different stages: uncommitted edges → wave function, committed edges
→ definite position.

---

### DERIVED MECHANICS — Section by section

#### Gravity & Spacetime

| ID                                  | Change needed                                                                                                                                                                                                                                                                                                                                                                                             |
| ----------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| D1 Gravity                          | UPDATE: Remove "dependency-proximity correlation" (now automatic — graph proximity = few hops = more shared edges). ADD: "In a 3D graph (where reachable nodes at distance r grows as ~r²), drain distributes over ~r² nodes at each distance → 1/r² force law. The force law is the dimensionality." Status upgrades from [DERIVED with caveat] to [DERIVED] with caveat only about WHY the graph is 3D. |
| D2 (was spacetime=edge-cost matrix) | RENUMBER. This is now part of A1. Remove as separate derived mechanic OR keep as a corollary labeled [FROM A1].                                                                                                                                                                                                                                                                                           |
| D3 Gravity+dilation=one mechanism   | UPDATE: "Budget drain simultaneously warps committed edge weights (curvature) and starves neighbor nodes of compute cycles (dilation)." Otherwise unchanged.                                                                                                                                                                                                                                              |
| D4 Gravity unshieldable             | REWRITE: "Budget drain propagates through committed edges. A shield is a subgraph made of the same committed edges. The shield can't intercept drain flowing through its own structure." BETTER than "wrong layer."                                                                                                                                                                                       |
| D5 Gravitational waves              | MINOR: "propagate through committed edges at C" instead of "through the spatial graph at C"                                                                                                                                                                                                                                                                                                               |
| D6 Frame dragging                   | UPGRADE from [OPEN] to [QUALITATIVE]: "In the single graph, rotation means the cyclic walk traverses neighborhood nodes in a specific directional order. This ordering creates asymmetric edge weights along the rotation axis." More natural than in two-graph model.                                                                                                                                    |
| D7-D12                              | Minor language updates ("neighborhood topology" instead of "spatial graph"). No conceptual changes.                                                                                                                                                                                                                                                                                                       |

#### Time & Motion

| ID                    | Change needed                                                                                                                                      |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| D13 Velocity dilation | UPDATE: "Motion = node's committed edges being remapped to new neighbors. Old edges dropped, new edges created." Same mechanism, cleaner language. |
| D14-D18               | Minor language updates. No conceptual changes.                                                                                                     |
| D19 Lorentz symmetry  | UNCHANGED — still [OPEN].                                                                                                                          |

#### Mass & Particles

| ID      | Change needed                                                                                                |
| ------- | ------------------------------------------------------------------------------------------------------------ |
| D20-D25 | Minor: "cyclic subgraph" instead of "cyclic content graph." No conceptual changes. These were already clean. |

#### Quantum Mechanics

| ID                 | Change needed                                                                                                                                                                                                                                                                                                                         |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| D26 Superposition  | REWRITE: "No strict consumer → engine walks potential edge patterns without committing them. The uncommitted edge pattern IS the superposition."                                                                                                                                                                                      |
| D27 Wave function  | REWRITE: "The set of uncommitted potential edges evolving tick by tick. Position = committed edges to specific neighbors. Wave function = uncommitted potential edges to many possible neighbors."                                                                                                                                    |
| D28 Collapse       | UPDATE: "Strict consumer demands resolution → engine commits specific edges → one definite position (committed edges to specific neighbors)."                                                                                                                                                                                         |
| D29-D31            | Update language but mechanisms unchanged.                                                                                                                                                                                                                                                                                             |
| D32 Decoherence    | UPDATE: "Dense neighborhood = many committed nodes with edges to the quantum subgraph. Each is a potential strict consumer. More neighbors = more demand for definite values." Even more natural in single graph.                                                                                                                     |
| D33 Entanglement   | MAJOR REWRITE: "Two particles interacted → formed direct edges. Subsequent interactions built long neighborhood paths between them. The direct entanglement edge persists — one hop. Resolution propagates through the direct edge. Neighborhood distance irrelevant." Much simpler than "one content graph, two spatial references." |
| D34 Bell's theorem | UPDATE: "The entanglement edge IS the non-local hidden variable. It connects two distant nodes directly. Bell rules out local hidden variables (stored at each node). The entanglement edge is shared — it isn't stored at either node."                                                                                              |
| D35-D36            | Minor updates.                                                                                                                                                                                                                                                                                                                        |

#### Cosmology & Other

| ID                        | Change needed                                                                                                                                                                                                                                                                                                                                                                                                               |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| D37-D39                   | Unchanged.                                                                                                                                                                                                                                                                                                                                                                                                                  |
| D40 Holographic principle | UPGRADE to [DERIVED]: "Information about a subgraph is determined by its boundary edges (the cut between it and the rest of the graph). Internal structure can be reconstructed from boundary connections. Information scales with boundary, not volume." Graph-cut properties are well-established mathematics.                                                                                                            |
| D41 Planck units          | Unchanged [IDENTIFICATION].                                                                                                                                                                                                                                                                                                                                                                                                 |
| D42 Dark matter           | MINOR: "Cyclic subgraphs whose edges don't connect to normal matter's interaction edges. Embedded in the neighborhood (have position, consume budget) but internally disjoint from EM/strong edges."                                                                                                                                                                                                                        |
| D43 Dark energy           | MAJOR UPGRADE from [SPECULATIVE] to [QUALITATIVE/DERIVED]: "Computation creates structure. Return values propagating through the graph create new edges. More graph → more computation → more edges → growth proportional to size → self-reinforcing expansion. The 'cosmological constant' is the base rate of edge creation — a property of F." This replaces the old "baseline cost" hand-wave with a derived mechanism. |
| D44 Cosmic expansion      | MAJOR UPGRADE from [QUALITATIVE no mechanism] to [DERIVED]: "The graph grows because computation creates new connections. Each tick, return values propagate and interact, producing new edges. This is not an external force — it is the graph computing itself into existence."                                                                                                                                           |

**ADD NEW DERIVED MECHANICS:**

| ID  | Mechanic                         | Statement                                                                                                                                                                                                                                                                          | From        | Status                                                                                                                   |
| --- | -------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ------------------------------------------------------------------------------------------------------------------------ |
| D45 | **Why 3D**                       | The graph's local connectivity determines its emergent dimensionality. WHY the graph is 3D (r² neighbor growth) rather than 2D or 4D is an open problem — but the relationship between connectivity and dimension is established mathematics.                                      | A1          | [OPEN] — the fact that dimensionality = connectivity growth rate is derived. Why THIS dimensionality is open.            |
| D46 | **Spacetime improves over time** | Early universe: sparse graph, coarse geometry, QG effects significant. As computation creates structure, the graph densifies → finer mesh → smoother emergent geometry → GR becomes more precise. This is mesh refinement.                                                         | A1, D44, A3 | [DERIVED]                                                                                                                |
| D47 | **Inflation**                    | Initial graph is densely connected (every node connected to many others). Explosive computation → explosive edge creation → exponential growth. As graph sparsifies to local connectivity, growth rate drops. Inflationary period = dense→sparse transition.                       | A1, D44     | [QUALITATIVE] — mechanism identified, quantitative model not built.                                                      |
| D48 | **Temperature**                  | Average rate of edge remapping among nodes in a neighborhood region. Higher temperature = more edge changes per tick = more "kinetic energy."                                                                                                                                      | A1, A4      | [QUALITATIVE] — natural definition in single graph.                                                                      |
| D49 | **Phase transitions**            | At low temperature (slow remapping): stable committed edges (solid). Higher temperature: frequent neighbor changes (liquid). Very high: rapidly changing structure (gas). Phase transition = critical remapping rate where neighborhood topology qualitatively changes.            | D48         | [QUALITATIVE]                                                                                                            |
| D50 | **Virtual particles**            | Transient uncommitted edge patterns that briefly form during the walk and resolve within the computation. They exist as potential structure during the tick but don't survive to the committed frame.                                                                              | A5          | [QUALITATIVE] — mechanism for Casimir effect: fewer available paths between close dense subgraphs → net inward pressure. |
| D51 | **QCD confinement (sketch)**     | Quarks are nodes whose cyclic topology requires specific shared edges. Pulling quarks apart stretches those edges (increasing weight). When stretching cost exceeds creation cost of new cyclic pair, a new quark-antiquark pair forms instead. Can't isolate a quark.             | A1, A4, D20 | [QUALITATIVE] — direction correct, mechanism sketched.                                                                   |
| D52 | **Uncertainty principle**        | Position = committed edges to specific neighbors. Momentum = rate of edge remapping. These describe the same edges (static pattern vs. rate of change). Constraining one constrains the other — they are conjugate because they describe the same structure from two perspectives. | A1, D13     | [QUALITATIVE] — conceptual hook stronger than before but ΔxΔp ≥ ℏ/2 not derived.                                         |

---

### OPEN PROBLEMS — RERANK

**CLOSED or substantially addressed:**

- ~~#8 (1/r² profile)~~ → Derived from 3D graph dimensionality
- ~~#14 (Spatial expansion mechanism)~~ → Computation creates structure

**NEW problems:**

- **Why 3D?** — Why does local connectivity produce r² neighbor growth? This is the dimensionality problem.
- **What is F?** — The Rule is never specified. Every derivation assumes F exists and is deterministic. Can we constrain F's form from observations?

**RERANKED list:**

1. Einstein field equations (unchanged — still #1)
2. What is F? (NEW — fundamental)
3. Why 3D? (NEW — determines force law)
4. Lorentz symmetry (unchanged)
5. Spin, charge, quantum numbers
6. Born rule proof
7. Particle masses from spectral radii
8. E = mc² proof
9. Lorentz factor from budget dynamics
10. Strict consumer formalization
11. Noether / conservation laws
12. Photon frequency in graph terms
13. QFT full mapping (partially addressed by D50, D51)

---

### PREDICTIONS — UPDATE

**KEEP:** P1 (proximity decoherence), P2 (gravitational budget starvation)

**ADD:** P3 (expansion from computation) — Standard cosmology: expansion driven
by dark energy, a mysterious component. Framework: expansion is the graph
growing through its own computation. No separate energy source. The
"cosmological constant" is the base rate of edge creation. Distinguishing
test: if dark energy is truly constant (Λ), this is consistent. If dark
energy varies over time, we need the edge-creation rate to vary, which would
require understanding F.

---

## STRUCTURAL NOTES FOR THE REWRITE

### Things that get SIMPLER:

- A1 is one thing, not three (one graph vs. two graphs + relationship)
- Entanglement: direct edge vs neighborhood distance (one sentence vs. paragraph)
- Gravity unshieldable: same edges, not "wrong layer"
- Position/wave function: committed edges vs uncommitted edges (same thing, different stage)
- No "data layer" vs "render layer" — just committed vs uncommitted edges

### Things that get RICHER:

- Expansion has a mechanism
- 1/r² is derived (given 3D)
- 7 new derived mechanics (D45-D52)
- Temperature, phase transitions, virtual particles, confinement all gain mechanisms

### Tone:

- The document should be SHORTER than v19.2 despite having more derived mechanics
- This is because the axioms are simpler (one graph, not two)
- Every explanation that previously required "the content graph has no spatial location, the spatial graph references it" can be replaced with "direct edge vs neighborhood path" or "committed vs uncommitted edges"
- The framework has four core concepts: ONE GRAPH, ONE RULE, BUDGET, LAZY EVAL
- Everything else derives from these

### Word count target: ~2500 words (current: 2255, so similar despite more content)
