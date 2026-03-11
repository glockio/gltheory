// Title: GL Theory
// Subtitle: Greg's Computational Guide to the Universe
// Byline: MARCH 2026 · PLAIN ENGLISH EDITION

---

## FRONT MATTER

@callout-neutral
@verbatim
It is a curious thing to have a passion for a subject you can't quite
grasp. I would imagine this is all that is really needed for the seeds
of AI psychosis to truly take hold.

What follows is something of a "hobby" of mine. On the
surface might seem odd, to "ponder the world" as a hobby. But, I'd
argue it's actually a well-known fact that the best way to spend ANY
amount of time on ANY amount of drugs is to sit back and go
**"YO BUT what IF LIKE…"**

Most of what follows is aided with AI, but this is more or
less the result of my "pondering"/ranting about for the last 8 or 9 years. So while the words
are AI assisted, I assure you the delusions are entirely my own.

I have not figured out the exact number yet, but I imagine the odds of
someone being committed rise significantly the moment they start
uttering the words "I have a theory of the universe".

So to try and get ahead of whoever it was that plotted to get Kanye,
I'd like to spell out what this actually is.

This is my best guess on how it could all work. Do I think it's right?
I'd say the odds are as close to zero as something can be. However, if
this somehow has any iota of a concept that inspires a thought in
someone more capable, even if born out of pure opposition, then I'd
consider that a win.

Most of what I describe below is things about our known universe that
absolutely fascinate (scare the living fuck out of me). And I thought
having it on the World Wide Web makes it easier for me to send as
advance briefing for any family function or dinner party I should be
expected to attend.

In a world where AI and and do almost everything I wanted one section
that was just me.

Cheers,
A Very Serious Person
@/verbatim
@/callout

