# GL Theory — Theorem

**Version 19.1 | Core Axioms & Derived Mechanics**

This document is the single source of truth for the theory. It contains only axioms, definitions, derived mechanics, and their logical chains. No analogies, no pedagogy, no history. Those live in the companion document (the HTML guide). This is the engine.

---

## DEFINITIONS

**Graph:** A set of nodes connected by directed edges with weights. Each node may depend on others. A graph can be described by its adjacency matrix.

**DAG (Directed Acyclic Graph):** A graph with no cycles. Can be resolved by topological sort in finite steps.

**Cyclic Graph:** A graph containing at least one cycle — a path from a node back to itself. Cannot be resolved by topological sort. Walking the dependency tree enters an infinite loop.

**Topological Sort:** An algorithm that processes nodes in dependency order. Only works on DAGs. Terminates in O(V+E) where V = nodes, E = edges.

**Spectral Radius:** The largest eigenvalue of a graph's adjacency matrix. Determines the amplification factor of computation on that graph per iteration.

**Strict Consumer:** A node whose next-state computation requires a definite value from another node. The dependency is mandatory — the consuming node cannot compute its next state without the input being resolved to a single value.

**Lazy Evaluation:** A computation strategy where values are not resolved to definite answers until a strict consumer demands the result. The computation is tracked (the "walk" is maintained) but no single answer is produced until demanded.

**Return Value:** The output of a completed graph resolution. A return value can either: (a) propagate outward to other graphs as available input, or (b) feed back into the same graph as input to the next iteration of a cycle.

---

## AXIOMS

### A1 — Two Types of Graph Structure

Reality is one engine containing two types of graph in a many-to-many relationship:

- **Content graphs** have topology (nodes, edges, dependencies) but no spatial properties. No position, no distance, no location. A content graph is a pattern of dependencies.
- **The spatial graph** IS space. A graph of regions connected to regions by weighted edges. "Distance" between regions = edge cost. "Neighboring" = connected by an edge. Not a regular grid — an irregular graph with variable connectivity and variable edge weights.
- **The relationship is many-to-many.** Each spatial region can reference many content nodes. Each content node can be referenced by many spatial regions. A content node has "location" only in the sense that some spatial region holds a reference to it.

### A2 — One Deterministic Rule

Each tick, the engine computes the next state from the current state:

**S(Ω+1) = F(S(Ω))**

- S = the complete state (all content graphs + the spatial graph)
- Ω = the tick counter (engine time)
- F = the Rule (deterministic, total — one input always produces exactly one output)
- F is not guaranteed to be invertible (many inputs may produce the same output)

**Three levels of time emerge from this:**

| Level                | What it is                                                                                                                                                            | Dilates?                                                                                             |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| **Engine time (Ω)**  | The global tick counter. The computation step.                                                                                                                        | Never. Every region participates every tick.                                                         |
| **Experienced time** | The number of state transitions actually computed on a content graph during one tick. Determined by how much budget was available for that graph after other demands. | Yes. This is what clocks measure. The dilation is actual — fewer transitions genuinely occurred.     |
| **Rendered time**    | The committed frame — a static snapshot. Its geometry has no inherent time direction.                                                                                 | N/A. It's a photograph. Physics equations describe this level, which is why they are time-symmetric. |

The arrow of time is the evaluation direction of F. You cannot un-run a function. You cannot un-commit a state. F is not guaranteed invertible, so from an output you cannot uniquely determine which input produced it.

### A3 — Everything is a Graph

All structures in the engine are graphs. All interactions are graph operations.

- **Interaction** = graph merge. Two graphs combine into one. Their adjacency matrices combine (roughly: multiply).
- **Annihilation** = a graph meeting its inverse. The matrices cancel. Zero structure remains. All stored return values propagate outward as energy.
- **Graph topology determines behavior.** Whether a graph has cycles, its spectral radius, its connectivity — these determine mass, stability, and interaction properties.

### A4 — Fixed Budget (C)

The engine has a fixed total budget of work per tick: **C.**

- C is universal and constant. It does not change.
- C is the clock speed of reality. It determines the speed of light, the energy scale of mass, and the maximum propagation rate.
- Each tick, the engine allocates C across all graph walks in all regions. Every graph gets walked. The walks compete for the shared budget.

**Energy and mass are both return values. The difference is where they go:**

