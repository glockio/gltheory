# GL Theory — Theorem

**Version 19.2 | Core Axioms & Derived Mechanics**

This document is the single source of truth for the theory. Every claim is tagged:

- **[DERIVED]** — follows from axioms with no unstated assumptions
- **[QUALITATIVE]** — right direction, quantitative form not proven
- **[IDENTIFICATION]** — a mapping claim, not a logical derivation
- **[OPEN]** — compatible with axioms but not determined by them
- **[SPECULATIVE]** — consistent with axioms but could be wrong while axioms remain correct

---

## DEFINITIONS

**Graph:** A set of nodes connected by directed edges with weights. Described by its adjacency matrix.

**DAG (Directed Acyclic Graph):** Graph with no cycles. Resolvable by topological sort in finite steps.

**Cyclic Graph:** Graph containing at least one cycle. Cannot be resolved by topological sort. Walking the dependency tree enters an infinite loop.

**Spectral Radius:** Largest eigenvalue of a graph's adjacency matrix. Determines amplification factor per iteration.

**Strict Consumer:** A node whose next-state computation requires a definite value from another node. The dependency is mandatory.

**Lazy Evaluation:** Values are not resolved to definite answers until a strict consumer demands the result. The computation is tracked but no single answer is produced until demanded.

**Return Value:** Output of completed graph resolution. Can either (a) propagate outward as available input, or (b) feed back into the same graph as input to the next cycle iteration.

---

## AXIOMS

### A1 — Two Types of Graph Structure

Reality is one engine containing two graph types in a many-to-many relationship:

- **Content graphs** have topology but no spatial properties. No position, no distance, no location.
- **The spatial graph** IS space. Regions connected by weighted edges. Distance = edge cost. Not a regular grid — an irregular graph with variable connectivity and weights.
- **Many-to-many.** Each region references many content nodes. Each content node can be referenced by many regions.
- **Dependency edges correlate with spatial proximity.** Content nodes referenced by nearby spatial regions share more dependency edges than distant ones — because interactions (graph merges) happen through the spatial graph. This means budget consumption from a cyclic walk is concentrated in nearby regions and tapers with distance.

**[IDENTIFICATION] Spacetime = spatial graph's edge-cost matrix.** What GR calls the metric tensor is the set of edge weights. Flat spacetime = uniform weights. Curved = distorted by budget drain. This is the framework's central mapping claim, not a derivation.

### A2 — One Deterministic Rule

**S(Ω+1) = F(S(Ω))** — One input, one output. F is deterministic, total, and not guaranteed invertible.

**Three levels of time:**

| Level                | What it is                                                | Dilates?                      |
| -------------------- | --------------------------------------------------------- | ----------------------------- |
| **Engine time (Ω)**  | Global tick counter                                       | Never                         |
| **Experienced time** | State transitions computed on your content graph per tick | Yes — actual, not perceived   |
| **Rendered time**    | Committed frame — static snapshot                         | N/A — time-symmetric geometry |

Arrow of time = evaluation direction of F.

### A3 — Everything is a Graph

All structures are graphs. Interactions = graph merges (matrix multiplication). Inverse graphs cancel (annihilation). Topology determines behavior.

### A4 — Fixed Budget (C)

C = maximum work per tick. Universal. Constant.

**Energy and mass are both return values:**

|                | Energy                         | Mass                          |
| -------------- | ------------------------------ | ----------------------------- |
| Definition     | Return values propagating OUT  | Return values feeding BACK IN |
| Persists?      | Propagates at C until absorbed | Regenerates every tick        |
| Budget         | Consumed then released         | Consumed every tick, locked   |
| On cycle break | N/A                            | Locked values escape → energy |

**Conservation:** Return values from tick Ω → inputs to tick Ω+1. Total ≤ C. Mass = locked. Energy = free. Sum conserved.

**E = mc² [QUALITATIVE]:** m frames × C stored × C propagation = mC². Dual-role pattern — C governs storage AND propagation. Structural argument sound; formal proof that release is EXACTLY mC² is pending.

### A5 — Lazy Evaluation & Double-Buffered Rendering