@callout-gold
This is very much a work in progress. As we've started out on this journey — this exercise of reflection — what has started to take shape is fairly similar to [Wolfram's project](https://www.wolframphysics.org/). So if this piques your interest, take a look for what is more likely to be the actual correct interpretation of what I'm trying to say. I myself have not read the work, but Mr. GPT tells me it's similar in concept.
@/callout

---

## THE HOOK

@hook
Before we get into anything — before graphs, before physics, before any of it — I need to tell you something uncomfortable.

**You are Mario.**

Now there are worse things than life as an Italian 2D plumber — we'll get to that in a minute.

Not metaphorically. Your reality is taking place on a screen. There is an engine underneath computing your world, and you have no direct access to it.
@/hook

// Two tight paragraphs. First: two-layer systems are everywhere (monitor/computer). Second: this isn't "reality is a simulation" — it's a specific architecture.

That sounds crazy until you realize you deal with two-layer systems every day. Your monitor shows letters, your computer stores ones and zeros. Two layers: engine (processor) and the output (monitor). We're claiming reality works the same way — what you experience takes place on a screen, but the real reality of it is in the engine. So while I said you were a 2D Italian plumber, I am actually saying you are the _graphical_ representation of a 2D Italian plumber. See, it always can get worse.

This isn't just "reality is a simulation" — that's like saying "there's something going on." We're proposing a specific architecture and then showing it actually explains things:

- Why can't you shield gravity?
- Why does the universe "know" what you'll measure?
- Why do equations work backwards in time?

These are genuine unsolved mysteries and they all have the same answer.

@callout-blue
**The Engine Layer** — where computation happens. The actual structure of reality. Think: the Nintendo console.

**The Render Layer** — what you experience. Your "reality." The output. Think: the TV screen.
@/callout

@fig:two-layers-of-reality
Two layers. The engine computes the graph. The screen shows the output — Mario's world. Mario can't see the engine. He only sees the output. Sound familiar?

// Bridge to graphs — NOT a standalone section. 2-3 sentences folded into hook flow.

We suspect the engine layer is a **graph** — dots connected by lines. A recipe is a graph. A family tree is a graph. You already know graphs.

@fig:you-already-know-what-a-graph-is
These are all graphs. Dots connected by lines. That's the whole idea. We call the dots "nodes" and the connections between them "edges" — but lines and dots. And the lines/edges can have values too, so for the family tree example the line would show "mom" on the relationship between you and your mother.

Now I suspect our universe graph is slightly more complicated than the family tree. So here are the basic rules we will add:

**1. Values are lazy loaded.** That means unless someone asks "hey you, what's your name/value?" then don't even think about it, just do nothing.

**2. No values are stored within the nodes themselves** — all values are derived from the topology of the graph. Yikes... umm... imagine someone asks you for the time. You actually don't know the time; in fact the time depends on where in the world you are, so you need to check your phone, which uses GPS to check some satellite that nerds everywhere maintain to keep everyone in sync. The point is "what time is it" depends on where you are, and you don't know the answer yourself — you always need to check with the star nerds.

That's it. Not so bad. So to recap we have sh*t-eating dogs, nerds in the sky with time, and a base rule of don't speak unless spoken to. Now let's go create the fucking universe...

---

## The Demo: What Happens When You Evaluate One

// THE CENTREPIECE OF THE SETUP. Reframed from "primes from topology" to "watch what emerges from the simplest possible recursive evaluation." Pseudocode + visual walkthrough does the heavy lifting, not prose.

Okay, we left off with: you are a graph. "That don't impress me much," you say (in the best Shania Twain voice). But wait, it gets better.

So your — _our_ — reality is actually off by one. What do I mean by that? I mean what happens is the graph does its little graphy calculations, we get the result, and then paint that to the screen. While you're sitting happy on the screen, the graph starts running its little calculations again, over and over. Where the input for the next calculation is the output of the previous one.

We have a nice little name for this in comp sci — we call it a **recursive function**. There is a proper way to describe this, but the easiest way to get the concept is if you have ever owned a dog. And you feed it... wait a bit... let the dog's stomach do dog stomach things... then take it on a walk and for some unknown reason it tries to eat its own sh*t... and the cycle repeats. Well, that is your dog running a recursive function. A recursive function is something that eats its own "output"... again and again... and the universe, my friend, seems to LOVE eating its own graph.

Now that dogs helped explain what this is, let's look at one in code for you nerds:

@code
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
@/code

That's the whole engine. It's not much, but it's ours. So as much as I'd love for it to be that simple, I am going to say that the universe's graph has some special properties that are _slightly_ different from your family tree. Let's run it on a simple graph and watch what happens.

@fig:graph-evaluation-walkthrough
One recursive function. No physics. No special rules. Just: evaluate the graph. And look what fell out.

### Did You Notice?

**Change** — each node's state changed when it committed. From that node's perspective, time just passed. No change = no time.

**Evaluation order** — leaves first, root last. Can't evaluate a parent before its children. That's causal ordering.

**Stack depth** — deeper subgraphs build taller call stacks, take longer to unwind. That's the gravity mechanism.

**Lazy evaluation** — if nothing demands a node's result, it stays unevaluated. That's quantum superposition.

**The off-by-one** — you only ever read the last committed result. The current evaluation is invisible. That's the speed-of-information limit.

The important thing isn't this specific graph. It's that **all of these properties emerged from nothing more than recursive evaluation.** No special rules. No physics. Just: evaluate the graph. The properties ARE the evaluation.

// Qualitative caveat — manage expectations before going further.

A caveat before we go further: we don't know the exact operations on the edges. We're not claiming to have the specific rules that generate electrons or gravity constants. What we're showing is that the **structure** of recursive graph evaluation — regardless of the specific operations — produces emergent properties that map onto physics. The shape of the argument matters more than the specific numbers.

@technical-card: Recursive Evaluation Rule
**Axiom A2** states the entire engine: a single recursive function evaluates the graph. Leaves return the identity (base case). Non-leaf nodes aggregate their children's committed values via edge operations. The output of pass W(n) feeds pass W(n+1) (Axiom A5). Combined with lazy evaluation (A3) and no stored values (A4), this produces all emergent properties observed above: time (D1), causal ordering (D2), stack depth (D8), superposition (D16), and the information limit.
@/technical-card

### The Proof of Concept: Primes From Topology

One more thing — and this matters. Watch what happens when a node's base value depends on its depth in the graph.

Take a graph of depth 2 — one parent, one child. The child is a leaf, returns 1. The parent multiplies: result is 1. Depth 2 gives you the first value in the sequence.

Depth 3: the parent has a child at depth 2 (which already returned its result) and a leaf. Multiply up: 2. That's prime.

Depth 4: the subgraph at depth 2 already returned its result. The parent at depth 4 just gets 2 × 1 = 2. Not a new prime — it's composite. It factors into the structure below it.

Depth 5: a new topology that can't be factored into smaller subgraphs. Result: 3. The next prime.

See the pattern? Depths that introduce genuinely new topological structure produce primes. Depths that are just combinations of existing sub-structures produce composites. The primes aren't stored. They aren't computed by a formula. They emerge from which depths create irreducible topologies.

@fig:evaluating-a-graph-step-by-step
Primes emerge from topology. Depths with irreducible structure produce primes. Composite depths just re-combine existing sub-structures. No values stored anywhere.

The node stores nothing. The structure IS the value. If topology generates primes, and primes generate all numbers, then topology alone generates all of arithmetic. This is the proof of concept — everything else builds on it.

@insight
A recursive graph evaluation — with no stored values and no special rules — produces emergent properties that map directly onto physics: time (change), causality (evaluation order), gravity (stack depth), quantum mechanics (lazy evaluation), and the speed of information (off-by-one). None of these were designed in. They fell out of the recursive evaluation. The properties ARE the evaluation.
@/insight

---

### You Already Use This Model

// Promoted from callout to regular subsection. Topological ordering is essential context, not optional engineer-only material.

We already build systems that evaluate graphs. Spreadsheets, React, CPU caches — different teams, different decades, different purposes. They all independently converged on the same model: **topological ordering**. If two nodes have no dependency between them, they can evaluate in any order. If one depends on the other, it must wait.

A spreadsheet is a graph. Change cell A1 and it walks the dependency graph forward, recomputing only what depends on A1, in order. B1 and C1 can update in parallel — no dependency between them. D1 waits for both.

@fig:spreadsheet-is-a-graph
Change A1 and the update cascades forward through the dependency graph. B1 and C1 can update in parallel — no dependency between them. D1 waits for both. That's topological ordering.

Two key consequences fall out of topological ordering. First: no preferred traversal order = no preferred frame = **special relativity for free**. Two observers on independent branches genuinely have no shared "now" — not because of a physical law, but because there's no ordering constraint between them.

Second: **C = leaf commit rate.** The speed of light has nothing to do with light. A leaf node — nothing to recurse into — commits instantly. That rate is C. Everything else is slower because it has subgraph work to do first. A photon is a leaf. That's why it travels at C.

@technical-card: Core Axioms
**A1 (Graph Structure):** Reality is a directed graph G = (N, E). Edges carry operations. **A3 (Lazy Evaluation):** No node evaluates until a consumer demands its result. **A4 (No Stored Values):** All values derived from topology alone — the structure IS the value. These three axioms, combined with recursive evaluation (A2), produce the emergent properties demonstrated in the demo.
@/technical-card

@technical-card: Topological Ordering
**D2 (Causal Ordering):** Children evaluate before parents — the partial order imposed by the graph's dependency structure. **D3 (Special Relativity):** Causally independent nodes have no ordering constraint → no preferred frame → no preferred "now." **D4 (Speed of Light):** A leaf node commits at maximum rate C — no subgraph to wait for. All non-leaf evaluations are slower.
@/technical-card

---

## What the Framework Explains

// Merged chapters. Mystery blocks only for gravity and quantum (the big reveals).

### Mass & Energy

// ~350 words. Stable topology = mass. Disruption = energy. E=mc² from bidirectional walk. Antimatter = mirror graph.

A massive object is a region of the graph whose topology is **stable** — edges don't change, same walk produces the same result every time. That's mass. A rock on a table isn't running a computation. It's a region of the graph that keeps evaluating to the same thing because no new inputs are arriving. Stability. Topology that holds.

When that stability breaks — enough energy to rewire the edges — the evaluation produces a different result. The delta propagates outward through the graph. That outward propagation IS the released energy.

@fig:mass-is-stable-topology
Mass is a stable subgraph — same walk, same result. Energy is the delta that propagates when the topology changes.

**E = mc²:** look at the pseudocode from the demo. Recursive evaluation has two phases and it can't avoid them. The _call_ phase walks down — the root calls its children, which call their children, all the way to the leaves. That's m hops at rate C. Then the _return_ phase walks back up — each child returns its result to its parent, all the way to the root. Another m hops at rate C. Every recursive evaluation does both. You can't have one without the other — you go down to get the answer, you come back up to deliver it. m × C × C = mc². The c² isn't magic — it's the two unavoidable phases of recursion.

Antimatter is a mirror graph; when it meets its original, they cancel completely, and the full evaluation propagates outward as energy.

@fig:the-bidirectional-walk
The walk down to leaves and the walk back up are both at rate C. Same rate, two independent directions. That's c² — not a magic constant, a topological fact.

@technical-card: Mass, Energy, and E=mc²
**D5 (Mass):** A stable subgraph topology — same walk, same result. Topological persistence. **D6 (Energy):** The delta that propagates when stable topology is disrupted. **D7 (E=mc²):** The bidirectional walk — call phase descends m hops at rate C, return phase ascends m hops at rate C. Total: m × C² = mc². The c² factor is the two unavoidable phases of recursion. **D23 (Antimatter):** Mirror (conjugate) graph topology. Contact with original = complete cancellation → full energy release.
@/technical-card

---

### Gravity

@mystery
Gravity is weird. A suspicious kind of weird. Three clues:

**1.** You can shield every other force — EM, strong, weak. Nobody has ever shielded gravity.

**2.** Einstein's equivalence principle: no experiment can distinguish gravity from acceleration. Why would a "force" be indistinguishable from acceleration?

**3.** Physicists hunted the graviton for decades. Never found one. Maybe gravity isn't a force at all.
@/mystery

// This is the centrepiece. ~800 words. Call stack → pyramid → invert → routing pressure. All three mysteries dissolved. Keep "can't shield gravity" at full strength.

When the engine evaluates a deep subgraph, it builds a **call stack** — a list of things waiting for answers. Think of a stack of plates: you can't get to the bottom one until you take off every plate above it. Each plate is a question waiting for the question below it to be answered first. Everything on the stack is waiting. The stack depth equals the subgraph depth. Deep subgraph = tall stack = everything nearby waits longer.

Now plot call stack depth across a region of the graph. What shape do you get?

@fig:call-stack-pyramid
Plot call stack depth across the graph and you get a mountain. Tallest where mass is. Height 1 at the leaves — those are your photons, traveling at C.

Now flip that pyramid upside down. The tall bars become deep wells. Drape a spacetime fabric grid over it. You're looking at exactly what spacetime curvature looks like in every physics textbook.

@fig:invert-pyramid-spacetime
Flip the pyramid and drape a fabric over it. That's the spacetime diagram from your physics textbook. The call stack topology is spacetime curvature.

The deep call stack doesn't just slow things down — the system actively routes around it. Paths through mass are expensive. Paths around it are cheaper. Everything follows the cheapest path. The cheapest path curves. That curve IS gravity.

@fig:routing-pressure
Deep call stacks create routing pressure. Cheapest paths bend around the pressure zone. That bend is gravity.

Now dissolve the three mysteries:

**Why you can't shield gravity.** Every other force transmits via a signal through edges — photons carry EM, gluons carry the strong force. Block the edge, block the signal. But gravity isn't a signal. It's the call stack depth of your own evaluation. Your shield shares the same stack. There is no layer in your reality that can reach into the engine and change stack depth. You are Mario. You cannot reach into the console.

**Why gravity equals acceleration.** Both add depth to your local call stack. Same effect. Same mechanism. That's why Einstein couldn't tell them apart — they're the same thing.

**Why there's no graviton.** "What particle carries gravity?" is like asking "What particle carries network congestion?" It's a system property. Not a thing that travels.

@physics-card: Black Holes
A black hole is a subgraph so deep that evaluation never completes. The call stack builds without unwinding. Unlike General Relativity's prediction of a singularity — infinite density — there's nothing infinite here. The subgraph is finite. The stack is deep but finite. The computation just never finishes. Stack exhaustion, not mathematical breakdown.
@/physics-card

@technical-card: Gravity as Routing Pressure
**D8 (Call Stack Depth):** Evaluating a deep subgraph builds a call stack — each parent waits for its children. Stack depth = subgraph depth. **D9 (Gravity):** Deep stacks make paths expensive → system routes around → cheapest paths curve. That curve is gravity. **D10 (Spacetime Curvature):** Inverted call stack profile = spacetime curvature. **D11 (Can't Shield):** Gravity is stack depth, not a signal through edges — no edge to block. **D12 (Equivalence Principle):** Gravity and acceleration both add stack depth. Same mechanism. **D26 (Black Holes):** Non-terminating evaluation. Finite subgraph, infinite loop — stack exhaustion, not singularity.
@/technical-card

@insight
Gravity is not a force. It is call stack pressure created by a deep subgraph. Plot the stack depth: a pyramid. Flip it: Einstein's spacetime curvature. The routing table updates, paths curve toward mass. You can't block it because the stack is part of your own evaluation. There is no signal to block. The topology is not optional.
@/insight

---

### Space & Time

// Space section folded into Time. Brief space opening (~50 words), then time is the main content (~300 words).

Space isn't a box things happen inside. It's the graph's shape — the large-scale pattern of connections. Distance is hop count. The minimum distance is one hop — one node. That's the Planck length: one pixel.

What would it look like if time stopped? Nothing changes. No node evaluates to a new state. Nothing commits. Time IS the amount of change in your local region. Each time a node commits a new result, that's one tick of local time — not because the graph is counting, but because change happened. Near mass, the call stack is deeper, commits are slower, less change happens. That IS time dilation.

GPS satellites orbit where the stack depth is lower — less mass nearby, shallower call stacks, faster commits, faster clocks. The difference is about 45 microseconds per day. Without correction, GPS would drift roughly 10 kilometres per day. Your phone depends on this being real.

**The arrow of time:** remember Fibonacci? 1, 1, 2, 3, 5, 8, 13... Each number needs the previous two. The engine works the same way. Each walk's committed results become the input to the next walk. Walk 5 needs Walk 4's output. The dependency runs one direction.

That dependency chain IS the arrow. The equations work backwards because they describe the committed results — the photographs. A photograph has no arrow. You can run a film forward or backward. The arrow lives in the computation that produced the frames. Not in the output. In the engine.

Moving fast eats commits too — position edges being rewired costs evaluation steps, leaving fewer for internal state changes. At C, zero internal revisions. Zero elapsed time. That's why a photon experiences no time.

@physics-card: The Muon
Cosmic ray muons should decay 660m above Earth. They reach the ground. At 99.5% of C, almost all evaluation steps go to motion. Their revision counter barely moves. Confirmed experimentally.
@/physics-card

@technical-card: Time and Space
**D1 (Time):** Change. Each commit = one tick. No change = no time. **D13 (Gravitational Time Dilation):** Near mass → deeper stack → slower commits → fewer ticks. **D14 (Velocity Time Dilation):** Fast motion consumes evaluation steps → fewer internal revisions. At C, zero elapsed time. **D15 (Arrow of Time):** Each pass's output feeds the next. Dependency chain runs one direction. Cannot un-commit. **D24 (Space):** Large-scale graph connectivity. Distance = hop count. Planck length = 1 hop = 1 node.
@/technical-card

@insight
Space is the graph's shape. Distance is hop count. Time is change. No change, no time. Near mass: deeper stack, slower commits, less change, less elapsed time. The arrow of time is a dependency chain — each walk's output feeds the next. The equations work backwards because they describe photographs, not the computation. The computation runs one direction. No undo.
@/insight

---

## The Quantum World

@mystery
Double-slit: fire particles one at a time at two slits. An interference pattern appears — as if each particle went through both. Add a detector at one slit: pattern vanishes. Looking at it changed the result.

Quantum eraser: run the experiment WITH a detector. After the particle hits the screen and its dot is already recorded, erase the detector's which-path info. Sort the results. The interference pattern comes BACK. The dot is already on the screen. How can erasing information after the fact change a result that's already been recorded?
@/mystery

Remember the demo — if nothing demands a node's result, it stays unevaluated. Being "somewhere" means having committed position edges to specific neighbors. Not having a definite position — pending edges to multiple neighbors — is superposition. A particle in flight with no **strict consumer** — anything that demands a definite answer right now, like a detector, a screen, your eyeball — stays pending. Both paths through both slits: pending. Neither committed.

@fig:pending-vs-committed
Superposition is pending evaluation. Collapse is when a consumer demands a result. One path commits.

**The double-slit in four steps:** (1) No consumer — both paths pending. (2) Engine evaluates all pending paths without committing. (3) Pending paths overlap at the screen — bright bands where they align, dark where they cancel. (4) Screen's 10²⁶ atoms force commitment — one dot. Over thousands of particles: the interference bands fill in.

**A detector ruins it** because it demands "which slit?" — forces one path to commit. Only one path to the screen. No overlap. No pattern.

### Why the Quantum Eraser Isn't Time Travel

The eraser is **upstream in the dependency chain**. When the screen demands the particle's position, that demand cascades backwards through the dependency graph. The eraser node sits in that path. The cascade reads whatever state the eraser is in at the moment the pull arrives.

Eraser OFF: the cascade hits "which-path erased." Both paths still pending. Interference emerges.

Eraser ON: the cascade hits "which-path recorded." One path commits. Interference destroyed.

There is no "after the fact." The path evaluation was still in flight through the dependency chain. The eraser's state at the time of the pull determines the outcome. It's like editing a spreadsheet formula before pressing Enter — the formula's state at cascade-time is what counts.

**Why basketballs don't do this:** 10²⁶ atoms, every one a strict consumer demanding definite inputs. No pending evaluations survive. That's decoherence.

@technical-card: Superposition and Collapse
**D16 (Superposition):** No strict consumer → node stays unevaluated → pending edges to multiple states. **D17 (Collapse):** Consumer demands result → one path commits → definite outcome. **D18 (Decoherence):** ~10²⁶ atoms each acting as strict consumers → no pending evaluations survive in warm/dense environments. **D19 (Double-Slit):** No consumer at slits → both paths pending → interference at screen. **D20 (Quantum Eraser):** Eraser is upstream in dependency chain. Its state at cascade-time determines outcome. No retrocausality — evaluation was in flight.
@/technical-card

@insight
Quantum mechanics is lazy evaluation. Small, isolated things: no consumers, pending paths survive, interference. Large things: consumers everywhere, everything commits instantly. The quantum eraser isn't time travel — the eraser is upstream in the dependency chain. Its state at the moment of the cascade determines the outcome. Not backward in time — upstream in the dependency graph.
@/insight

@physics-card: Why Probability Is Amplitude Squared
The prime demo uses trees (no cycles). Values stay real. Everything is deterministic. That's the baseline.

Now add a **cycle** to the graph — a node that depends on itself. Topological ordering breaks. You can't evaluate it top-down because the node needs its own result before it can produce one.

Self-consistency forces a constraint: the value must equal the result of its own operation applied to itself. For many operations, the only solutions are **roots of unity** — complex numbers that return to 1 when raised to some power. Complex numbers don't get bolted on as a special rule. They emerge because cycles demand self-consistent solutions, and self-consistent solutions in a multiplicative graph are roots of unity.

Once you have complex values, paths through the graph carry complex amplitudes. Multiple paths to the same node accumulate — some reinforce, some cancel. That's **interference**. Not mysterious wave behavior. Bookkeeping on a graph with cycles.

The bidirectional walk (down to leaves, back up to root) means the final result involves α times its conjugate: α × α* = |α|². Probability from structure.

**Caveat:** This is exploratory. We haven't derived the Born rule from first principles. But it's interesting that cycles in a graph — which must exist in any non-trivial universe (feedback, self-reference, closed causal loops) — naturally produce exactly the mathematical structure quantum mechanics uses: complex amplitudes, interference, and squared-modulus probability.
@/physics-card

---

## Everything Else That Falls Out

// Very brief. Entanglement: 2 paragraphs. Expansion: 2 paragraphs. No figures.

### Entanglement

When two particles interact, their value subgraphs merge — they share a node. Position can change — they can move to opposite ends of the universe. But the shared node doesn't care about position. When either particle is evaluated, the shared node commits. Both read the same result. No signal travels — the correlation was in the topology all along.

Why not faster-than-light communication? The results are correlated but random. Neither observer learns anything useful until they compare notes at C. It's like two people opening envelopes from a pre-shuffled deck — the results are correlated by the deck, but neither person's opening tells the other anything until they call each other.

### Expansion

The engine evaluates the graph. Some evaluations return values that add new nodes and edges. More graph = more evaluations = more new nodes. Growth proportional to size = accelerating expansion. No dark energy needed — the graph computes itself into existence.

---

## Honest Gaps

A framework that claims to explain everything without identifying where it breaks is a story, not a theory. These gaps are real and hard.

@gap-box
@gap: Can't derive Einstein's exact equations from graph structure.
The number one problem. The qualitative match is strong but we haven't derived Gμν + Λgμν = 8πG/c⁴ Tμν from first principles. Without the derivation, this is a compelling analogy, not a formal theory.

@gap: Can't prove the computation is confluent.
We claim the committed result is independent of traversal order. But we haven't formally proven the graph has a unique fixed point for all orderings. If different orderings produce different states, the framework predicts violations of Lorentz symmetry that aren't observed.

@gap: Can't explain specific particles.
Electrons, quarks, neutrinos have specific masses and charges. "Particles are stable topologies" doesn't tell us which ones exist or why.

@gap: Can't prove the Born rule.
We explain that measurement produces a committed result. We don't explain why probabilities follow amplitude squared. (The Born Rule physics card above shows that cycles in graphs naturally produce the right mathematical ingredients — complex amplitudes and |α|² — but this observation is exploratory, not a derivation.)

@gap: Can't explain the hierarchy problem.
Gravity is approximately 10³⁶ times weaker than electromagnetism. Why would stack depth produce such an enormous ratio? No answer.

@gap: No unique experimental prediction — with one exception.
The framework predicts **no singularity** at the center of black holes. Standard GR predicts infinite density. This framework predicts stack exhaustion — finite depth, non-terminating computation, but nothing infinite. If quantum gravity observations become possible, this could be testable.
@/gap-box

These are genuine obstacles. Any one of them could be fatal to the whole picture. That's fine. That's how this works. You lay out what you think, you lay out where it breaks, and you hope someone smarter can get further than you did.

---

## Quick Reference

@table
| Physics Concept | In This Framework | Computer Analogy |
|---|---|---|
| Space | Large-scale graph shape. Connectivity pattern. | Network topology. Hop count = distance. |
| Mass | Stable subgraph topology. Same walk, same result. | Deterministic function, same output for unchanged input. |
| Energy | Return value that propagates outward when topology changes. | Function output feeding next function call. |
| E = mc² | Bidirectional walk: m hops down at C, m hops up at C. mc². | Recursive call cost: down m levels × up m levels at same rate. |
| Time | Change. Each commit is one tick of local time. No change = no time. | State change counter. No state change = no tick. |
| Arrow of time | Each walk's output feeds the next. Fibonacci dependency. Cannot un-commit. | Program execution order. Can't un-run code. |
| Time dilation | Deep stack or fast motion → slower commits → revision counter ticks less. | Deep recursion or I/O consuming cycles → lower throughput. |
| Speed of light (C) | Commit rate of a leaf node. No subgraph. Maximum rate. | Base case return time. Immediate, no recursion. |
| Gravity | Deep call stack creating routing pressure. Paths curve. | Deep recursive call; OS routes work around it. |
| Can't shield gravity | Stack is part of your own evaluation. Not a signal — a topology. | Can't avoid being on the same call stack. |
| Equivalence principle | Acceleration and gravity both add call stack depth. Same mechanism. | CPU load from motion vs. deep calls: same throughput impact. |
| Spacetime | The routing table — edge weights, cheapest paths. Updated by stack pressure. | Network routing table, updated on congestion. |
| Black hole | Subgraph so deep the stack never unwinds. No singularity — stack exhaustion. | Non-terminating recursion. Finite code, infinite loop. |
| Wave function | Pending evaluation. Multiple possible states, nothing committed. | Lazy thunk. Defined, not forced. |
| Collapse | Strict consumer demands a result. Pending evaluation commits. | Forcing a lazy thunk. |
| Quantum eraser | Eraser is upstream in dependency chain. Pull cascades through its state. | Editing spreadsheet formula before Enter. |
| Entanglement | Shared value subgraph node. Co-resolves when either is evaluated. | Shared pointer. Same data regardless of location. |
| Special relativity | No preferred traversal order → no preferred frame. | Same output regardless of evaluation order. |
| Expansion | Evaluations add new nodes. Growth proportional to size = acceleration. | Self-modifying code. Evaluation extends codebase. |
| Planck length | One hop. One node. One pixel. | Minimum addressable unit. |
@/table

---

// FOOTER
// GL Theory: Greg's Computational Guide to the Universe
// March 2026 · Plain English Edition
// Framework developed by Greg.
// "The delusions are my own."
