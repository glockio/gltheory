# GL Theory — Formal Specification

**Version 2.0 | March 2026**

---

## Axioms

### A1: Causal Graph

Reality is a directed acyclic graph (DAG) G = (N, E) where N is a set of spacetime events (nodes) and E is a set of causal relations (directed edges). Each edge e ∈ E carries an operation op(e) that transforms the value passing through it. The graph has no cycles — no event can be among its own causal ancestors.

### A2: Local Propagation

Changes propagate along causal edges at a maximum rate C. There is no global function, no central evaluator, no preferred root. Each event's committed state depends only on the committed states of its causal ancestors. Propagation is strictly local — an event can only influence its immediate causal neighbors, and influence ripples outward hop by hop.

### A3: Demand-Driven Commitment

Events remain in an uncommitted (in-flight) state until forced to commit. Commitment is forced when an event sits in a causally dense region — a region where many causal paths converge and demand resolution. An event with no causal pressure to resolve remains in-flight indefinitely, carrying multiple possible outcomes.

### A4: No Stored Values

Nodes store no intrinsic values. All values are derived from graph topology — the pattern of connections and the operations on edges. The structure IS the value.

### A5: Graph Growth

The graph grows: committed events spawn new causal edges and new events. Growth IS time — each new layer of committed events constitutes one tick of local time. The graph cannot shrink. Events, once committed, are permanent.

---

## Derived Mechanics

Each derived mechanic follows logically from the axioms. The citation format is [Axiom(s) → Mechanic].

### D1: Time = Graph Growth

[A5 → D1]

Time is graph growth. Each layer of newly committed events is one tick of local time. No growth = no time. Time is not a background parameter; it is the accumulated committed structure of the graph.

### D2: Causal Ordering

[A1, A2 → D2]

An event's state depends on its causal ancestors. This imposes a partial order on commitment — the causal structure of the graph. Effects cannot precede their causes.

### D3: Special Relativity (No Preferred Frame)

[A1, A2, D2 → D3]

The causal partial order has no preferred traversal order for causally independent events. Two observers on independent branches have no shared "now." No preferred frame arises because there is no ordering constraint between causally disconnected regions.

### D4: Speed of Light (C = Maximum Propagation Rate)

[A1, A2 → D4]

C is the maximum rate at which changes propagate along causal edges. An event with no causal ancestors to wait for commits at rate C — one hop per tick. All events with causal ancestry are slower because they must wait for upstream commitments to arrive. C is the speed limit because it is the propagation rate of the graph itself.

### D5: Mass = Stable Topology

[A1, A4 → D5]

A massive object is a region of the graph whose topology is stable — the same pattern of causal connections persists across growth cycles, producing the same committed values. Mass is topological persistence.

### D6: Energy = Propagated Delta

[A1, A2, A5, D5 → D6]

When a stable topology is disrupted (edges rewired), commitment produces a different result. The difference (delta) propagates outward along causal edges. That propagation is energy.

### D7: E = mc² (Speculative)

[D4, D5 → D7]

**Status: downgraded to speculative.** The original derivation depended on a bidirectional recursive walk (call phase down, return phase up) that no longer exists in the causal graph model. The causal graph has local propagation, not global recursion. A new derivation of the c² factor from local propagation mechanics is an open problem (see O9). The structural observation remains: disrupting a stable topology of depth m releases energy proportional to m × C², but the mechanism producing the squared factor needs rederivation.

### D8: Causal Density

[A1, A2 → D8]

When many causal paths converge on a region, that region has high causal density — many events are causally entangled, many edges intersect, commitment of any one event constrains many others. Dense regions process more causal information per unit of graph growth.

### D9: Gravity = Causal Density Curving Paths

[A1, A2, D8 → D9]

A region of high causal density creates more causal constraints per hop. Propagation through a dense region requires more commitment steps than propagation through a sparse region. The cheapest causal path (fewest hops, fastest propagation) curves around dense regions. That curve is gravity.

### D10: Spacetime Curvature = Causal Density Profile

[D8, D9 → D10]

Plot causal density across the graph: dense where mass is, sparse elsewhere. The profile of causal density IS the curvature of spacetime. Dense wells where mass is, flat elsewhere.

### D11: Gravity Cannot Be Shielded

[A2, D8, D9 → D11]

Other forces transmit via signals along specific causal edges — block the edge, block the signal. Gravity is not a signal. It is the causal density of the region itself. A shield placed near mass adds its own causal structure to the region, increasing density rather than decreasing it. You cannot reduce causal density by adding more stuff.

### D12: Equivalence Principle

[D8, D9 → D12]

