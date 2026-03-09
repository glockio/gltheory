# GL Theory — Theorem

**Version 20.0 | Core Axioms & Derived Mechanics**

This is the single source of truth for the theory. Every claim is tagged:

- **[DERIVED]** — follows from axioms with no unstated assumptions
- **[QUALITATIVE]** — right direction, quantitative form not proven
- **[IDENTIFICATION]** — a mapping claim, not a logical derivation
- **[OPEN]** — compatible with axioms but not determined by them

---

## DEFINITIONS

**Graph:** A set of nodes connected by weighted directed edges. Described by its adjacency matrix.

**DAG:** Directed acyclic graph. No cycles. Resolvable by topological sort in finite steps.

**Cyclic graph:** Contains at least one cycle (path from a node back to itself). Cannot be resolved by topological sort.

**Committed edge:** An edge resolved to a definite weight and written into the current frame. Committed edges form the neighborhood structure — this IS space.

**Uncommitted edge (potential edge):** An edge pattern the engine is computing but hasn't committed. The set of uncommitted edges for a subgraph IS that subgraph's wave function.

**Neighborhood topology:** The large-scale pattern of committed edges. Distance = shortest committed-path length. Dimension = growth rate of reachable nodes with hop count (~r² growth = 3D).

**Local topology:** A node and its immediate connections. Determines what something IS — mass (cyclic), energy (propagating return value), quantum state (uncommitted edges).

**Spectral radius:** Largest eigenvalue of a subgraph's adjacency matrix. Determines overflow rate per tick.

**Strict consumer:** A node whose next-state computation requires a definite value from another node. The dependency is mandatory — the consuming node cannot compute without it.

**Lazy evaluation:** Values are not resolved until a strict consumer demands the result. The computation is tracked (potential edges maintained) but no definite answer is produced until demanded.

**Return value:** Output of completed graph resolution. Three destinations: (a) propagate outward through existing edges — **energy**, (b) feed back into the same cycle — **mass**, (c) create new edges in the graph — **structure/expansion**.

---

## AXIOMS

### A1 — One Graph

Reality is a single graph. Nodes connected by weighted directed edges.

**Local topology** (a node and its immediate connections) determines what something IS:

- **Mass:** Cyclic subgraph whose walk never terminates. Return values recycle internally.
- **Energy:** Return value propagating outward through committed edges.
- **Quantum state:** Uncommitted edge pattern — no strict consumer has demanded resolution.

**Neighborhood topology** (the large-scale pattern of committed edges) IS space:

- **Distance** = shortest committed-path length between nodes.
- **Dimension** = growth rate of reachable nodes with distance. If reachable nodes at distance r grows as ~r³ (volume), the graph is 3-dimensional.
- **Curvature** = non-uniform edge-weight distribution, caused by budget drain from mass.

**Position** = having committed edges to specific neighbors. "Being at location X" means having committed connections to the nodes in cluster X. "Being in superposition" means those edges haven't been committed — the engine is walking potential edge patterns.

**Entanglement** = a direct edge between nodes that are distant in the neighborhood topology. Particles that interact form direct edges. Subsequent interactions with other nodes build long neighborhood paths between them, but the direct entanglement edge remains — one hop. Resolution propagates through the direct edge, bypassing neighborhood distance.

**[IDENTIFICATION] The metric tensor** = the pattern of committed edge weights across the graph. Flat spacetime = uniform weights. Curved spacetime = weights distorted by mass's budget drain.

**Space emerges from computation.** Propagating return values create new edges and nodes as they interact. The graph grows through its own computation. More computation → more structure → more computation. This is cosmic expansion. It is self-reinforcing.

### A2 — One Rule

Each tick, the engine computes the next state from the current state:

**S(Ω+1) = F(S(Ω))**

- S = the complete graph state (all nodes, all edges, committed and uncommitted)
- Ω = the tick counter (engine time)
- F = the Rule. Deterministic, total (one input always produces exactly one output), not guaranteed invertible.