|                   | Energy                                                                                       | Mass                                                                                       |
| ----------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| What it is        | Return values that propagate OUT of a graph                                                  | Return values that feed BACK INTO the same graph                                           |
| What happens      | Completed work exits the graph and becomes available input to other graphs and the next tick | Completed work re-enters as input to the next iteration of the cycle. Trapped in the loop. |
| Persists?         | Propagates at C until absorbed                                                               | Perpetuates every tick (the cycle regenerates)                                             |
| Budget impact     | Consumed, then released                                                                      | Consumed every tick, never released (while cycle holds)                                    |
| When cycle breaks | N/A                                                                                          | Stored return values escape → become energy. E = mC².                                      |

**Conservation of energy:** Return values from tick Ω become inputs to tick Ω+1. The total is bounded by C. Nothing is created or destroyed. Return values are either propagating freely (energy) or locked in cycles (mass). The sum is conserved.

**E = mc² derivation:** Mass is a stack of overflow frames from a cyclic walk. Each frame stores one tick's worth of recycled return values = C. Stack depth = m frames. When the cycle breaks, the stored return values (m × C) propagate outward at the maximum rate (C). Total impact: m × C × C = mC². The budget appears squared because it plays two structural roles: it determines how much each frame stores AND how fast the release propagates. This is the **dual-role pattern.**

### A5 — Lazy Evaluation & Double-Buffered Rendering

**Double buffering:** You see frame Ω while the engine computes frame Ω+1. You are always off by one. You never see computation in progress. You only see committed results.

**Lazy evaluation:** The engine computes all graphs every tick. Nothing is skipped. But the engine only produces a definite, single-value result when a **strict consumer** demands one.

| Condition                   | Engine behavior                                                                                                  | Result             | Physics name              |
| --------------------------- | ---------------------------------------------------------------------------------------------------------------- | ------------------ | ------------------------- |
| **Strict consumer present** | Walk the graph, resolve to one definite value, write to spatial graph                                            | Classical behavior | Decoherence / measurement |
| **No strict consumer**      | Walk the graph through all paths, carry the walk forward as the content graph's evolving state at the data layer | Quantum behavior   | Superposition             |

**Why this distinction exists:** The engine doesn't skip small graphs. It doesn't "choose" to keep things quantum. It computes everything. But producing a definite answer requires a consumer that needs one. Without a consumer, the walk IS the state. This is standard lazy evaluation — the same strategy used by functional programming languages. You don't produce answers nobody asked for.

**Where the wave function lives:** At the content-graph layer ONLY. The spatial graph holds a reference to the unresolved content graph (it "knows it's there"), but the reference points to an evolving multi-path computation, not a definite value. The wave function is not "in space." It is a data-layer state that the spatial graph references but hasn't rendered.

**Measurement = cache bust:** When a committed structure's next state requires a definite value from an unresolved graph, that committed structure is a strict consumer. The engine resolves the unresolved graph — one answer. The multi-path walk is replaced by a single definite value. Resolution cascades through all dependent graphs. This is "collapse."

**Why a basketball is classical:** 10²⁶ atoms, each demanding definite values from its neighbors to compute the next tick. Every atom is a strict consumer of its neighbors. The basketball is its own strict consumer — it resolves itself because its internal dependency structure requires it.

**Why a photon stays quantum:** No strict consumer demands its definite position. The engine walks its paths, carries the walk forward. Cheap per tick. Quantum until a strict consumer appears.

---

## DERIVED MECHANICS

Each derived mechanic follows from the axioms above. The "From" column traces the logical chain.

### Gravity & Spacetime

