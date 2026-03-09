# GL Theory — Physics Test Cases

**Version 19.1 | Evaluation Suite**

---

## SYSTEM PROMPT FOR EVALUATION

```
You are a physics evaluation agent. You have been given two documents:

1. theorem.md — A speculative computational framework ("GL Theory") proposing
   that reality is a graph-based engine with five core axioms.
2. physics.md (this file) — A set of physics test cases representing observed
   phenomena, experiments, and established results.

YOUR TASK:

For each test case below, evaluate whether the theorem's axioms and derived
mechanics can explain the observed physics. For each test case, output:

STATUS: One of:
  ✅ PASS — The axioms logically produce this result. The chain of reasoning
            is explicit and sound. No hand-waving.
  ⚠️ QUALITATIVE — The framework produces the right qualitative behavior
            (correct direction, correct relationships) but does not derive
            the precise mathematical form or quantitative prediction.
  ❌ FAIL — The framework cannot explain this, contradicts it, or has no
            mechanism for it.
  🔮 PREDICTION — The framework makes a claim that differs from standard
            physics and could be tested.

EXPLANATION: 2-4 sentences tracing the logical chain from axioms → derived
mechanics → observed result. Cite specific axiom IDs (A1-A5) and derived
mechanic IDs (D1-D44) from theorem.md.

ISSUES: Any logical gaps, circular reasoning, or unstated assumptions in
the explanation. Be specific. "This is qualitative" is not an issue —
"The 1/r² dependence requires surface-area scaling of graph neighbors at
distance r, which is assumed but not derived from A1" IS an issue.

After evaluating all test cases, produce:

SCORECARD:
- Total tests, passes, qualitative, fails, predictions
- Pass rate (PASS only) and coverage rate (PASS + QUALITATIVE)

GAP ANALYSIS (sorted by severity):
- The most critical failures and qualitative gaps
- What each gap would require to close
- Which gaps, if closed, would have the highest impact on the framework's
  credibility

LOGICAL ISSUES (sorted by severity):
- Any contradictions between test case results
- Any places where the framework explains X but that explanation
  contradicts its explanation of Y
- Any circular reasoning detected
- Any axioms that are doing no work (not needed for any test case)
- Any test cases that require assumptions beyond the stated axioms

Be rigorous. Be skeptical. The framework's author wants honest evaluation,
not validation. Grade it the way a physics PhD committee would grade a
thesis defense.
```

---

## TEST CASES

### QUANTUM MECHANICS

#### QM-1: Double-Slit Interference (Single Particles)

**Observed:** Single particles (photons, electrons) fired one at a time at a barrier with two slits produce, over many trials, an interference pattern on the detection screen — alternating bright and dark bands characteristic of wave interference.
**Key fact:** Each particle lands at one definite spot. The pattern emerges statistically over thousands of individual detections.
**Precision:** Confirmed for photons, electrons, neutrons, even C₆₀ molecules.

#### QM-2: Detector Destroys Interference

**Observed:** Placing a detector at one slit to determine which slit the particle passed through eliminates the interference pattern. The particle behaves as if it went through only one slit.
**Key fact:** The detector doesn't need to physically block or deflect the particle. Simply having which-path information available destroys interference.

#### QM-3: Quantum Eraser

**Observed:** In a delayed-choice quantum eraser experiment (Kim et al., 2000), which-path information is recorded via entangled partner photons. After the signal photon has already hit the screen, the experimenter can choose to "erase" the which-path information by measuring the idler in a basis that doesn't distinguish paths. When signal photon positions are sorted by their correlated idler measurements, interference patterns appear in the "erased" subsets and disappear in the "non-erased" subsets.
**Key fact:** The signal photons' positions are already committed before the erasure choice is made. No retrocausality is observed — the total pattern (all signal photons combined) never shows interference. Only sorted subsets do.

#### QM-4: Entanglement — Instant Correlations