**F is the engine we are running on.** We can characterize its properties from inside — deterministic, total, non-invertible — the same way a program can characterize its CPU (clock speed, deterministic instruction execution) without accessing the silicon. F is not an open problem. It is the substrate. We observe its outputs. We cannot access its implementation because we are computed by it.

**Three levels of time:**

| Level                | What it is                                                                                                                                    | Dilates?                                                                          |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| **Engine time (Ω)**  | Global tick counter. F executes once per tick across the entire graph.                                                                        | Never. Universal.                                                                 |
| **Experienced time** | State transitions computed on your subgraph per tick. Determined by how much budget was available after mass and motion consumed their share. | Yes. Actual, not perceived. Fewer transitions genuinely occurred.                 |
| **Rendered time**    | The committed frame — the pattern of committed edges. A static snapshot with no inherent time direction.                                      | N/A. Physics equations describe this level, which is why they are time-symmetric. |

The arrow of time is the evaluation direction of F. Committed frames are immutable. F is not invertible: from an output you cannot uniquely determine which input produced it.

### A3 — Graph Operations

All interactions are graph operations on the single graph:

- **Interaction** = subgraph merge. Two subgraphs form edges between them. Their adjacency matrices combine.
- **Annihilation** = inverse subgraphs meeting. Matrices cancel. Zero structure. All locked return values escape as energy.
- **Topology determines behavior.** Cycles, spectral radius, connectivity pattern — these determine mass, stability, interaction properties, and dimensionality.
- **Computation creates structure.** Propagating return values create new edges as they traverse and interact. The graph grows through its own activity. This is not imposed from outside — it is the graph computing itself into existence.

### A4 — Fixed Budget (C)

The engine has a fixed total budget of work per tick: **C.** Universal. Constant. The clock speed of reality.

Each tick, the engine allocates C across all walks in all regions of the graph. Every subgraph gets walked. The walks compete for shared budget.

**Return values have three destinations:**

| Destination                              | What happens                                                                                              | Physics name              |
| ---------------------------------------- | --------------------------------------------------------------------------------------------------------- | ------------------------- |
| **Propagate OUT** through existing edges | Completed work exits the subgraph. Available as input to other subgraphs and the next tick.               | **Energy**                |
| **Feed BACK IN** to the same cycle       | Completed work re-enters as input to the next iteration. Trapped in the loop. Consumes budget every tick. | **Mass**                  |
| **Create NEW edges** in the graph        | Completed work produces new connections. Extends the graph.                                               | **Expansion / structure** |

**Conservation of energy:** Return values from tick Ω become inputs to tick Ω+1. Total ≤ C. Energy (propagating) + mass (locked) + new structure (invested) = conserved. Nothing created or destroyed — return values change form and destination.

**E = mc² [QUALITATIVE]:** Mass = stack of overflow frames from cyclic walk. Each frame stores one C of recycled return values. Stack depth = m. When cycle breaks: stored values (m × C) propagate at maximum rate (C). Total: m × C × C = mC². The dual-role pattern — C governs both storage and propagation. Structural argument sound; formal proof pending.

### A5 — Lazy Evaluation & Double-Buffered Rendering

You see frame Ω while the engine computes frame Ω+1. **You are always off by one.** You never see computation in progress. Only committed edges.

The engine walks ALL subgraphs every tick. Nothing is skipped. But the engine only commits specific edges when a **strict consumer** demands a definite value.

| Condition                   | What happens                                                                                   | Result             |
| --------------------------- | ---------------------------------------------------------------------------------------------- | ------------------ |
| **Strict consumer present** | Engine commits specific edges. Definite position (connected to specific neighbors).            | Classical behavior |
| **No strict consumer**      | Engine walks potential edge patterns without committing. The uncommitted pattern IS the state. | Quantum behavior   |

**Position and wave function are the same thing at different stages.** Uncommitted potential edges = wave function (many possible neighbor connections, none committed). Committed edges = definite position (connected to specific neighbors). "Collapse" is the transition: uncommitted → committed, triggered by a strict consumer demanding a value.