You see frame Ω while engine computes Ω+1. Off by one.

Engine computes ALL graphs every tick. Only produces definite answers when a **strict consumer** demands one.

| Condition               | Result                                                   |
| ----------------------- | -------------------------------------------------------- |
| Strict consumer present | Resolve → one value → write to spatial graph (classical) |
| No strict consumer      | Carry walk → data-layer state (quantum)                  |

**Wave function** lives at content-graph layer only. Spatial graph references it but hasn't rendered it.

**Measurement = cache bust** = strict consumer demanding resolution.

---

## DERIVED MECHANICS

### Gravity & Spacetime

| ID  | Mechanic                               | Statement                                                                                                                             | From          | Status                                                                                                                                                  |
| --- | -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| D1  | **Gravity**                            | Mass's cyclic walk consumes budget locally (A1: dependency-proximity correlation creates gradient). Cheapest paths curve toward mass. | A1, A4        | [DERIVED] — gradient direction derived. 1/r² profile requires showing neighbor count scales as ~r² in 3D-like graph (plausible, not proven).            |
| D3  | **Gravity + dilation = one mechanism** | Budget drain simultaneously warps edge costs (curvature) and starves neighbors (dilation). One drain, two effects.                    | D1, A1-ID, A2 | [DERIVED]                                                                                                                                               |
| D4  | **Gravity unshieldable**               | Spatial-graph phenomenon. Shields are content structures in the wrong layer.                                                          | A1, D1        | [DERIVED]                                                                                                                                               |
| D5  | **Gravitational waves**                | Changing mass → changing return values → propagate at C → oscillating edge weights.                                                   | D1, A4        | [DERIVED] — existence + propagation at c. Waveform shape requires field equations.                                                                      |
| D6  | **Frame dragging**                     | Rotating mass creates asymmetric edge weights IF rotation maps to directional bias in cyclic walk.                                    | D1            | [OPEN] — rotation → cycle-bias mapping unestablished.                                                                                                   |
| D7  | **Geodesics**                          | Minimum-cost routing through weighted graph. Standard graph-routing result.                                                           | A1, A4        | [DERIVED]                                                                                                                                               |
| D8  | **Gravitational lensing**              | Light follows cheapest path. Costs warped near mass. Path curves.                                                                     | D7, A1-ID     | [DERIVED]                                                                                                                                               |
| D9  | **Black hole event horizon**           | Sufficient mass → 100% budget drain at some radius. Zero state changes.                                                               | D1, A4        | [QUALITATIVE] — existence follows. Specific radius requires drain profile.                                                                              |
| D10 | **Black hole singularity**             | Unbounded stack in finite budget = crash.                                                                                             | A4            | [DERIVED]                                                                                                                                               |
| D11 | **Black hole evaporation**             | Just outside horizon: small nonzero budget. Slow stack-edge resolution → return values escape.                                        | D9, A4        | [QUALITATIVE] — different mechanism than Hawking's (vacuum fluctuations). May produce radiation; thermal spectrum with correct temperature NOT derived. |
| D12 | **Gravitational redshift**             | Photon traversing high-drain region expends energy on higher edge costs. Arrives with less energy.                                    | A1-ID, A4     | [QUALITATIVE] — direction correct. Quantitative formula requires defining photon frequency in graph terms.                                              |

### Time & Motion

