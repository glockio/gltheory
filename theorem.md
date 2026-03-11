# GL Theory — Formal Specification

**Version 1.0 | March 2026**

---

## Axioms

### A1: Graph Structure

Reality is a directed graph G = (N, E) where N is a set of nodes and E is a set of directed edges. Each edge e ∈ E carries an operation op(e) that transforms the value passing through it.

### A2: Recursive Evaluation

A single recursive function evaluates the graph:

```
function evaluate(node):
    if node has no children:
        return 1                        // leaf — base case

    result = identity
    for each child of node:
        child_value = evaluate(child)   // recurse
        result = result × child_value   // apply edge operation

    node.revision += 1                  // tick the counter
    node.committed = result             // lock in the result
    return result
```

The output of evaluation pass W(n) becomes the input of pass W(n+1). This is the engine's only operation.

### A3: Lazy Evaluation

No node evaluates until a consumer demands its result. A node with no consumer remains in a pending (unevaluated) state indefinitely.

### A4: No Stored Values

Nodes store no intrinsic values. All values are derived from graph topology — the pattern of connections and the operations on edges. The structure IS the value.

### A5: Self-Feeding Recursion

The output of evaluation pass W(n) feeds the input of pass W(n+1). The graph evaluates itself repeatedly, each pass consuming the committed results of the previous pass. The graph may also grow: evaluations can add new nodes and edges.

---

## Derived Mechanics

Each derived mechanic follows logically from the axioms. The citation format is [Axiom(s) → Mechanic].

### D1: Time = Change

[A2, A5 → D1]

Time is the revision counter. Each time a node commits a new result, one tick of local time has passed. No change = no time. Time is not a background parameter; it is the accumulated state changes of the graph.

### D2: Causal Ordering

[A1, A2 → D2]

Children must evaluate before parents (a parent's result depends on its children's committed values). This imposes a partial order on evaluation — the causal structure of the graph.

### D3: Special Relativity (No Preferred Frame)

[A1, A2, D2 → D3]

Topological ordering has no preferred traversal order for causally independent nodes. Two observers on independent branches have no shared "now." No preferred frame arises because there is no ordering constraint between independent subgraphs.

### D4: Speed of Light (C = Leaf Commit Rate)

[A1, A2 → D4]

A leaf node has no children to recurse into. It commits at the maximum possible rate — one evaluation step. This rate is C. All non-leaf nodes are slower because they must wait for subgraph evaluation to complete.

### D5: Mass = Stable Topology

[A1, A2, A4 → D5]

A massive object is a region of the graph whose topology is stable — edges don't change, the same walk produces the same result every time. Mass is topological persistence.

### D6: Energy = Propagated Delta

[A1, A2, A5, D5 → D6]

When a stable topology is disrupted (edges rewired), the evaluation produces a different result. The difference (delta) propagates outward through the graph. That propagation is energy.

### D7: E = mc² (Bidirectional Walk)

[A2, D4, D5 → D7]

Recursive evaluation has two unavoidable phases: the call phase walks down from root to leaves (m hops at rate C), and the return phase walks back up from leaves to root (m hops at rate C). Total cost: m × C × C = mc². The c² factor is the two phases of recursion, not a magic constant.

### D8: Call Stack Depth

[A1, A2 → D8]

When the engine evaluates a deep subgraph, it builds a call stack — each parent waits for its children, which wait for their children, down to the leaves. The stack depth equals the subgraph depth. Deep subgraph = tall stack = everything nearby waits longer.

### D9: Gravity = Routing Pressure

[A1, A2, D8 → D9]

A deep call stack makes paths through that region expensive. The system routes around it — paths through mass cost more evaluation steps than paths around it. Everything follows the cheapest path. The cheapest path curves around mass. That curve is gravity.

### D10: Spacetime Curvature = Inverted Call Stack

[D8, D9 → D10]

Plot call stack depth across the graph: a pyramid, tallest where mass is. Invert it: deep wells where mass is, flat elsewhere. Drape a fabric over it: spacetime curvature. The call stack topology IS the curvature of spacetime.

### D11: Gravity Cannot Be Shielded

[A2, D8, D9 → D11]

Other forces transmit via signals through edges — block the edge, block the signal. Gravity is not a signal. It is the call stack depth of the evaluation itself. A shield shares the same stack as the thing it's shielding. There is no layer in the render that can reach into the engine and alter stack depth.

### D12: Equivalence Principle

[D8, D9 → D12]