**Measurement = cache bust.** A committed subgraph (detector, atom, any macroscopic object) whose next-tick computation requires a definite value from an uncommitted subgraph. The committed subgraph is a strict consumer. The engine commits the uncommitted subgraph's edges — one definite answer. Resolution cascades through all dependent subgraphs.

**Why a basketball is classical:** 10²⁶ atoms, each demanding definite values from neighbors to compute the next tick. Every atom is a strict consumer. The basketball resolves itself — its internal dependencies require committed edges at every node.

**Why a photon stays quantum:** No strict consumer demands its definite position. The engine walks potential edges, carries the pattern forward. Cheap per tick.

---

## DERIVED MECHANICS

### Gravity & Spacetime

| ID  | Mechanic                               | Statement                                                                                                                                                                                                                                                                                                                                                                                    | From      | Status                                                                                                                                            |
| --- | -------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| D1  | **Gravity**                            | Mass's cyclic walk consumes budget. Nodes close in the graph share more edges → drain is concentrated locally and tapers with distance. In a 3D graph (reachable nodes at distance r ~ r²), drain distributes over ~r² nodes at each distance → each receives drain/r² → **inverse square law.** Everything routes along cheapest path → paths curve toward mass → gravitational attraction. | A1, A4    | [DERIVED] — 1/r² follows from 3D dimensionality. WHY the graph is 3D is open.                                                                     |
| D2  | **Gravity + dilation = one mechanism** | Budget drain simultaneously warps committed edge weights (curvature) and starves neighbor nodes of compute cycles (dilation). One drain, two observable effects. Why the Schwarzschild metric covers both with one equation.                                                                                                                                                                 | D1, A2    | [DERIVED]                                                                                                                                         |
| D3  | **Gravity unshieldable**               | Budget drain propagates through committed edges. A shield is a subgraph made of committed edges. The shield's own edges ARE the medium of propagation. A fish can't block the current it swims in.                                                                                                                                                                                           | A1, D1    | [DERIVED] — cleaner than "wrong layer"                                                                                                            |
| D4  | **Gravitational waves**                | Changing mass → changing return values → propagate through committed edges at C → edge weights oscillate.                                                                                                                                                                                                                                                                                    | D1, A4    | [DERIVED] — existence + speed. Waveform requires field equations.                                                                                 |
| D5  | **Frame dragging**                     | Rotating mass: cyclic walk traverses neighborhood nodes in a specific directional order → asymmetric edge weights along rotation axis.                                                                                                                                                                                                                                                       | D1        | [QUALITATIVE] — rotation → cycle-direction mapping more natural in single graph but not formally proven.                                          |
| D6  | **Geodesics**                          | Minimum-cost routing through weighted graph. Standard graph algorithm.                                                                                                                                                                                                                                                                                                                       | A1, A4    | [DERIVED]                                                                                                                                         |
| D7  | **Gravitational lensing**              | Light follows cheapest path. Mass warps edge weights. Cheapest path curves.                                                                                                                                                                                                                                                                                                                  | D6, A1-ID | [DERIVED]                                                                                                                                         |
| D8  | **Black hole event horizon**           | Budget drain from concentrated mass reaches 100% at some radius. Zero budget remaining. Zero state changes. Time stops. Nothing propagates outward.                                                                                                                                                                                                                                          | D1, A4    | [QUALITATIVE] — existence follows. Specific radius requires drain profile from field equations.                                                   |
| D9  | **Black hole singularity**             | Unbounded cyclic stack in finite budget = stack overflow crash.                                                                                                                                                                                                                                                                                                                              | A4        | [DERIVED]                                                                                                                                         |
| D10 | **Black hole evaporation**             | Just outside horizon: small nonzero budget. Slow resolution of outermost stack edges → return values escape outward.                                                                                                                                                                                                                                                                         | D8, A4    | [QUALITATIVE] — mechanism differs from Hawking's (vacuum fluctuations). Whether it produces thermal spectrum with correct temperature is unknown. |
| D11 | **Gravitational redshift**             | Photon (propagating return value) traversing high-drain region: higher edge costs → more energy expended on traversal → arrives with less energy → lower frequency.                                                                                                                                                                                                                          | A1-ID, A4 | [QUALITATIVE] — direction correct. Quantitative formula requires photon frequency defined in graph terms.                                         |

