# GL Theory Review

## Thesis Summary

`content.md` presents GL Theory as a universe built from a directed graph of discrete events. Time is graph growth, mass is a stable self-reproducing topology, gravity emerges because dense regions take longer to "compute" their next state, and quantum measurement is a demand-driven commitment rule: pending events are only resolved when a downstream "consumer" needs them. Entanglement is then explained by shared causal ancestry rather than by faster-than-light signaling.

Used as prose, this is a coherent intuition pump. Used as physics, it is still far from a viable theory. The formal companion document, `theorem.md`, is helpful because it honestly downgrades many central claims to open problems; that honesty improves the review, but it also lowers the framework's actual standing.

## Grades

| Category | Score | Verdict |
|---|---:|---|
| Internal logical consistency | 5/10 | Coherent core metaphor, but several key mechanisms either conflict or stop at analogy. |
| Novelty | 4/10 | Mostly a recombination of existing discrete-spacetime and causal-graph ideas in software language. |
| Mapping to established physics | 3/10 | Some qualitative matches, but the framework does not reproduce the equations or statistics that modern physics actually tests. |
| Plausibility as a framework for the universe | 2/10 | Interesting conceptual scaffold; not yet plausible as a serious candidate physical theory. |
| Overall | 3/10 | Worthwhile as a speculative explanatory metaphor, not credible as a physics framework in its current form. |

## Highest-Severity Findings

### 1. The quantum core is missing, so the framework cannot presently explain quantum mechanics in the technical sense

The prose treats double-slit interference and the delayed-choice quantum eraser as the strongest evidence for the model ([content.md](./content.md):265, [content.md](./content.md):279), but the formal version admits that the framework has no derivation of complex amplitudes, no derivation of the Born rule, and no interference-combination law ([theorem.md](./theorem.md):191, [theorem.md](./theorem.md):197, [theorem.md](./theorem.md):325). That is not a peripheral issue. Quantum mechanics is not mainly "wave collapse plus weirdness"; it is a very specific amplitude calculus whose predictions are checked to extreme precision.

This matters directly for the document's flagship examples. The delayed-choice quantum eraser is already explained by standard quantum mechanics through entanglement, basis choice, and coincidence sorting; Kim et al. do not need a demand-driven graph evaluator to explain it ([Phys. Rev. Lett. 84, 1 (2000)](https://doi.org/10.1103/PhysRevLett.84.1)). The theory can narrate the experiment, but narration is not derivation.

### 2. The entanglement story does not yet escape Bell's theorem