Both gravity (dense causal region nearby) and acceleration (rapid creation of new causal connections from motion) increase the local causal density. Same mechanism, same effect. Indistinguishable because they are the same thing.

### D13: Gravitational Time Dilation

[D1, D8 → D13]

In a causally dense region, each growth cycle must process more causal constraints before commitment. More processing per tick = slower commitment rate relative to sparse regions. Local clocks tick slower where causal density is high.

### D14: Velocity Time Dilation

[A2, D1, D4 → D14]

Moving fast means new causal edges are being created for position changes, consuming propagation budget. Fewer propagation steps remain for internal state changes. At v = C, all propagation goes to position change — zero internal commitment, zero elapsed local time.

### D15: Arrow of Time

[A5, D1 → D15]

The graph grows. New events are born from committed ancestors. A committed event cannot be uncommitted. A born node cannot be unborn. The arrow of time is the irreversibility of graph growth.

### D16: Superposition = In-Flight Event

[A3 → D16]

An event with no causal pressure to resolve (no dense region demanding its commitment) remains in-flight. Its causal edges to possible outcomes are all live — not committed to any single outcome. This is superposition: multiple possible states, nothing yet committed.

### D17: Collapse = Dense Region Forces Commitment

[A2, A3, D8, D16 → D17]

When a dense causal region (detector, screen, massive object) creates causal paths converging on an in-flight event, the event must commit. One outcome is selected. The others are discarded. This is wavefunction collapse.

### D18: Decoherence

[A3, D16, D17 → D18]

Large objects consist of ~10²⁶ atoms, each creating dense causal connections demanding definite inputs from neighbors. No in-flight events survive in a warm, dense environment. Superposition is destroyed by causal density.

### D19: Double-Slit Interference

[A3, D16, D17 → D19]

No dense region at the slits → both causal paths remain in-flight. The in-flight paths carry uncommitted possibilities through both slits. At the detection screen — a causally dense region — the paths must commit. Where in-flight paths overlap: constructive interference where they align, destructive where they cancel. The screen forces commitment: one dot. Over many particles, the interference pattern fills in.

### D20: Quantum Eraser

[A1, A2, A3, D16, D17, D21 → D20]

Entangled twins (signal + idler) inherit correlated causal structure from their shared ancestor event via forward propagation (A2). The signal photon commits at the screen — one dot, immutable (A5). The idler commits later at one of several possible detectors. When the idler's detector erases which-path information (both paths made indistinguishable by a beam splitter), the signal–idler pairs correlated with that outcome form a subset that exhibits interference. When the idler's detector preserves which-path information, the correlated subset shows no interference. The total set of signal dots (all subsets combined) never shows interference — consistent with no-signaling. No retrocausality — correlations propagate forward from the shared ancestor. The idler measurement is a post-selection key that determines which pre-existing correlations are revealed.

### D21: Entanglement = Shared Causal Ancestor

[A1, A2, A4 → D21]

When two particles interact, their causal histories merge — they share a common causal ancestor event. Position can change (they can separate spatially), but the shared ancestor doesn't depend on position. When either particle's commitment demands the shared ancestor's result, it commits. Both particles read the same committed value. Correlation from shared causal topology, not signaling.

### D22: No FTL Communication via Entanglement

[D4, D21 → D22]

Entangled results are correlated but individually random. Neither observer's local commitment outcome carries information about the other's choice. Useful correlation only emerges when results are compared, which requires classical communication at rate ≤ C.

### D23: Antimatter = Mirror Graph

[A1, A4, D5, D6 → D23]

Antimatter is a graph whose topology is the mirror (conjugate) of its corresponding matter topology. When matter and antimatter subgraphs meet, their topologies cancel completely — every edge finds its inverse. The full energy propagates outward.

### D24: Space = Graph Shape, Planck Length = 1 Hop

[A1 → D24]

Space is the large-scale connectivity pattern of the graph. Distance is hop count — the minimum number of causal edges between two events. The minimum distance is one hop = one edge = Planck length.

### D25: Expansion = Graph Growth

[A2, A5 → D25]

Committed events spawn new events and edges. More graph → more commitments → more new events. Growth proportional to current size = accelerating expansion. No external "dark energy" required — the graph grows itself into existence.

### D26: Black Hole = Extreme Causal Density

[A2, D8 → D26]

A region of such extreme causal density that no causal path leads outward — every neighboring event is causally downstream of the dense core. Unlike GR's singularity prediction (infinite density), the graph is finite and the density is finite — propagation simply cannot escape. Causal trapping, not mathematical breakdown.

### D27: Complex Amplitudes (Open Problem)

[A1 → D27]