| ID  | Mechanic                        | Statement                                                                                                                                          | From    | Status                                                                                                                               |
| --- | ------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| D13 | **Velocity time dilation**      | Motion = spatial-graph edge updates consuming budget. Faster → more consumed → less experienced time.                                              | A1, A4  | [QUALITATIVE] — direction correct. Does not derive Lorentz factor γ = 1/√(1-v²/c²).                                                  |
| D14 | **At c, no experienced time**   | Maximum edge updates. All budget on propagation. Zero internal state.                                                                              | D13, A4 | [DERIVED] — limit case.                                                                                                              |
| D15 | **Speed of light = budget cap** | Full budget on propagation. Can't exceed.                                                                                                          | A4      | [DERIVED]                                                                                                                            |
| D16 | **Equivalence principle**       | Acceleration and gravity are both budget drain from different sources. Same type of reduction.                                                     | D1, D13 | [QUALITATIVE] — qualitative equivalence. Exact equivalence (10⁻¹⁵ precision) requires proving mathematical identity.                 |
| D17 | **Arrow of time**               | F runs forward. Not invertible. Frames immutable.                                                                                                  | A2      | [DERIVED]                                                                                                                            |
| D18 | **Relativity of simultaneity**  | Return values propagate at C. Different observers have different lag.                                                                              | A4, D15 | [DERIVED] qualitatively. Exact Lorentz transformation not derived.                                                                   |
| D19 | **Lorentz symmetry**            | Whether the committed frame's geometry is exactly Lorentz symmetric depends on the spatial graph's topology, which is not specified by the axioms. | A1, A2  | [OPEN] — axioms are COMPATIBLE with Lorentz symmetry but do not determine whether it is exact, approximate, or broken at some scale. |

### Mass & Particles

| ID  | Mechanic                        | Statement                                                                                              | From    | Status                                                 |
| --- | ------------------------------- | ------------------------------------------------------------------------------------------------------ | ------- | ------------------------------------------------------ |
| D20 | **Mass = cyclic overflow**      | Cyclic topology → walk never terminates → overflow carries forward → return values recycle internally. | A3, A4  | [DERIVED]                                              |
| D21 | **Massless = DAG**              | DAG resolves within C. All return values propagate out.                                                | A3, A4  | [DERIVED]                                              |
| D22 | **Particle stability**          | Perfect cycles = stable. Leaking spirals = unstable. Topological property.                             | D20     | [DERIVED]                                              |
| D23 | **Masses from spectral radius** | Different topologies → different eigenvalues → different overflow rates → different masses.            | A3, D20 | [QUALITATIVE] — program identified, not completed.     |
| D24 | **Annihilation**                | Inverse matrices cancel → zero structure → locked return values escape.                                | A3, A4  | [DERIVED]                                              |
| D25 | **Inertia**                     | Deep self-rebuilding stack resists change. More depth = more resistance.                               | D20     | [QUALITATIVE] — direction correct. F = ma not derived. |

### Quantum Mechanics

| ID  | Mechanic                           | Statement                                                                                         | From         | Status    |
| --- | ---------------------------------- | ------------------------------------------------------------------------------------------------- | ------------ | --------- | ------ | ----------------------------------------------- |
| D26 | **Superposition**                  | No strict consumer → walk carried at data layer.                                                  | A5           | [DERIVED] |
| D27 | **Wave function**                  | Content graph's evolving state at data layer.                                                     | A5           | [DERIVED] |
| D28 | **Collapse**                       | Strict consumer demands value → resolve → one answer.                                             | A5           | [DERIVED] |
| D29 | **Double-slit**                    | No consumer → both paths → converge → interference. Screen = consumer → one position.             | A5, D26, D28 | [DERIVED] |
| D30 | **Detector destroys interference** | Detector = strict consumer → which-path resolved → single path.                                   | D28          | [DERIVED] |
| D31 | **Quantum eraser**                 | Null operation on which-path edge. Off by one across frames.                                      | A5, D28      | [DERIVED] |
| D32 | **Decoherence**                    | Dense environments = strict consumers everywhere → forced resolution.                             | A5, D28      | [DERIVED] |
| D33 | **Entanglement**                   | One content graph, two spatial references. No distance in content layer. Resolution updates both. | A1, A5       | [DERIVED] |
| D34 | **Bell's theorem**                 | Non-local by construction.                                                                        | A1, D33      | [DERIVED] |
| D35 | **No-communication theorem**       | Structural correlation. Verification requires signal at C.                                        | D33, D15     | [DERIVED] |
| D36 | **Born rule**                      | Dual-role: α in walk weight AND resolution weight →                                               | α            | ².        | A4, A5 | [QUALITATIVE] — structural argument, not proof. |

### Cosmology & Other