### Time & Motion

| ID  | Mechanic                        | Statement                                                                                                                                                                                                                  | From    | Status                                                                                                    |
| --- | ------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | --------------------------------------------------------------------------------------------------------- |
| D12 | **Velocity time dilation**      | Motion = committed edges being remapped to new neighbors. Old edges dropped, new edges created. Each remapping costs budget. Faster → more remapping → less budget for internal state transitions → less experienced time. | A1, A4  | [QUALITATIVE] — direction correct. Lorentz factor γ = 1/√(1-v²/c²) not derived.                           |
| D13 | **At c, no experienced time**   | Maximum remapping rate. All budget on edge updates. Zero for internal state. Photon: no experienced time.                                                                                                                  | D12, A4 | [DERIVED]                                                                                                 |
| D14 | **Speed of light = budget cap** | Full budget on propagation = c. Can't exceed. Structural limit, not imposed law.                                                                                                                                           | A4      | [DERIVED]                                                                                                 |
| D15 | **Equivalence principle**       | Acceleration = changing rate of edge remapping = changing budget drain. Gravity = mass's budget drain. Both are budget drain on your subgraph from different sources. Same reduction.                                      | D1, D12 | [QUALITATIVE] — qualitative equivalence. Exact equivalence (10⁻¹⁵ precision) requires mathematical proof. |
| D16 | **Arrow of time**               | F runs forward. Not invertible. Committed frames immutable.                                                                                                                                                                | A2      | [DERIVED]                                                                                                 |
| D17 | **Relativity of simultaneity**  | Return values propagate at C through committed edges. Observers at different graph-distances from an event receive return values at different ticks. "Now" = your local version.                                           | A4, D14 | [DERIVED] qualitatively. Exact Lorentz transformation not derived.                                        |
| D18 | **Lorentz symmetry**            | Whether the committed edge-weight geometry is exactly Lorentz symmetric depends on the graph's topology, which is not specified.                                                                                           | A1, A2  | [OPEN] — axioms compatible with Lorentz symmetry but don't determine whether exact or approximate.        |

### Mass & Particles

| ID  | Mechanic                        | Statement                                                                                                                            | From    | Status                                                                     |
| --- | ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ | ------- | -------------------------------------------------------------------------- |
| D19 | **Mass = cyclic overflow**      | Cyclic subgraph → walk never terminates → overflow carries forward → return values recycle internally. Permanent budget consumption. | A3, A4  | [DERIVED]                                                                  |
| D20 | **Massless = DAG**              | DAG resolves within C. All return values propagate out. No overflow.                                                                 | A3, A4  | [DERIVED]                                                                  |
| D21 | **Particle stability**          | Perfect cycles = stable (regenerate identically each tick). Leaking spirals = unstable (slowly unwind). Topological property.        | D19     | [DERIVED]                                                                  |
| D22 | **Masses from spectral radius** | Different cyclic topologies → different eigenvalues → different overflow rates → different masses.                                   | A3, D19 | [QUALITATIVE] — program identified, not completed.                         |
| D23 | **Annihilation**                | Inverse subgraph matrices cancel → zero structure → all locked return values escape as energy. E = mc².                              | A3, A4  | [DERIVED]                                                                  |
| D24 | **Inertia**                     | Mass = deep self-rebuilding stack. Changing state requires overwriting frames rebuilding themselves. Deeper stack = more resistance. | D19     | [QUALITATIVE] — direction correct. F = ma linear relationship not derived. |

### Quantum Mechanics