Both gravity (deep subgraph nearby) and acceleration (additional evaluation work from motion) add depth to the local call stack. Same mechanism, same effect. Indistinguishable because they are the same thing.

### D13: Gravitational Time Dilation

[D1, D8 → D13]

Near mass, the call stack is deeper. Deeper stacks take longer to unwind. Commits are slower. Fewer state changes per unit of external comparison. Local clocks tick slower near mass.

### D14: Velocity Time Dilation

[A2, D1, D4 → D14]

Moving fast means position edges are being rewired, consuming evaluation steps. Fewer steps remain for internal state changes. At v = C, all evaluation steps go to motion — zero internal revisions, zero elapsed local time.

### D15: Arrow of Time

[A5, D1 → D15]

Each evaluation pass W(n) produces committed results that become the input for W(n+1). Walk 5 needs Walk 4's output. The dependency chain runs one direction. You cannot un-commit. The arrow of time is this dependency ordering.

### D16: Superposition = Pending Evaluation

[A3 → D16]

A node with no strict consumer (nothing demanding its result) remains unevaluated. Its edges to possible states are all pending — not committed to any one outcome. This is superposition: multiple possible states, nothing yet committed.

### D17: Collapse = Consumer Demands Result

[A2, A3, D16 → D17]

When a strict consumer (detector, screen, other massive object) demands a node's result, the pending evaluation resolves. One path commits. The others are discarded. This is wavefunction collapse.

### D18: Decoherence

[A3, D16, D17 → D18]

Large objects consist of ~10²⁶ atoms, each a strict consumer demanding definite inputs from its neighbors. No pending evaluations survive in a warm, dense environment. Superposition is destroyed by the density of consumers.

### D19: Double-Slit Interference

[A3, D16, D17 → D19]

No consumer at the slits → both paths pending. The engine evaluates all pending paths without committing. Pending paths overlap at the detection screen — constructive interference where they align, destructive where they cancel. The screen's atoms force commitment: one dot. Over many particles, the interference pattern fills in.

### D20: Quantum Eraser

[A2, A3, D16, D17 → D20]

The eraser sits upstream in the dependency chain. When the screen demands the particle's position, the demand cascades backward through the dependency graph. The cascade reads the eraser's state at the moment the pull arrives. Eraser OFF (which-path erased): both paths still pending, interference emerges. Eraser ON (which-path recorded): one path committed, interference destroyed. No retrocausality — the evaluation was in flight through the dependency chain; the eraser's state at cascade-time determines the outcome.

### D21: Entanglement = Shared Subgraph Node

[A1, A2, A4 → D21]

When two particles interact, their value subgraphs merge — they share a node. Position can change (they can separate spatially), but the shared node doesn't depend on position. When either particle's evaluation demands the shared node's result, it commits. Both particles read the same committed value. Correlation from topology, not signaling.

### D22: No FTL Communication via Entanglement

[D4, D21 → D22]

Entangled results are correlated but individually random. Neither observer's local measurement outcome carries information about the other's choice. Useful correlation only emerges when results are compared, which requires classical communication at rate ≤ C.

### D23: Antimatter = Mirror Graph

[A1, A4, D5, D6 → D23]

Antimatter is a graph whose topology is the mirror (conjugate) of its corresponding matter topology. When matter and antimatter subgraphs meet, their topologies cancel completely — every edge finds its inverse. The full evaluation energy propagates outward.

### D24: Space = Graph Shape, Planck Length = 1 Hop

[A1 → D24]

Space is the large-scale connectivity pattern of the graph. Distance is hop count — the minimum number of edges between two nodes. The minimum distance is one hop = one node = Planck length.

### D25: Expansion = Self-Growing Graph

[A2, A5 → D25]

Some evaluations produce new nodes and edges. More graph → more evaluations → more new nodes. Growth proportional to current size = accelerating expansion. No external "dark energy" required — the graph computes itself into existence.

### D26: Black Hole = Non-Terminating Evaluation

[A2, D8 → D26]

A subgraph so deep that evaluation never completes. The call stack builds without unwinding. Unlike GR's singularity prediction (infinite density), the subgraph is finite and the stack is finite — the computation simply never finishes. Stack exhaustion, not mathematical breakdown.

### D27: Complex Amplitudes from Cycles (Exploratory)

[A1, A2 → D27]

When the graph contains cycles (a node that depends on itself), topological ordering breaks. Self-consistency forces the value to equal the result of its own operation applied to itself. For multiplicative operations, the solutions are roots of unity — complex numbers. Complex amplitudes emerge from cyclic graph topology, not as a bolted-on rule.