**Status: downgraded to open problem.** The original derivation relied on cycles in the graph to produce roots of unity. But A1 now requires a DAG — no cycles allowed. The mechanism by which complex-valued amplitudes emerge from an acyclic causal graph is unknown. This is a significant gap. See O4.

### D28: Born Rule — P = |α|² (Open Problem)

[D27 → D28]

**Status: downgraded to open problem.** The Born rule derivation was downstream of D27 (complex amplitudes from cycles). With the cycle mechanism lost, the Born rule has no derivation in this framework. See O4.

---

### Extended Derived Mechanics (D29–D44)

These are additional mechanics needed to address the full test suite in `tests.md`. Many are qualitative mappings or open derivations.

### D29: Inverse Square Law Scaling

[A1, D9 → D29]

In a graph embedded in 3D-like connectivity, the number of events at distance r (hop count) from a source scales as ~r². Causal density from a point source dilutes over this surface area, producing 1/r² falloff. **Status: requires proof that graph connectivity produces 3D surface-area scaling.**

### D30: Geodesic Motion

[D9, D10 → D30]

Free-falling objects follow the cheapest causal path through the graph. In dense regions (near mass), cheapest paths curve. These are geodesics — the straightest possible paths through the graph's causal topology.

### D31: Gravitational Lensing

[D9, D10, D30 → D31]

Light (maximum-rate propagation along causal edges) follows cheapest paths. Near mass, cheapest paths bend. Light bends around massive objects. The bending angle depends on the causal density profile.

### D32: Gravitational Redshift

[D1, D13 → D32]

A signal (propagation chain) climbing out of a causally dense region loses propagation steps to the density gradient. Fewer steps available = lower frequency. Light climbing out of a gravitational well redshifts.

### D33: Gravitational Waves

[A5, D9, D10 → D33]

When a massive topology changes rapidly (binary merger), the causal density profile updates propagate outward through the graph as ripples — changes in the cheapest-path structure radiating from the source. These are gravitational waves.

### D34: Frame Dragging

[A2, D9 → D34]

A rotating massive region drags its local causal structure around with it. Nearby propagation paths are biased in the rotation direction. **Status: qualitative mapping.**

### D35: Inertia (F = ma)

[D5, D8 → D35]

A stable topology (mass) resists changes to its propagation path. Rewiring causal edges (changing velocity) requires propagation work proportional to the topology's size. Larger stable topology = more work to change = more inertia.

### D36: Conservation of Energy

[A2, A5 → D36]

Local propagation preserves information — every input produces an output, every committed value feeds the next growth cycle. Total propagation work is conserved across cycles. No propagation steps are created or destroyed, only transformed between regions.

### D37: Entropy Increase (Second Law)

[A2, A5, D2 → D37]

The graph evolves via committed results feeding forward into new growth. Each cycle increases the number of committed events and constraints. The number of ways to arrange uncommitted events consistent with all committed constraints increases monotonically. This is entropy increase.

### D38: Lorentz Transformation

[D3, D4, D14 → D38]

The mathematical relationship between observations in different traversal orderings. Motion consumes propagation steps, producing time dilation (D14). The metric structure of the graph's causal topology under changes of traversal order produces Lorentz-like transformation. **Status: qualitative — exact Lorentz factor derivation not yet accomplished.**

### D39: Length Contraction

[D14, D38 → D39]

In a frame moving at velocity v, the propagation steps consumed by motion compress the spatial extent of a moving region along the direction of motion. A consequence of the same propagation budget that produces time dilation.

### D40: Relativistic Momentum

[D5, D14, D35, D38 → D40]

As velocity approaches C, nearly all propagation steps go to motion. Changing velocity further requires disproportionately more propagation work. Momentum diverges as v → C because the propagation budget is finite.

### D41: Hubble Expansion Rate

[D25 → D41]