| ID  | Mechanic                   | Statement                                                               | From    | Status                                                                                 |
| --- | -------------------------- | ----------------------------------------------------------------------- | ------- | -------------------------------------------------------------------------------------- |
| D37 | **Entropy increase**       | F forward, not invertible. Append-only.                                 | A2      | [DERIVED]                                                                              |
| D38 | **Least action**           | Minimum-cost routing under budget constraints.                          | A4, D7  | [DERIVED]                                                                              |
| D39 | **Conservation of energy** | Return values passed forward. Total ≤ C.                                | A4      | [DERIVED]                                                                              |
| D40 | **Holographic principle**  | Flat data + 3D rendering → information scales with boundary.            | A1      | [QUALITATIVE] — correspondence correct. Bekenstein bound not derived.                  |
| D41 | **Planck units**           | Discrete graph structure implies minimum resolution.                    | A1, A2  | [IDENTIFICATION] — identifying that scale with Planck scale is reasonable but assumed. |
| D42 | **Dark matter**            | Cyclic stacks with no EM/strong dependency edges. Gravitational only.   | A1, D20 | [QUALITATIVE] — consistent description.                                                |
| D43 | **Dark energy**            | Baseline cost of spatial graph maintenance. Self-reinforcing expansion. | A1, A4  | [SPECULATIVE]                                                                          |
| D44 | **Cosmic expansion**       | Dynamic graph topology permits growth.                                  | A1      | [QUALITATIVE] — architecture permits it. No mechanism.                                 |

---

## OPEN PROBLEMS

| #   | Problem                                   | What's Needed                                          | Impact                      |
| --- | ----------------------------------------- | ------------------------------------------------------ | --------------------------- |
| 1   | **Einstein field equations**              | Derive Gμν = 8πGTμν/c⁴ from graph dynamics             | Interpretation → theory     |
| 2   | **Lorentz symmetry**                      | Determine if committed geometry is exactly symmetric   | Resolves relationship to SR |
| 3   | **Spin, charge, quantum numbers**         | Graph topology → quantum numbers                       | Connects to Standard Model  |
| 4   | **Born rule proof**                       | Lazy eval + cache bust → exactly \|α\|²                | Completes QM foundation     |
| 5   | **Particle masses**                       | Stable cyclic topologies → eigenvalues → mass spectrum | Predicts particle spectrum  |
| 6   | **E = mc² proof**                         | Prove release = exactly mC²                            | Completes SR                |
| 7   | **Lorentz factor**                        | Budget dynamics → γ = 1/√(1-v²/c²)                     | Quantitative SR             |
| 8   | **1/r² profile**                          | Neighbor count at distance r scales as r² in 3D graph  | Quantitative gravity        |
| 9   | **Strict consumer formalization**         | Precise rules for strict consumption                   | Quantitative decoherence    |
| 10  | **Rotation → cycle bias**                 | How spatial rotation maps to cyclic topology           | Frame dragging              |
| 11  | **Noether's theorem / conservation laws** | Rule symmetries → momentum, angular momentum, charge   | Untapped opportunity        |
| 12  | **Photon frequency in graph terms**       | Define frequency for a propagating return value        | Redshift, blackbody         |
| 13  | **QFT mapping**                           | Virtual particles, gauge symmetries as graph ops       | Completeness                |
| 14  | **Spatial expansion mechanism**           | How new regions are created                            | Cosmology                   |

---

## PREDICTIONS

Only claims DERIVED from axioms that differ from standard physics:

| #   | Prediction                          | From    | Differs how                                                                                                                     | Test                                            |
| --- | ----------------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- |
| P1  | **Proximity decoherence**           | A5, D32 | Standard: decoherence ∝ interaction strength. Ours: proximity creates indirect strict consumers via shared-region re-rendering. | Non-interacting quantum systems in same region. |
| P2  | **Gravitational budget starvation** | D1, A5  | Standard: gravity doesn't affect coherence. Ours: budget drain reduces walk capacity.                                           | Coherence experiments in varying gravity.       |

**Removed from predictions (not derived from axioms):**

- ~~Planck-scale Lorentz violation~~ → [OPEN] depends on unspecified graph topology
- ~~Dark matter as topology-decoupled overflow~~ → description, not distinguishing prediction