### D28: Born Rule — P = |α|² (Exploratory)

[D7, D27 → D28]

The bidirectional walk (call phase down, return phase up) means the final result involves amplitude α times its conjugate α*: α × α* = |α|². Multiple paths to the same node accumulate complex amplitudes — some reinforce (constructive interference), some cancel (destructive interference). The squared modulus gives the probability. **Status: exploratory, not a derivation from first principles.**

---

### Extended Derived Mechanics (D29–D44)

These are additional mechanics needed to address the full test suite in `tests.md`. Many are qualitative mappings or open derivations.

### D29: Inverse Square Law Scaling

[A1, D9 → D29]

In a graph embedded in 3D-like connectivity, the number of nodes at distance r (hop count) from a source scales as ~r². Routing pressure (gravity) from a point source dilutes over this surface area, producing 1/r² falloff. **Status: requires proof that graph connectivity produces 3D surface-area scaling.**

### D30: Geodesic Motion

[D9, D10 → D30]

Free-falling objects follow the cheapest evaluation path through the routing table. In curved regions (near mass), cheapest paths curve. These are geodesics — the straightest possible paths through the graph's routing topology.

### D31: Gravitational Lensing

[D9, D10, D30 → D31]

Light (leaf-node evaluation chains) follows cheapest paths. Near mass, cheapest paths bend. Light bends around massive objects. The bending angle depends on stack depth profile.

### D32: Gravitational Redshift

[D1, D13 → D32]

A signal (evaluation chain) climbing out of a deep-stack region loses evaluation steps to the stack gradient. Fewer steps available = lower frequency. Light climbing out of a gravitational well redshifts.

### D33: Gravitational Waves

[A5, D9, D10 → D33]

When a massive topology changes rapidly (binary merger), the routing table updates propagate outward through the graph as ripples — changes in the cheapest-path structure radiating from the source. These are gravitational waves.

### D34: Frame Dragging

[A2, D9 → D34]

A rotating massive subgraph drags its local routing table around with it. Nearby evaluation paths are biased in the rotation direction. **Status: qualitative mapping.**

### D35: Inertia (F = ma)

[D5, D8 → D35]

A stable topology (mass) resists changes to its evaluation path. Rewiring edges (changing velocity) requires evaluation work proportional to the topology's size. Larger stable topology = more work to change = more inertia.

### D36: Conservation of Energy

[A2, A5 → D36]

The evaluation function preserves information — every input produces an output, every committed value feeds the next pass. Total evaluation work is conserved across passes. No evaluation steps are created or destroyed, only transformed between regions.

### D37: Entropy Increase (Second Law)

[A2, A5, D2 → D37]

The graph evolves via committed results feeding forward. Each pass increases the number of committed states and constraints. The number of ways to arrange uncommitted subgraph topologies consistent with all committed constraints increases monotonically. This is entropy increase.

### D38: Lorentz Transformation

[D3, D4, D14 → D38]

The mathematical relationship between observations in different traversal orderings. Motion consumes evaluation steps, producing time dilation (D14). The metric structure of the graph's routing table under changes of traversal order produces Lorentz-like transformation. **Status: qualitative — exact Lorentz factor derivation not yet accomplished.**

### D39: Length Contraction

[D14, D38 → D39]

In a frame moving at velocity v, the evaluation steps consumed by motion compress the spatial extent of a moving subgraph along the direction of motion. A consequence of the same evaluation-step budget that produces time dilation.

### D40: Relativistic Momentum

[D5, D14, D35, D38 → D40]

As velocity approaches C, nearly all evaluation steps go to motion. Changing velocity further requires disproportionately more evaluation work. Momentum diverges as v → C because the evaluation budget is finite.

### D41: Hubble Expansion Rate

[D25 → D41]