| ID  | Mechanic                           | Statement                                                                                                                                                                                                                                                                                                  | From         | Status                                                   |
| --- | ---------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------ | -------------------------------------------------------- | ------ | ----------------------------------------------- |
| D25 | **Superposition**                  | No strict consumer → engine walks potential edge patterns without committing. Uncommitted pattern IS the state.                                                                                                                                                                                            | A5           | [DERIVED]                                                |
| D26 | **Wave function**                  | The set of uncommitted potential edges evolving tick by tick. Position (committed edges) and wave function (uncommitted edges) are the same thing at different stages.                                                                                                                                     | A5, A1       | [DERIVED]                                                |
| D27 | **Collapse**                       | Strict consumer demands value → engine commits specific edges → one definite position. Cascades through dependents.                                                                                                                                                                                        | A5           | [DERIVED]                                                |
| D28 | **Double-slit**                    | No consumer → engine walks potential edges through both slits → paths converge → constructive/destructive. Screen = strict consumer → commits one position. Pattern emerges statistically.                                                                                                                 | A5, D25, D27 | [DERIVED]                                                |
| D29 | **Detector destroys interference** | Detector = strict consumer (macroscopic, self-resolving). Demands which-path → commits that edge → single path → no interference.                                                                                                                                                                          | D27          | [DERIVED]                                                |
| D30 | **Quantum eraser**                 | Null operation on which-path edge. No strict consumer ever committed that edge. Sorting already-committed position data by later measurement. Off by one across frames. No retrocausality.                                                                                                                 | A5, D27      | [DERIVED]                                                |
| D31 | **Decoherence**                    | Dense neighborhood = many committed nodes sharing edges with quantum subgraph. Each is a potential strict consumer. More neighbors → more demand → forced resolution.                                                                                                                                      | A5, D27      | [DERIVED]                                                |
| D32 | **Entanglement**                   | Two particles interacted → formed direct edges. Subsequent interactions built long neighborhood paths between them. Direct entanglement edge remains — one hop. Resolution propagates through direct edge. Neighborhood distance irrelevant. No signal needed — one hop, same edge, both endpoints update. | A1, A5       | [DERIVED]                                                |
| D33 | **Bell's theorem satisfied**       | The entanglement edge IS the non-local hidden variable. It connects two distant nodes directly. It isn't stored "at" either node — it IS both nodes simultaneously. Bell rules out local hidden variables. The entanglement edge is non-local by construction.                                             | A1, D32      | [DERIVED]                                                |
| D34 | **No-communication theorem**       | Resolution through direct edge produces correlated values at both endpoints. But neither endpoint learns what measurement the other's strict consumer chose. Verification requires signal through neighborhood topology at C.                                                                              | D32, D14     | [DERIVED]                                                |
| D35 | **Born rule**                      | Dual-role: amplitude α contributes to both walk weight and resolution weight →                                                                                                                                                                                                                             | α            | ².                                                       | A4, A5 | [QUALITATIVE] — structural argument, not proof. |
| D36 | **Uncertainty principle**          | Position = committed edges to specific neighbors. Momentum = rate of edge remapping. Same edges, two descriptions (static pattern vs. rate of change). Constraining one constrains the other — conjugate because they describe the same structure from two perspectives.                                   | A1, D12      | [QUALITATIVE] — conceptual hook. ΔxΔp ≥ ℏ/2 not derived. |
| D37 | **Quantum Zeno effect**            | Frequent strict-consumer demands → subgraph repeatedly committed to current state before it can evolve. Watched pot doesn't boil.                                                                                                                                                                          | A5, D27      | [DERIVED]                                                |

### Cosmology