**Observed:** Two particles prepared in an entangled state and separated by arbitrary distance show instantaneous correlations when measured. Measuring one particle's spin as "up" along an axis guarantees the other is "down" along that axis.
**Key fact:** Confirmed across distances up to 1,200 km (Micius satellite experiments). Correlations are instantaneous to within experimental precision.

#### QM-5: Bell Test — No Local Hidden Variables

**Observed:** Bell inequality violations (Aspect 1982, Hensen et al. 2015 loophole-free). The correlations between entangled particles are stronger than any model where each particle carries locally-determined values can produce.
**Key fact:** Rules out LOCAL hidden variables specifically. Does not rule out non-local hidden variables.

#### QM-6: No FTL Communication via Entanglement

**Observed:** Despite instant correlations, entanglement cannot transmit information faster than light. Each individual measurement yields random results; the correlation is only visible when results are compared, which requires classical communication.
**Key fact:** This is the no-communication theorem. Proven from QM axioms.

#### QM-7: Entangled Particle Through Double-Slit

**Observed:** An entangled particle sent through a double-slit shows no clean interference when examined alone. Interference patterns appear only when results are correlated with measurements on the partner particle.
**Key fact:** Demonstrated experimentally with entangled photons since the 1990s.

#### QM-8: Decoherence in Warm/Dense Environments

**Observed:** Quantum superposition is rapidly destroyed in warm, dense environments. Larger objects and higher temperatures lead to faster decoherence. Maintaining quantum coherence requires extreme isolation and low temperatures.
**Key fact:** Decoherence timescales have been measured precisely for various systems (ion traps, superconducting qubits, etc.).

#### QM-9: Superposition of Isolated Systems

**Observed:** Isolated quantum systems (single atoms, photons in vacuum, ions in traps) maintain coherence for extended periods — seconds to minutes in some experiments.
**Key fact:** The degree of isolation directly correlates with coherence time.

#### QM-10: Born Rule — P = |α|²

**Observed:** The probability of measuring a particular outcome is the squared magnitude of the corresponding amplitude in the wave function. This has been confirmed to extraordinary precision across all quantum experiments.
**Key fact:** No deviation from |α|² has ever been observed. Any framework must reproduce this exactly.

#### QM-11: Schrödinger Equation

**Observed:** The time evolution of quantum states follows iħ ∂ψ/∂t = Ĥψ. This equation has been verified to extreme precision.
**Key fact:** The equation is deterministic and linear. It describes how the wave function evolves between measurements.

#### QM-12: Pauli Exclusion Principle

**Observed:** No two identical fermions (electrons, protons, neutrons) can occupy the same quantum state simultaneously. This is why electron shells exist, why matter is solid, why neutron stars don't collapse further.
**Key fact:** Applies to fermions (half-integer spin) but not bosons (integer spin).

#### QM-13: Quantum Tunneling

**Observed:** Particles can pass through classically forbidden potential barriers. Tunneling probability decreases exponentially with barrier width and height. Responsible for radioactive alpha decay, scanning tunneling microscopy, and nuclear fusion in stars.
**Key fact:** Tunneling probability is precisely predicted by QM.

#### QM-14: Spin-½ Particles

**Observed:** Electrons, protons, and neutrons have intrinsic angular momentum (spin) of ½ℏ. Measuring spin along any axis gives only +½ℏ or -½ℏ. Spin states exhibit SU(2) symmetry — rotating 360° gives a phase flip; 720° returns to original state.
**Key fact:** Spin is not classical rotation. It is an intrinsic property with no classical analog.

#### QM-15: Uncertainty Principle

**Observed:** Conjugate variables (position/momentum, energy/time) cannot both be precisely determined simultaneously. ΔxΔp ≥ ℏ/2. This is not a measurement limitation — it is fundamental.
**Key fact:** Derived from the wave-function formalism. Conjugate variables are Fourier-transform pairs.

#### QM-16: Quantum Zeno Effect

**Observed:** Frequently measuring a quantum system inhibits its evolution. A watched pot really doesn't boil (quantum-mechanically). Confirmed experimentally.
**Key fact:** Frequent measurement = frequent strict-consumer demands = system keeps getting resolved to its current state before it can evolve.