The rate of graph self-growth determines the expansion rate. Growth proportional to current graph size gives v = H₀d (Hubble's law), where H₀ relates to the growth rate per evaluation pass. **Status: qualitative — exact Hubble constant not derived.**

### D42: CMB as Early-Graph Thermal Signature

[A5, D25 → D42]

The early graph was small and densely connected — every node was a consumer of every nearby node, forcing rapid commitment. The thermal signature of this dense early state is the CMB. Tiny variations in initial graph topology produce the observed anisotropies. **Status: qualitative mapping.**

### D43: Particle Spectrum Constraints

[A1, D5, D27 → D43]

Stable topological configurations of the graph (matter) come in discrete types determined by which subgraph patterns are self-consistent under recursive evaluation with cycles. Each stable pattern corresponds to a particle type. **Status: the specific spectrum (electron mass, quark charges, three generations) is NOT derived. This is an open problem (see O3).**

### D44: Vacuum Fluctuations

[A3, A5 → D44]

Even with no explicit consumer, the self-feeding recursion (A5) provides a background evaluation pressure. Nodes briefly enter and exit pending states. These transient pending-committed cycles are vacuum fluctuations — virtual particle-antiparticle pairs that appear and annihilate.

---

## Open Problems

### O1: Einstein Field Equations

Cannot derive Gμν + Λgμν = 8πG/c⁴ Tμν from graph axioms. The qualitative match between call stack topology and spacetime curvature is strong, but without the exact equations, the framework remains a compelling analogy rather than a formal theory. **Closing this gap would be the single highest-impact advance.**

### O2: Confluence

Cannot formally prove the computation is confluent — that committed results are independent of traversal order. If different evaluation orderings produce different committed states, the framework predicts Lorentz symmetry violations that are not observed (tested to 10⁻²¹ precision).

### O3: Particle Spectrum

Cannot explain why specific particles exist with specific masses and charges. "Particles are stable topologies" is a category, not a derivation. Why an electron has mass 0.511 MeV, why there are three generations, why quarks come in six flavors — all unexplained.

### O4: Born Rule Derivation

Cannot derive P = |α|² from first principles. The exploratory argument (D27, D28) shows that cycles in graphs naturally produce complex amplitudes and squared-modulus structure, but this is not a rigorous derivation.

### O5: Hierarchy Problem

Gravity is ~10³⁶ times weaker than electromagnetism. The framework offers no explanation for why routing pressure (gravity) from stack depth would be so many orders of magnitude weaker than signal-based forces through edges.

### O6: Unique Experimental Predictions

The framework makes one testable prediction that differs from standard GR: **no singularity** at the center of black holes (D26). The prediction is stack exhaustion (finite depth, non-terminating computation) rather than infinite density. If quantum gravity observations become possible, this could be tested. Beyond this, the framework currently makes no unique quantitative predictions that distinguish it from existing physics.

---

## Cross-Reference: Axioms → Tests

| Axiom | Primary Test Cases Addressed |
|-------|------------------------------|
| A1 | All (graph structure is foundational) |
| A2 | QM-1 through QM-16, GR-1 through GR-15, SR-1 through SR-9 |
| A3 | QM-1, QM-2, QM-3, QM-7, QM-8, QM-9, QM-16 |
| A4 | PP-1, PP-4, INF-3, INF-4 |
| A5 | TH-1, TH-2, COS-1, COS-2, COS-5 |

## Cross-Reference: Derived Mechanics → Tests

| Mechanic | Test Cases |
|----------|------------|
| D1 | SR-1, SR-2, GR-2, INF-2 |
| D2 | SR-5, GR-11 |
| D3 | SR-5, SR-6 |
| D4 | SR-3, SR-4 |
| D5 | PP-1, PP-2, SR-7 |
| D6 | SR-7, PP-3 |
| D7 | SR-7 |
| D8 | GR-1, GR-2, GR-4 |
| D9 | GR-1, GR-3, GR-9 |
| D10 | GR-3, GR-4, GR-11 |
| D11 | GR-9 |
| D12 | GR-10 |
| D13 | GR-2, GR-12, GR-15 |
| D14 | SR-1, SR-2, SR-4 |
| D15 | TH-1 |
| D16 | QM-1, QM-9 |
| D17 | QM-2, QM-8, QM-16 |
| D18 | QM-8 |
| D19 | QM-1 |
| D20 | QM-3 |
| D21 | QM-4, QM-5, QM-7 |
| D22 | QM-6 |
| D23 | PP-3 |
| D24 | INF-1 |
| D25 | COS-2, COS-4b, COS-5 |
| D26 | GR-5 |
| D27 | QM-10, QM-11 |
| D28 | QM-10 |
| D29 | GR-1 |
| D30 | GR-11 |
| D31 | GR-3 |
| D32 | GR-12 |
| D33 | GR-7 |
| D34 | GR-8 |
| D35 | INF-3, INF-4 |
| D36 | TH-2 |
| D37 | TH-1 |
| D38 | SR-6, SR-8 |
| D39 | SR-8 |
| D40 | SR-9 |
| D41 | COS-2 |
| D42 | COS-3 |
| D43 | PP-4, PP-5, PP-12 |
| D44 | PP-10 |