| ID  | Mechanic                                    | Statement                                                                                                                                                                                                                                                                                                                                                                                                                    | From   |
| --- | ------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ |
| D1  | **Gravity**                                 | Mass's cyclic walk consumes budget in its spatial region. Neighboring regions share the spatial graph and thus share the budget. The consumption creates a gradient: high drain near mass, tapering with distance. Everything routes along the cheapest path through the spatial graph. Near mass, paths curve toward it (the routing costs are distorted). From the render layer, this looks like gravitational attraction. | A1, A4 |
| D2  | **Spacetime = edge-cost matrix**            | The spatial graph's edge weights encode distances and routing costs. This IS the metric tensor. Flat spacetime = uniform weights. Curved spacetime = weights distorted by mass's budget drain.                                                                                                                                                                                                                               | A1     |
| D3  | **Gravity + time dilation = one mechanism** | Mass's budget consumption simultaneously distorts edge weights (curvature) and starves neighbor content graphs of compute cycles (time dilation). One drain, two observable effects. This is why the Schwarzschild metric describes both with one equation.                                                                                                                                                                  | D1, D2 |
| D4  | **Gravity is unshieldable**                 | Gravity operates through the spatial graph (edge-weight distortion). Shields are content structures embedded INSIDE the spatial graph. A content structure cannot intercept a spatial-graph phenomenon. Wrong layer.                                                                                                                                                                                                         | A1, D1 |
| D5  | **Gravitational waves**                     | When mass changes (binary inspiral, merger), the cyclic walk's return values change tick by tick. Those changing return values propagate through the spatial graph at C. Edge weights oscillate as they pass. That oscillation = gravitational wave.                                                                                                                                                                         | D1, A4 |
| D6  | **Frame dragging**                          | Rotating mass = directional bias in cyclic walk. Return values propagating outward carry that bias. Edge weights become asymmetric (cheaper in rotation direction). Space appears "dragged."                                                                                                                                                                                                                                 | D1, D2 |
| D7  | **Geodesics**                               | The engine routes computation along minimum-cost paths through the spatial graph. This is what schedulers do. Objects follow geodesics because the engine routes along cheapest paths.                                                                                                                                                                                                                                       | A1, A4 |
| D8  | **Gravitational lensing**                   | Light (a photon = return value in transit) follows the cheapest path. Near mass, routing costs are distorted. Cheapest path curves.                                                                                                                                                                                                                                                                                          | D2, D7 |
| D9  | **Black hole event horizon**                | Budget drain from mass reaches 100% at some distance. Remaining budget = 0. Zero state changes. Time stops. Nothing propagates outward (propagation requires budget).                                                                                                                                                                                                                                                        | D1, A4 |
| D10 | **Black hole singularity**                  | Overflow stack exceeds any finite budget. Stack overflow exception. Physics equations produce infinities because the engine can't process an infinite stack in finite budget.                                                                                                                                                                                                                                                | A4     |
| D11 | **Hawking radiation**                       | At the event horizon boundary, budget ≈ 0 but not exactly 0. Engine can slowly resolve outermost stack edges. Those return values propagate outward. Slow evaporation.                                                                                                                                                                                                                                                       | D9, A4 |
| D12 | **Gravitational redshift**                  | Photon climbing out of gravity well: its propagation budget is reduced by mass's drain. Less budget = lower frequency.                                                                                                                                                                                                                                                                                                       | D1, A4 |

### Time & Motion

| ID  | Mechanic                        | Statement                                                                                                                                                                                                                                                                                                                   | From    |
| --- | ------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| D13 | **Velocity time dilation**      | Motion = content graph's reference being updated across spatial regions (old region drops reference, new region acquires it). Each update is a spatial-graph operation consuming budget. More updates per tick (faster motion) = more budget consumed = less budget for internal state transitions = less experienced time. | A1, A4  |
| D14 | **At c, no experienced time**   | Maximum spatial-region updates per tick. All budget on propagation. Zero for internal state. Photon: no experienced time.                                                                                                                                                                                                   | D13, A4 |
| D15 | **Speed of light = budget cap** | c = full budget spent on propagation. Exceeding c requires budget > C. Impossible. Not a law imposed on nature — a structural limit.                                                                                                                                                                                        | A4      |
| D16 | **Equivalence principle**       | Acceleration = changing rate of spatial-graph edge updates = changing budget drain. Gravity = mass's budget drain. Both are budget drain on your content graph from different sources. Structurally identical. Derived, not assumed.                                                                                        | D1, D13 |
| D17 | **Arrow of time**               | F runs forward. F is not invertible. Committed frames are immutable. History is append-only.                                                                                                                                                                                                                                | A2      |
| D18 | **Relativity of simultaneity**  | Return values propagate at C through the spatial graph. Observer equidistant from two events receives both simultaneously. Observer closer to one receives that first. "Now" = your local version, determined by propagation delay.                                                                                         | A4, D15 |
| D19 | **Lorentz symmetry (claimed)**  | The engine computes globally with a universal tick, but the committed frame's geometry is symmetric between observers. The global tick is the computation step, not a preferred frame. Tiny deviations predicted at Planck scale.                                                                                           | A2, A1  |

### Mass & Particles