The prose claims there is "no random" and that shared causal ancestry explains entanglement and the quantum eraser ([content.md](./content.md):273, [content.md](./content.md):307, [content.md](./content.md):331). But Bell-test experiments rule out local hidden-variable accounts, not merely naive preloaded envelopes. Loophole-free Bell tests have repeatedly confirmed that point, from Hensen et al. in 2015 to superconducting-circuit tests in 2023 ([Nature 526, 682-686 (2015)](https://doi.org/10.1038/nature15759), [Nature 617, 265-270 (2023)](https://www.nature.com/articles/s41586-023-05885-0)).

`theorem.md` effectively concedes this in O10: it does not prove that topological shared ancestry in a DAG can violate Bell inequalities without smuggling in forbidden locality assumptions ([theorem.md](./theorem.md):345). Until that is solved, the framework's entanglement account is not a successful explanation of quantum nonlocal correlations; it is a suggestive re-description.

### 3. The gravity program is still analogy, not a replacement for general relativity

The core gravity claim is that mass slows local graph growth, slower growth creates curvature, and gravity emerges from the resulting cheapest paths ([content.md](./content.md):163, [content.md](./content.md):167, [content.md](./content.md):173). That is conceptually clean, and it does line up qualitatively with the fact that clocks run differently in different gravitational potentials; GPS really does need relativistic corrections, with the gravitational contribution speeding satellite clocks by about 45 microseconds per day and the net effect being about 38 microseconds per day ([NIST](https://www.nist.gov/atomic-clocks/a-powerful-tool-for-science/putting-einstein-test)).

But the framework still does not derive Einstein's field equations, the Schwarzschild metric, the exact lensing angle, Mercury's perihelion precession, or the measured gravitational-wave waveform. The formal document explicitly admits the missing field equations, only qualitative lensing/wave derivations, and an assumed inverse-square law that depends on a hand-waved "3D-like connectivity" scaling ([theorem.md](./theorem.md):209, [theorem.md](./theorem.md):221, [theorem.md](./theorem.md):233, [theorem.md](./theorem.md):309). That is enough for a metaphor. It is not enough for a competing gravity theory.

### 4. The framework inherits the hardest problem faced by discrete-spacetime programs: recovering Lorentz invariance

The document openly borrows from causal set theory, the Wolfram project, and loop quantum gravity ([content.md](./content.md):30). That is the right family of ideas. It is also exactly the family where the hard part is not inventing a graph ontology, but recovering known relativistic symmetries from it.

Causal set theory is explicit that its fundamental structure is a discrete partially ordered set, and it treats Lorentz compatibility as central rather than optional ([Surya 2019](https://doi.org/10.1007/s41114-019-0023-1)). The Wolfram project likewise elevates causal invariance as the mechanism needed to recover relativistic covariance ([Wolfram Physics Project](https://www.wolframphysics.org/technical-introduction/the-updating-process-in-our-models/causal-invariance/), [Basic Concepts](https://www.wolframphysics.org/technical-introduction/potential-relation-to-physics/basic-concepts/)). `theorem.md` admits that GL Theory has no mechanism for this and calls it an existential threat ([theorem.md](./theorem.md):333). That admission is correct.

### 5. The framework makes very few unique predictions, and the most distinctive one is underspecified

The prose introduces "gravitational runes": residual curvature-like traces left by vanished mass distributions ([content.md](./content.md):185). This is the most distinctive claim in the prose. It is also not operationalized. There is no detection criterion, no quantitative signature, and no argument that it survives standard GR + propagating field changes in a way that is observationally separable.

The formal document scales this back even further, saying the only clear non-GR prediction currently on offer is singularity avoidance in black holes ([theorem.md](./theorem.md):329). But singularity avoidance is not unique to GL Theory; loop quantum gravity has long treated singularity control as one of its main qualitative achievements ([Rovelli 2008](https://doi.org/10.12942/lrr-2008-5)). So even the predictive distinctiveness is weak.

## Medium-Severity Internal Issues

### 1. "Nodes store nothing" sits awkwardly with commitment and immutability

The prose says node properties come entirely from position and incoming operations ([content.md](./content.md):111, [content.md](./content.md):349), while the formal axioms say nodes store no intrinsic values ([theorem.md](./theorem.md):21). But the same framework also says commitment freezes inputs and committed nodes are immutable ([content.md](./content.md):351, [theorem.md](./theorem.md):17, [theorem.md](./theorem.md):27). That may be repairable by saying the "value" is entirely relational while commitment only freezes topology. But that distinction is not yet made precisely enough to remove the tension.

### 2. Forward-only causality and backward demand propagation are in tension

The prose and axioms repeatedly frame the graph as forward-growing and causally directed ([content.md](./content.md):113, [theorem.md](./theorem.md):11). But the formal quantum-eraser mechanic says demand from the screen propagates backward through causal ancestry ([theorem.md](./theorem.md):149). That may be intended as a constraint-propagation rule rather than literal retrocausality, but it is a different mechanism than the forward-only local propagation introduced in A2 ([theorem.md](./theorem.md):13). Right now the theory switches formalisms exactly where the quantum case becomes hardest.

### 3. The framework gains honesty by formalization, but loses explanatory reach

`content.md` sounds stronger than `theorem.md`. Once formalized, several marquee claims are demoted from explanation to open problem: `E=mc^2`, complex amplitudes, Born rule, interference aggregation, Bell compatibility, and Lorentz invariance ([theorem.md](./theorem.md):71, [theorem.md](./theorem.md):191, [theorem.md](./theorem.md):197, [theorem.md](./theorem.md):321, [theorem.md](./theorem.md):345). That is good scientific hygiene. It also means the prose should not be graded as though those items are solved.

## Novelty Assessment

The framework is not empty novelty. It does contain one genuinely distinctive move: it rephrases a discrete causal ontology in software-engineering terms that are unusually intuitive. "Consumer," "lazy evaluation," "pending node," "commit," and "event cone" are clearer than much pop-science writing about measurement. That vocabulary is the strongest original contribution here.

But as physics, the underlying moves are mostly inherited:

- Discrete events plus causal order are straight out of causal set theory.
- Graph-like or network-like microstructure of spacetime overlaps heavily with loop-quantum-gravity and spin-network thinking.
- Computation, rewriting, and causal graphs as the substrate of spacetime are central to the Wolfram project.
- Singularity avoidance and emergent spacetime from nonclassical microstructure are common aims in quantum-gravity programs.

So the novelty is mainly in synthesis and explanatory language, not in a new physical mechanism that established approaches have missed.

## Mapping to Established Physics

### General relativity and gravity: qualitative only

The framework maps reasonably well onto a few broad relativistic themes:

- no preferred global "now"
- clocks run differently in different conditions
- gravity and geometry are linked
- shielding gravity is unlike shielding electromagnetism

But that is not the bar. GR wins because it gives exact equations and exact quantitative predictions. GL Theory currently does not. On this axis it is closer to an intuition pump than to a competitor to GR.

### Quantum measurement and decoherence: partial conceptual overlap

The "pending until demanded" idea does overlap with the broad thought that measurement outcomes become definite only in specific interaction contexts. Its decoherence language also points in the right direction: interaction with an environment destroys isolated coherence. That is directionally compatible with standard decoherence thinking ([Schlosshauer, Rev. Mod. Phys. 76, 1267 (2005)](https://doi.org/10.1103/RevModPhys.76.1267)).

But standard decoherence is not just "many nearby things force commitment." It is a specific entanglement process with environment-selected pointer bases. GL Theory does not yet supply that machinery.

### Entanglement and no-signaling: intuitive but incomplete

The shared-ancestor picture gives a clean story for why separated outcomes can be correlated without messages being sent in real time. It also correctly respects the observed fact that useful communication still requires ordinary classical comparison. Long-distance entanglement experiments, including satellite-based distribution over 1200 km, reinforce that the correlations persist over great distances but do not enable simple faster-than-light messaging ([Science 356, 1140-1144 (2017)](https://pubmed.ncbi.nlm.nih.gov/28619937/)).

The problem is that Bell's theorem is precisely about why "shared past cause" stories are not enough in their usual local form. GL Theory has not closed that gap.

### Double slit and quantum eraser: readable explanation, not strong evidence

This is the best-written part of the document. It gives a reader-friendly story for why coincidence-sorted subsets in the quantum eraser can show interference while the full screen pattern does not. But standard quantum theory already explains that. The experiment is not special evidence for GL Theory over standard QM; at best, it is an experiment that GL Theory aspires to narrate in familiar language.

## Bottom-Line Verdict

GL Theory is best described as an interesting conceptual scaffold, not as a credible physical framework yet.

What it does well:

- It gives a memorable, unified picture.
- It borrows from serious families of ideas rather than from pure pseudoscientific free association.
- It is unusually honest, once formalized, about the difference between intuition and derivation.

What keeps it from being plausible:

- No amplitudes or Born rule.
- No Bell-safe entanglement mechanism.
- No Einstein equations or quantitative GR recovery.
- No recovery of Lorentz invariance from a discrete substrate.
- No precise unique prediction program.

If this framework were to be taken materially more seriously, the next steps would have to be:

1. Derive an amplitude algebra and the Born rule from the stated axioms.
2. Show explicitly how the model reproduces Bell-violating, no-signaling correlations without hidden-variable backsliding.
3. Recover the Newtonian and Schwarzschild limits quantitatively from the graph rules.
4. Prove or demonstrate how Lorentz invariance emerges from the discrete structure.
5. Turn "gravitational runes" or another differentiating idea into a quantitative, falsifiable observable.

Until then, the right grade is: strong speculative essay, weak physics framework.

## Sources

- [content.md](./content.md)
- [theorem.md](./theorem.md)
- [tests.md](./tests.md)
- Sumati Surya, ["The causal set approach to quantum gravity"](https://doi.org/10.1007/s41114-019-0023-1), *Living Reviews in Relativity* 22, 5 (2019)
- Carlo Rovelli, ["Loop Quantum Gravity"](https://doi.org/10.12942/lrr-2008-5), *Living Reviews in Relativity* 11, 5 (2008)
- Wolfram Physics Project, ["Basic Concepts"](https://www.wolframphysics.org/technical-introduction/potential-relation-to-physics/basic-concepts/) and ["Causal Invariance"](https://www.wolframphysics.org/technical-introduction/the-updating-process-in-our-models/causal-invariance/)
- Y.-H. Kim et al., ["Delayed 'Choice' Quantum Eraser"](https://doi.org/10.1103/PhysRevLett.84.1), *Physical Review Letters* 84, 1 (2000)
- B. Hensen et al., ["Loophole-free Bell inequality violation using electron spins separated by 1.3 kilometres"](https://doi.org/10.1038/nature15759), *Nature* 526, 682-686 (2015)
- J. Yin et al., ["Satellite-based entanglement distribution over 1200 kilometers"](https://pubmed.ncbi.nlm.nih.gov/28619937/), *Science* 356, 1140-1144 (2017)
- [NIST, "Putting Einstein to the Test"](https://www.nist.gov/atomic-clocks/a-powerful-tool-for-science/putting-einstein-test)
- David Mattingly, ["Modern Tests of Lorentz Invariance"](https://doi.org/10.12942/lrr-2005-5), *Living Reviews in Relativity* 8, 5 (2005)
- V. A. Kostelecky and N. Russell, ["Data tables for Lorentz and CPT violation"](https://doi.org/10.1103/RevModPhys.83.11), *Reviews of Modern Physics* 83, 11 (2011)
- Maximilian Schlosshauer, ["Decoherence, the measurement problem, and interpretations of quantum mechanics"](https://doi.org/10.1103/RevModPhys.76.1267), *Reviews of Modern Physics* 76, 1267 (2005)