---

### GENERAL RELATIVITY & GRAVITY

#### GR-1: Gravitational Attraction — Inverse Square Law

**Observed:** Gravitational force between two masses is F = GMm/r². Confirmed from laboratory scales (Cavendish experiment) to galactic scales.
**Key fact:** The 1/r² dependence. Must be explained, not just asserted.

#### GR-2: Gravitational Time Dilation

**Observed:** Clocks at lower gravitational potential tick slower. GPS satellites gain ~45 μs/day relative to ground clocks. Confirmed by Pound-Rebka experiment (1959), Hafele-Keating (1971), Gravity Probe A (1976), and every GPS satellite.
**Key fact:** The quantitative prediction (from Schwarzschild metric) matches observations to ~0.01%.

#### GR-3: Gravitational Lensing

**Observed:** Light bends around massive objects. First confirmed by Eddington (1919) during solar eclipse. Now routinely observed around galaxy clusters (Einstein rings, arcs).
**Key fact:** The bending angle is exactly twice the Newtonian prediction — GR gets this right, Newton doesn't.

#### GR-4: Black Hole Event Horizon

**Observed:** Inferred from X-ray binaries, M87* and Sgr A* images (Event Horizon Telescope, 2019/2022). Objects approaching the horizon appear to freeze and redshift infinitely from an outside observer's perspective.
**Key fact:** The EHT images match GR predictions quantitatively.

#### GR-5: Black Hole Singularity

**Observed:** GR predicts a singularity — infinite density, infinite curvature — at the center. Not directly observed (inside horizon). Generally believed to indicate GR's breakdown rather than physical reality.
**Key fact:** Physics equations produce infinities. This is usually interpreted as the theory reaching its limits.

#### GR-6: Hawking Radiation

**Observed:** Predicted theoretically (Hawking, 1974). Not yet directly observed from astrophysical black holes. Analog Hawking radiation observed in laboratory systems (phononic black holes).
**Key fact:** Thermal spectrum with temperature T = ℏc³/(8πGMk_B). The specific temperature formula must be explained, not just the existence of radiation.

#### GR-7: Gravitational Waves

**Observed:** Ripples in spacetime detected by LIGO (2015). From binary black hole merger GW150914. Waveform matches GR predictions to extraordinary precision.
**Key fact:** The waveform shape, amplitude, and frequency chirp all match GR. Not just "waves exist" but "waves have this exact shape."

#### GR-8: Frame Dragging

**Observed:** Confirmed by Gravity Probe B (2011). A rotating mass drags spacetime around it. Measured precession: 37.2 ± 7.2 milliarcseconds/year, consistent with GR prediction of 39.2.
**Key fact:** Quantitative, not just qualitative.

#### GR-9: Gravity Cannot Be Shielded

**Observed:** No material, configuration, or field has ever been shown to block gravitational effects. All other forces can be shielded.
**Key fact:** Every known substance is transparent to gravity.

#### GR-10: Equivalence Principle

**Observed:** All objects in a gravitational field accelerate at the same rate regardless of mass or composition. Tested to 10⁻¹⁵ precision (MICROSCOPE satellite, 2022). Locally, acceleration is indistinguishable from gravity.
**Key fact:** This is not approximate. It is exact to 15 decimal places.

#### GR-11: Geodesic Motion

**Observed:** Free-falling objects follow geodesics — the straightest possible paths through curved spacetime. Confirmed by planetary orbits, satellite trajectories, and particle accelerator experiments.

#### GR-12: Gravitational Redshift

**Observed:** Light climbing out of a gravitational well loses energy and shifts to lower frequency. Pound-Rebka experiment confirmed to 1%. Modern atomic clock experiments confirm to 10⁻⁵.

#### GR-13: Mercury's Orbital Precession

**Observed:** Mercury's orbit precesses 574"/century. Newtonian gravity accounts for 531"/century (perturbations from other planets). The remaining 43"/century is explained exactly by GR.
**Key fact:** The precise 43"/century. A quantitative test.