| ID  | Mechanic                                 | Statement                                                                                                                                                                                                                                         | From    |
| --- | ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| D20 | **Mass = cyclic overflow**               | A cyclic graph topology creates a walk that never terminates. The engine processes as much as budget allows; the rest carries forward. Return values recycle internally. The stack is permanent.                                                  | A3, A4  |
| D21 | **Massless = DAG**                       | A DAG resolves by topological sort. If total work ≤ C, it completes in one tick. No overflow, no mass. All return values propagate outward.                                                                                                       | A3, A4  |
| D22 | **Particle stability**                   | Stable particles = cyclic topologies that regenerate identically each tick (perfect cycles). Unstable particles = cycles that slowly unwind (leaking spirals). Stability is a topological property.                                               | D20     |
| D23 | **Specific masses from spectral radius** | Different cyclic topologies have different spectral radii (largest eigenvalue of adjacency matrix). Spectral radius determines overflow rate per tick. Different topologies → different masses. (Mathematical program identified, not completed.) | A3, D20 |
| D24 | **Matter-antimatter as inverse graphs**  | A particle's adjacency matrix and its antiparticle's are inverses. When they merge, matrices cancel → zero structure → all recycled return values escape → energy. E = mc².                                                                       | A3, A4  |
| D25 | **Inertia**                              | Mass = deep self-rebuilding stack. Changing its state (accelerating it) requires overwriting frames that are simultaneously rebuilding. Deeper stack = more resistance. F = ma is the cost of rewriting m overflow frames with acceleration a.    | D20     |

### Quantum Mechanics

| ID  | Mechanic                           | Statement                                                                                                                                                                                                                                                                            | From         |
| --- | ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------ | ------------------------------------------- | ------ |
| D26 | **Superposition**                  | Content graph with no strict consumer. Engine walks all paths each tick. Walk IS the state. Lives at data layer, not projected to spatial graph.                                                                                                                                     | A5           |
| D27 | **Wave function**                  | The content graph's evolving state at the data layer as the engine walks its dependency tree tick by tick without resolution. Computation in progress, not stored data.                                                                                                              | A5, D26      |
| D28 | **Collapse = cache bust**          | Strict consumer demands definite value. Engine resolves graph — one answer. Walk replaced by result. Cascades through dependents.                                                                                                                                                    | A5           |
| D29 | **Double-slit interference**       | No strict consumer → engine walks both paths → paths converge at screen → constructive/destructive pattern. Screen is strict consumer → cache bust → one position. Probability shaped by walk structure. Pattern emerges statistically over many cache busts.                        | A5, D26, D28 |
| D30 | **Detector destroys interference** | Detector is strict consumer (macroscopic, self-resolving). Demands which-path value. Cache bust on which-path → single path → no interference.                                                                                                                                       | D28          |
| D31 | **Quantum eraser**                 | Erasure = measuring idler in basis that doesn't distinguish paths = null operation on which-path edge. No cache bust on that edge occurred. Multi-path walk survives in sorted subset. Already-committed data is sorted differently in a later frame. Off by one. No retrocausality. | A5, D28      |
| D32 | **Decoherence**                    | Dense environments create strict consumers. Each neighboring atom demands definite values. Quantum system acquires strict consumers → forced resolution. Not observation — dependency structure.                                                                                     | A5, D28      |
| D33 | **Entanglement**                   | Two interacting particles = one content graph. When they separate: one content graph referenced by two spatial regions. Content graph has no distance. Resolution updates both references. No signal. Structural, not communicative.                                                 | A1, A5       |
| D34 | **Bell's theorem satisfied**       | Bell rules out local hidden variables. Framework's hidden state (content graph) is non-local by construction — has no spatial location.                                                                                                                                              | A1, D33      |
| D35 | **No-communication theorem**       | Resolution of entangled graph doesn't carry information about measurement choice. Verification of correlation requires classical signal at C.                                                                                                                                        | D33, D15     |
| D36 | **Born rule (qualitative)**        | Dual-role pattern: amplitude α contributes to both walk weight and resolution weight. Same quantity, two roles →                                                                                                                                                                     | α            | ². (Structural argument, not formal proof.) | A4, A5 |

### Cosmology & Other