| ID  | Mechanic                         | Statement                                                                                                                                                                                                                                                                                                  | From       | Status                                                                                      |
| --- | -------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- | ------------------------------------------------------------------------------------------- |
| D38 | **Cosmic expansion**             | Computation creates structure. Return values propagating through the graph create new edges as they interact. More graph → more computation → more edges → growth proportional to size → self-reinforcing. The graph computes itself into existence.                                                       | A1, A3, A4 | [DERIVED] — mechanism follows from axioms. Quantitative rate (Hubble constant) not derived. |
| D39 | **Accelerating expansion**       | Growth rate ∝ graph size. More nodes = more computation per tick = more new edges. Positive feedback loop. No separate "dark energy" needed — the acceleration IS the self-reinforcing computation. The "cosmological constant" is the base rate of edge creation, a property of F.                        | D38, A4    | [DERIVED] qualitatively.                                                                    |
| D40 | **Inflation**                    | Initial graph is densely connected (many edges per node). Explosive computation → explosive edge creation → exponential growth. As graph transitions to local connectivity, growth rate drops. Inflationary period = dense → sparse transition.                                                            | D38, A1    | [QUALITATIVE] — mechanism identified.                                                       |
| D41 | **Spacetime improves over time** | Early universe: sparse graph, coarse geometry, quantum gravity effects significant. As computation creates structure, graph densifies → finer mesh → smoother emergent geometry → GR works more precisely. Mesh refinement.                                                                                | D38, A1    | [DERIVED]                                                                                   |
| D42 | **Dark matter**                  | Cyclic subgraphs (mass: budget drain → gravity) whose edges don't connect to normal matter's EM/strong interaction edges. Embedded in the neighborhood (have position, consume budget) but internally disjoint from visible-matter interaction edges. Gravitationally present, electromagnetically absent. | A1, D19    | [QUALITATIVE]                                                                               |
| D43 | **Big Bang**                     | Initial state of maximum connectivity. Nearly every node connected to many others. Maximum interaction → maximum overflow. A massive sorting: unstable cycles decayed, stable ones persisted. "Cooling" = graph transitioning from dense global connectivity to sparse local connectivity.                 | A1, A3     | [QUALITATIVE]                                                                               |

### Thermodynamics & Structure

| ID  | Mechanic                      | Statement                                                                                                                                                                                                                                                                                  | From        | Status                                                                                              |
| --- | ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------- | --------------------------------------------------------------------------------------------------- |
| D44 | **Entropy increase**          | F runs forward, not invertible. Committed frames immutable. History = append-only log.                                                                                                                                                                                                     | A2          | [DERIVED]                                                                                           |
| D45 | **Conservation of energy**    | Return values passed forward: energy (propagating) + mass (locked) + structure (invested) = total ≤ C.                                                                                                                                                                                     | A4          | [DERIVED]                                                                                           |
| D46 | **Principle of least action** | Engine routes along minimum-cost paths under budget constraints. Standard scheduler behavior.                                                                                                                                                                                              | A4, D6      | [DERIVED]                                                                                           |
| D47 | **Holographic principle**     | Information about a subgraph is determined by its boundary edges (the cut between it and the rest of the graph). Internal structure reconstructible from boundary connections. Information scales with boundary (cut edges), not volume (internal nodes).                                  | A1          | [DERIVED] — graph-cut properties are established mathematics.                                       |
| D48 | **Temperature**               | Average rate of edge remapping among nodes in a neighborhood region. Higher temperature = more edge changes per tick = more budget consumed on remapping.                                                                                                                                  | A1, A4      | [QUALITATIVE]                                                                                       |
| D49 | **Phase transitions**         | Low temperature (slow remapping): stable committed edges to same neighbors (solid). Higher: frequent neighbor changes (liquid). Very high: rapidly changing, no stable local patterns (gas). Phase transition = critical remapping rate where neighborhood topology qualitatively changes. | D48         | [QUALITATIVE]                                                                                       |
| D50 | **Virtual particles**         | Transient uncommitted edge patterns that briefly form during the walk and resolve within the computation. Exist as potential structure during the tick but don't survive to the committed frame. Casimir effect: fewer available paths between close dense subgraphs → net inward force.   | A5          | [QUALITATIVE]                                                                                       |
| D51 | **QCD confinement (sketch)**  | Quarks = nodes with cyclic topology requiring specific shared edges. Pulling apart stretches those edges (increasing weight). When stretching cost exceeds creation cost of a new cyclic pair, a new quark-antiquark pair forms. Can't isolate a quark.                                    | A1, A4, D19 | [QUALITATIVE]                                                                                       |
| D52 | **Planck units**              | The graph has a minimum node spacing (minimum edge). The engine has a minimum tick duration. These set the smallest meaningful distance and time.                                                                                                                                          | A1, A2      | [IDENTIFICATION] — identifying with Planck scale specifically is assumed.                           |
| D53 | **Why 3D**                    | The graph's local connectivity determines emergent dimensionality. Reachable nodes at distance r ~ r² → 3D. WHY this specific connectivity pattern is an open problem — but the relationship between connectivity and dimension is established math.                                       | A1          | [OPEN] — framework predicts dimensionality IS connectivity. Which dimensionality is not determined. |