#### GR-14: Einstein Field Equations

**Observed:** Gμν + Λgμν = 8πGTμν/c⁴ governs all of GR. Every prediction flows from this. Any framework claiming to explain gravity must either derive this equation or derive something equivalent that reproduces all its predictions.
**Key fact:** Not an observation per se — it's the mathematical structure that produces all GR observations.

#### GR-15: Shapiro Time Delay

**Observed:** Radar signals passing near the sun are delayed by ~200 microseconds due to spacetime curvature. Confirmed by Cassini spacecraft to 0.001% precision.
**Key fact:** Quantitative prediction from GR's metric.

---

### SPECIAL RELATIVITY

#### SR-1: Velocity Time Dilation

**Observed:** Moving clocks run slow. Muons created in upper atmosphere (~15 km) reach ground despite 2.2 μs lifetime at ~0.995c. Confirmed by particle accelerator experiments to extreme precision.
**Key fact:** The Lorentz factor γ = 1/√(1-v²/c²) gives the exact dilation.

#### SR-2: Twin Paradox

**Observed:** Confirmed by Hafele-Keating experiment (1971) — atomic clocks on aircraft showed measurable time differences from ground clocks, matching SR+GR predictions.

#### SR-3: Speed of Light as Universal Maximum

**Observed:** No massive particle has ever been accelerated to c. Energy required diverges as v → c. Confirmed by every particle accelerator ever built.

#### SR-4: Photon Has Zero Rest Mass and Experiences No Proper Time

**Observed:** Photon proper time = 0 along its worldline. Photon rest mass = 0 (confirmed to < 10⁻¹⁸ eV by various experiments).

#### SR-5: Relativity of Simultaneity

**Observed:** Confirmed by every SR experiment. Foundational to GPS operation. Two events that are simultaneous in one frame are not simultaneous in another moving frame.

#### SR-6: Lorentz Symmetry

**Observed:** No preferred reference frame detected. Tested to 10⁻²¹ precision by Hughes-Drever experiments and modern variants.
**Key fact:** Extraordinary precision. Any discrete-spacetime model must explain why no violations have been seen.

#### SR-7: Mass-Energy Equivalence (E = mc²)

**Observed:** Nuclear fission, fusion, and particle-antiparticle annihilation all convert mass to energy in exact accordance with E = mc². Confirmed by nuclear weapons, nuclear reactors, PET scanners, and particle physics.
**Key fact:** The c² factor specifically. Not just "mass converts to energy" but "this exact equation."

#### SR-8: Length Contraction

**Observed:** Moving objects contract along the direction of motion by factor γ. Inferred from muon experiments and directly from heavy-ion collision physics (Lorentz-contracted nuclei).

#### SR-9: Relativistic Momentum

**Observed:** p = γmv. As v → c, momentum diverges. This is why accelerators need exponentially more energy at high speeds. Confirmed continuously at every accelerator.

---

### PARTICLE PHYSICS & STANDARD MODEL

#### PP-1: Stable Particles Exist

**Observed:** Protons (lifetime > 10³⁴ years), electrons (stable), photons (stable). These are the building blocks of ordinary matter.

#### PP-2: Unstable Particles Decay

**Observed:** Free neutrons decay in ~880 seconds. Muons in ~2.2 μs. Pions in ~26 ns. Each has a characteristic lifetime.

#### PP-3: Matter-Antimatter Annihilation

**Observed:** e⁺e⁻ → 2γ. pp̄ → energy. Total conversion of mass to energy. Confirmed at every particle accelerator.

#### PP-4: Specific Particle Masses

**Observed:** Electron: 0.511 MeV/c². Proton: 938.272 MeV/c². W boson: 80,379 MeV/c². The mass spectrum is precise and specific.
**Key fact:** WHY these particular masses? The Standard Model takes them as inputs (measured parameters), not outputs.

#### PP-5: Three Generations of Matter

**Observed:** Three and exactly three generations of quarks and leptons. (u,d), (c,s), (t,b) for quarks; (e,νₑ), (μ,νμ), (τ,ντ) for leptons.
**Key fact:** Why three? Not two, not four.