| ID  | Mechanic                      | Statement                                                                                                                                                                                                                                                               | From    |
| --- | ----------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| D37 | **Entropy increase**          | F runs forward and is not invertible. History = append-only log. Unscrambling requires reversing F, which is impossible when F is many-to-one.                                                                                                                          | A2      |
| D38 | **Principle of least action** | Engine routes along minimum-cost paths. This is what schedulers do under budget constraints. Not a law — a property of graph resolution.                                                                                                                                | A4, D7  |
| D39 | **Conservation of energy**    | Return values from tick Ω become inputs to tick Ω+1. Total ≤ C. Mass = locked return values. Energy = free return values. Sum conserved.                                                                                                                                | A4      |
| D40 | **Holographic principle**     | Content graphs are flat data structures (topology, no spatial dimension). Spatial graph renders 3D appearance. Information scales with content structure (surface/boundary) not rendered volume.                                                                        | A1      |
| D41 | **Planck units**              | Planck length = spatial graph's minimum edge resolution. Planck time = tick duration. Below these, "distance" and "duration" are undefined because you've hit the graph's resolution boundary.                                                                          | A1, A2  |
| D42 | **Dark matter**               | Overflow stacks (mass) whose graph topology has no dependency edges to normal matter's EM/strong content graphs. Cyclic → self-demanding → resolves internally. Budget drain → gravity. No content-graph coupling to visible matter → invisible except gravitationally. | A1, D20 |
| D43 | **Dark energy (speculative)** | Baseline computational cost of maintaining the spatial graph (each region requires minimum work per tick). As graph expands, cost grows, enabling further expansion. Self-reinforcing.                                                                                  | A1, A4  |
| D44 | **Cosmic expansion**          | Spatial graph can grow (add regions/edges). Dynamic topology permits expansion. Mechanism not specified.                                                                                                                                                                | A1      |

---

## OPEN PROBLEMS

| Priority | Problem                                             | What's Needed                                                                                              | Impact                                        |
| -------- | --------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | --------------------------------------------- |
| 1        | **Einstein field equations from graph topology**    | Show that edge-cost matrix under budget-drain dynamics obeys Gμν = 8πGTμν/c⁴                               | Moves framework from interpretation to theory |
| 2        | **Spin, charge, and quantum numbers from topology** | Show which graph-topological properties produce spin-½, charge ±1, color charge, etc.                      | Connects to Standard Model                    |
| 3        | **Born rule formal proof**                          | Prove that lazy-evaluation + cache-bust produces exactly \|α\|²                                            | Completes QM foundation                       |
| 4        | **Specific particle masses from spectral radii**    | Find the stable cyclic topologies whose eigenvalues match electron, proton, etc.                           | Predicts particle spectrum                    |
| 5        | **E = mc² formal derivation**                       | Derive from graph topology that total energy release is exactly mC²                                        | Completes SR foundation                       |
| 6        | **1/r² from graph geometry**                        | Show that budget drain distributed across neighbors at distance r gives drain/r² from surface-area scaling | Easy win, should be done                      |
| 7        | **Strict consumer formalization**                   | Precise rules for when a dependency constitutes strict consumption                                         | Enables quantitative decoherence predictions  |
| 8        | **Conservation laws from symmetries**               | Derive momentum, angular momentum, charge conservation from Rule symmetries (Noether's theorem)            | Untapped opportunity                          |
| 9        | **QFT mapping**                                     | Virtual particles, renormalization, gauge symmetries as graph operations                                   | Required for completeness                     |
| 10       | **Spatial graph expansion mechanism**               | How do new regions get created?                                                                            | Required for cosmology                        |

---

## NOVEL PREDICTIONS

| #   | Prediction                                      | Differs from standard physics how                                                                                      | Testable by                                                   |
| --- | ----------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------- |
| P1  | Planck-scale Lorentz violation                  | Standard: exact Lorentz symmetry. Framework: tiny deviations from discrete graph.                                      | High-energy gamma ray timing                                  |
| P2  | Proximity decoherence                           | Standard: decoherence from interaction strength. Framework: from spatial proximity creating indirect strict consumers. | Non-interacting quantum systems in shared region              |
| P3  | Gravitational decoherence via budget starvation | Standard: gravity doesn't affect coherence. Framework: budget drain reduces walk capacity.                             | Quantum coherence experiments in varying gravitational fields |
| P4  | Dark matter as topology-decoupled overflow      | Standard: new particle type. Framework: same overflow mechanism, decoupled topology.                                   | Consistent if DM has ONLY gravitational interactions          |