The rate of graph growth determines the expansion rate. Growth proportional to current graph size gives v = H₀d (Hubble's law), where H₀ relates to the growth rate per cycle. **Status: qualitative — exact Hubble constant not derived.**

### D42: CMB as Early-Graph Thermal Signature

[A5, D25 → D42]

The early graph was small and extremely causally dense — every event was causally connected to every nearby event, forcing rapid commitment. The thermal signature of this dense early state is the CMB. Tiny variations in initial graph topology produce the observed anisotropies. **Status: qualitative mapping.**

### D43: Particle Spectrum Constraints

[A1, D5 → D43]

Stable topological configurations of the graph (matter) come in discrete types determined by which patterns are self-consistent under local propagation. Each stable pattern corresponds to a particle type. **Status: the specific spectrum (electron mass, quark charges, three generations) is NOT derived. This is an open problem (see O3). The mechanism for stable patterns in a DAG (without cycles) needs development.**

### D44: Vacuum Fluctuations

[A3, A5 → D44]

Even with no explicit dense region demanding commitment, graph growth (A5) provides a background pressure. Events briefly enter and exit in-flight states. These transient in-flight/committed cycles are vacuum fluctuations — virtual particle-antiparticle pairs that appear and annihilate.

---

## Open Problems

### O1: Einstein Field Equations

Cannot derive Gμν + Λgμν = 8πG/c⁴ Tμν from graph axioms. The qualitative match between causal density profiles and spacetime curvature is strong, but without the exact equations, the framework remains a compelling analogy rather than a formal theory. **Closing this gap would be the single highest-impact advance.**

### O2: Confluence

Cannot formally prove the computation is confluent — that committed results are independent of the order in which causally independent events commit. If different commitment orderings produce different states, the framework predicts Lorentz symmetry violations that are not observed (tested to 10⁻²¹ precision).

### O3: Particle Spectrum

Cannot explain why specific particles exist with specific masses and charges. "Particles are stable topologies" is a category, not a derivation. Why an electron has mass 0.511 MeV, why there are three generations, why quarks come in six flavors — all unexplained. The removal of cycles (A1 now requires a DAG) further constrains possible mechanisms.

### O4: Complex Amplitudes and Born Rule

Cannot derive complex-valued amplitudes or P = |α|² from first principles. The previous mechanism (graph cycles producing roots of unity) is incompatible with the DAG requirement of A1. A new mechanism for complex amplitudes in an acyclic causal graph is needed. This is arguably the single biggest theoretical gap — quantum mechanics runs on complex numbers, and we have no mechanism to produce them.

### O5: Interference Aggregation Function

The double-slit experiment requires in-flight paths to interfere — constructively and destructively. The framework says in-flight paths "overlap" but does not specify the mathematical function that governs how they combine. What rule determines constructive vs. destructive interference? Without this, the framework describes interference verbally but cannot predict fringe spacing or visibility.

### O6: Unique Experimental Predictions

The framework makes one testable prediction that differs from standard GR: **no singularity** at the center of black holes (D26). The prediction is causal trapping (finite density, no escape path) rather than infinite density. If quantum gravity observations become possible, this could be tested. Beyond this, the framework currently makes no unique quantitative predictions that distinguish it from existing physics.

### O7: Lorentz Invariance on Discrete Structure

Any discrete spacetime must explain why Lorentz symmetry holds to the precision measured experimentally — roughly 10⁻²⁰ times tighter than a naive lattice or graph discretization would produce. Continuous Lorentz symmetry is a property of smooth manifolds; a discrete graph should break this symmetry at scales near the discretization length. The framework has no mechanism for recovering exact Lorentz invariance from discrete graph structure. This is arguably the single biggest existential threat to any discrete spacetime theory, including this one. Related to O2 (confluence), but a distinct problem: even if commitment is confluent, the discrete structure itself may violate continuous symmetry.

### O8: Analogy vs. Derivation

The framework reasons primarily by structural analogy rather than mathematical derivation. The mappings between graph mechanics and physics exist on a spectrum: some are exact (topological ordering = causal structure), some are plausible but unproven (causal density ≈ gravitational potential), and some are speculative (stable topology = particle). Until the structural matches produce quantitative predictions — specific numbers that can be compared to experiment — the framework remains a conceptual model, not a physical theory. This is a meta-problem that applies to every claim in the framework.

### O9: E=mc² Derivation

The previous derivation of the c² factor relied on bidirectional recursive evaluation (call phase down, return phase up). The causal graph model has local propagation, not global recursion. A new derivation explaining why disrupting a stable topology of depth m releases energy proportional to m × C² from purely local propagation mechanics is needed.

### O10: Bell's Theorem and Topological Correlations

Entanglement correlations (D21) are explained via shared causal ancestry. Bell's theorem proves that no local hidden variable theory can reproduce quantum correlations. The shared causal ancestor is NOT a local hidden variable — it is a topological feature. But a rigorous proof that topological correlations in a DAG can violate Bell inequalities without violating locality constraints has not been provided. This needs formal development.

### O11: Growth Dynamics

What determines WHERE new events are born in the graph? Graph growth (A5) says the graph grows, but does not specify the rule governing which committed events spawn new edges and where new events appear. Without a growth rule, the framework cannot predict large-scale structure formation, galaxy distribution, or the specific geometry of spacetime.

---

## Cross-Reference: Axioms → Tests

| Axiom | Primary Test Cases Addressed |
|-------|------------------------------|
| A1 | All (causal graph structure is foundational) |
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