---

## OPEN PROBLEMS

| #   | Problem                           | What's Needed                                                                                                                                                     | Impact                                        |
| --- | --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- |
| 1   | **Einstein field equations**      | Derive Gμν = 8πGTμν/c⁴ from graph budget-drain dynamics. Would also resolve: exact Schwarzschild radius, Mercury precession, Shapiro delay, exact bending angles. | Interpretation → theory                       |
| 2   | **Why 3D?**                       | Why does the graph's local connectivity produce r² neighbor growth? Why not 2D or 4D?                                                                             | Determines force law, explains dimensionality |
| 3   | **Lorentz symmetry**              | Exact or approximate? Depends on graph topology.                                                                                                                  | Relationship to SR                            |
| 4   | **Spin, charge, quantum numbers** | Which graph-topological properties produce spin-½, charge, color charge?                                                                                          | Connects to Standard Model                    |
| 5   | **Born rule proof**               | Prove lazy eval + cache bust → exactly \|α\|²                                                                                                                     | QM foundation                                 |
| 6   | **Particle masses**               | Stable cyclic topologies → eigenvalues → mass spectrum                                                                                                            | Particle spectrum                             |
| 7   | **E = mc² proof**                 | Prove release = exactly mC²                                                                                                                                       | SR foundation                                 |
| 8   | **Lorentz factor**                | Budget dynamics → γ = 1/√(1-v²/c²)                                                                                                                                | Quantitative SR                               |
| 9   | **Strict consumer formalization** | Precise rules for when a dependency constitutes strict consumption                                                                                                | Quantitative decoherence                      |
| 10  | **Noether / conservation laws**   | If F has translation symmetry → momentum. Rotation → angular momentum. Graph-isomorphism invariance → charge?                                                     | Untapped opportunity                          |
| 11  | **Photon frequency**              | Define frequency for a propagating return value in graph terms                                                                                                    | Redshift, blackbody                           |
| 12  | **QFT full mapping**              | Gauge symmetries, renormalization as graph operations                                                                                                             | Completeness                                  |

---

## PREDICTIONS

Only claims DERIVED from axioms that differ from standard physics:

| #   | Prediction                          | From     | Differs how                                                                                                                                                                                                                         | Test                                                                                                   |
| --- | ----------------------------------- | -------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------ |
| P1  | **Proximity decoherence**           | A5, D31  | Standard: decoherence ∝ interaction strength. Framework: proximity in the graph creates indirect strict consumers through shared edges. Non-interacting systems that are neighbors decohere faster than interaction alone predicts. | Non-interacting quantum systems sharing a graph neighborhood.                                          |
| P2  | **Gravitational budget starvation** | D1, A5   | Standard: gravity doesn't affect coherence. Framework: mass's budget drain reduces budget available for quantum walks → suppresses coherence near mass.                                                                             | Coherence experiments in varying gravitational fields.                                                 |
| P3  | **Expansion from computation**      | D38, D39 | Standard: expansion driven by dark energy (mysterious component). Framework: expansion is the graph growing through its own computation. No separate energy source. "Cosmological constant" = base rate of edge creation.           | Consistent if Λ is truly constant. If dark energy varies, framework needs variable edge-creation rate. |