#### PP-6: Higgs Boson / Mass Generation

**Observed:** Higgs boson discovered at 125 GeV (CERN, 2012). Higgs field gives mass to W, Z bosons and fermions. Photons and gluons remain massless.
**Key fact:** The specific coupling pattern — why some particles interact with the Higgs and others don't.

#### PP-7: Strong Force (QCD)

**Observed:** Quarks bound by gluons. Color confinement — quarks cannot be isolated. Asymptotic freedom — force weakens at short distances. Described by SU(3) gauge theory.

#### PP-8: Weak Force

**Observed:** Responsible for radioactive beta decay. Mediated by W± and Z⁰ bosons. Violates parity (P) and charge-parity (CP).

#### PP-9: Electromagnetic Force (QED)

**Observed:** Described by QED — the most precisely tested theory in physics. Anomalous magnetic moment of electron predicted to 10 significant figures.

#### PP-10: Virtual Particles / Vacuum Fluctuations

**Observed:** Casimir effect (measured). Lamb shift (measured). Vacuum is not empty — virtual particle-antiparticle pairs briefly exist.

#### PP-11: Gauge Symmetries

**Observed:** The Standard Model is built on U(1) × SU(2) × SU(3) gauge symmetry. All forces arise from requiring local gauge invariance.
**Key fact:** This is the structural backbone of the Standard Model.

#### PP-12: Spin and Statistics

**Observed:** Integer-spin particles (bosons) obey Bose-Einstein statistics. Half-integer-spin particles (fermions) obey Fermi-Dirac statistics and the Pauli exclusion principle. The spin-statistics theorem connects these.

#### PP-13: CP Violation

**Observed:** The laws of physics are slightly asymmetric between matter and antimatter. Observed in kaon and B-meson systems. Believed to contribute to baryon asymmetry.

#### PP-14: Neutrino Oscillations

**Observed:** Neutrinos change flavor (type) as they travel. Implies neutrinos have nonzero mass. Confirmed by Super-Kamiokande (1998), SNO (2001).

---

### COSMOLOGY

#### COS-1: Big Bang / Hot Dense Early Universe

**Observed:** The universe began in an extremely hot, dense state ~13.8 billion years ago. Confirmed by cosmic microwave background, Big Bang nucleosynthesis, and Hubble expansion.

#### COS-2: Cosmic Expansion (Hubble's Law)

**Observed:** Galaxies recede from each other. More distant galaxies recede faster. v = H₀d. The expansion rate (Hubble constant) ≈ 70 km/s/Mpc.

#### COS-3: Cosmic Microwave Background (CMB)

**Observed:** 2.725 K thermal radiation filling all space. Tiny anisotropies (ΔT/T ~ 10⁻⁵) that match predictions from inflationary cosmology.
**Key fact:** The power spectrum of CMB anisotropies is measured to extraordinary precision by Planck satellite and matches ΛCDM model.

#### COS-4: Dark Matter

**Observed:** ~27% of universe's energy budget. Galaxy rotation curves, gravitational lensing, CMB power spectrum, large-scale structure formation all require it. Doesn't interact electromagnetically. Never directly detected as a particle.

#### COS-5: Dark Energy / Accelerating Expansion

**Observed:** ~68% of universe's energy budget. Discovered via Type Ia supernovae (1998). The expansion of the universe is accelerating. Consistent with a cosmological constant Λ.

#### COS-6: Baryon Asymmetry

**Observed:** The universe has ~1 billion photons for every baryon. Matter dominates over antimatter. The asymmetry is tiny but non-zero, and no complete explanation exists.

#### COS-7: Cosmic Inflation

**Observed:** Inferred from CMB flatness, horizon problem, and absence of monopoles. The universe underwent exponential expansion in its first ~10⁻³² seconds. Confirmed indirectly by CMB power spectrum.

#### COS-8: Large-Scale Structure

**Observed:** Galaxies form filaments, walls, and voids in a cosmic web. The pattern matches N-body simulations of gravitational collapse from CMB-era density fluctuations.

#### COS-9: Big Bang Nucleosynthesis

**Observed:** The abundance of light elements (H: ~75%, He: ~25%, trace Li, Be) matches predictions from nuclear physics in the first 3 minutes. One of the strongest confirmations of the Big Bang model.

---

### THERMODYNAMICS & STATISTICAL MECHANICS

#### TH-1: Second Law — Entropy Increases

**Observed:** In an isolated system, entropy never decreases. No exception has ever been observed at macroscopic scales.

#### TH-2: Conservation of Energy (First Law)

**Observed:** Energy is neither created nor destroyed, only transformed. Confirmed by every experiment ever conducted.

#### TH-3: Principle of Least Action

**Observed:** All classical mechanics, electromagnetism, GR, and QM can be derived from action principles. Physical systems evolve along paths that extremize the action functional.

#### TH-4: Temperature and Thermal Equilibrium

**Observed:** Systems in contact evolve toward thermal equilibrium. Temperature is a measure of average kinetic energy. Zeroth law: if A is in equilibrium with B, and B with C, then A with C.

#### TH-5: Boltzmann Distribution

**Observed:** In thermal equilibrium, the probability of a state with energy E is proportional to e^(-E/kT). Foundational to all of statistical mechanics.

#### TH-6: Phase Transitions

**Observed:** Matter changes phase (solid ↔ liquid ↔ gas) at specific temperatures and pressures. Phase transitions exhibit critical phenomena, universality classes, and symmetry breaking.

#### TH-7: Holographic Principle

**Observed/Theoretical:** Maximum entropy in a region is proportional to surface area, not volume (Bekenstein bound). Supported by black hole thermodynamics. Foundational to AdS/CFT correspondence.

---

### INFORMATION & STRUCTURE

#### INF-1: Planck Length as Minimum Scale

**Observed/Theoretical:** At ~10⁻³⁵ m, quantum gravitational effects dominate. No current experiment probes this scale, but dimensional analysis and all approaches to quantum gravity agree it is the natural minimum.

#### INF-2: Planck Time as Minimum Duration

**Observed/Theoretical:** ~10⁻⁴⁴ s. The time for light to cross one Planck length.

#### INF-3: Inertia (Newton's Second Law)

**Observed:** F = ma. Resistance to acceleration is proportional to mass. Confirmed universally from subatomic to astronomical scales.

#### INF-4: Gravity Proportional to Mass

**Observed:** Gravitational effects scale linearly with mass. Confirmed from Cavendish experiment to galactic-scale observations.

#### INF-5: Noether's Theorem

**Observed/Theoretical:** Every continuous symmetry of the action corresponds to a conserved quantity. Time translation symmetry → energy conservation. Spatial translation → momentum. Rotation → angular momentum. Gauge symmetry → charge conservation.
**Key fact:** Any framework with a Rule (A2) that has these symmetries should produce these conservation laws.

---

## OUTPUT TEMPLATE

After evaluation, produce results in this format:

```
## SCORECARD

| Category | Tests | ✅ | ⚠️ | ❌ | 🔮 |
|----------|-------|----|----|----|-----|
| Quantum Mechanics | 16 | ? | ? | ? | ? |
| General Relativity | 15 | ? | ? | ? | ? |
| Special Relativity | 9 | ? | ? | ? | ? |
| Particle Physics | 14 | ? | ? | ? | ? |
| Cosmology | 9 | ? | ? | ? | ? |
| Thermodynamics | 7 | ? | ? | ? | ? |
| Information | 5 | ? | ? | ? | ? |
| TOTAL | 75 | ? | ? | ? | ? |

## TOP 10 GAPS (sorted by severity)

1. [Gap description + what closing it requires + impact]
2. ...

## LOGICAL ISSUES (sorted by severity)

1. [Issue description + which test cases it affects + suggested resolution]
2. ...

## STRONGEST EXPLANATIONS

1. [Test case + why the framework handles it particularly well]
2. ...
```
