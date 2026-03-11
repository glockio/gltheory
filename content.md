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
This is very much a work in progress. As we've started out on this journey — this exercise of reflection — what has started to take shape is fairly similar to [Wolfram's project](https://www.wolframphysics.org/), [loop quantum gravity](https://en.wikipedia.org/wiki/Loop_quantum_gravity), and [causal set theory](https://en.wikipedia.org/wiki/Causal_sets). The idea that spacetime might be discrete isn't new — a lot of very smart people have been working on it for decades. What I think is different here is the specific claim: that reality is a graph with two operations (reads and writes), and that everything we observe is the committed output of a recursive evaluation we never see. If this piques your interest, take a look at those projects for what is more likely to be the actual correct interpretation of what I'm trying to say.

@/callout

@callout-blue
**The Proposal**

Everything that follows builds on one idea: reality is a graph that evaluates itself.

Five rules. That's it.

1. **It's a graph.** Dots connected by lines. The lines carry operations.
2. **One function evaluates it.** Recursive. Leaves first, then up.
3. **Nothing computes until asked.** No reader? No result. It just sits there.
4. **No stored values.** Every value comes from the shape of the connections. Structure is the data.
5. **Each pass feeds the next.** The output of one evaluation becomes the input of the next.

The punchline: you only ever see the committed result. Never the computation. The engine is invisible. Everything in this document — gravity, time, quantum mechanics — is what this graph looks like from the render side.
@/callout

---

## Chapter 1: You Are Mario

// ~500 words. Compressed hook. Two layers. Mystery questions (promises). Graph basics. Three rules. Recursive functions. Pure momentum — no cards.

@hook
Before we get into anything — before graphs, before physics, how nerds run computers in the sky. I want to drive a point home.

**You are Mario.** Not metaphorically. Your reality is taking place on a screen. There is an engine underneath computing your world, and you have no direct access to it. Now there are worse things than life as an Italian 2D plumber — we'll get to that in a minute. But stay with me for a second.

@/hook

This might sound crazy, maybe confusing? But you deal with two-layer systems every day. Your monitor shows letters, your computer stores ones and zeros. Two layers: engine (processor) and the output (monitor). We're — well I'm — claiming reality works the same way. What you experience takes place on a screen, but the real action is in the engine underneath. YOU and your reality are stored on that engine. And more specifically, the universe seems to be stored as a graph.

So I lied. You are not a 2D Italian plumber, you are the _graphical_ representation of a 2D Italian plumber. See, it always can get worse.

Saying "it's all a simulation" is not actually that new or novel. But what I want to add is a bit more on how I think the specifics of the architecture might look. And I want to show _why_ this type of architecture would actually explain things. Things like:

- Why can't you shield gravity?
- What is gravity? Why can't you tell the difference between gravity and acceleration?
- Why can't anything travel faster than the speed of light?
- Why does time slow down near a black hole?
- Why does the universe "know" what you'll measure?
- Why do equations for physics work backwards in time?
- Is time travel possible?
- Is there any age at which a man can know for sure he won't ever bald?

These are genuine unsolved mysteries and in my version of what's going on, they all have the same answer. Well except the last one, that is an open question I'm asking for a friend.

@callout-blue
**The Engine Layer** — where computation happens. The actual structure of reality. Think: the Nintendo console.

**The Render Layer** — what you experience. Your "reality." The output. Think: the TV screen.
@/callout

@fig:two-layers-of-reality
Two layers. The engine computes the graph. The screen shows the output — Mario's world. Mario can't see the engine. He only sees the output. Sound familiar?

Okay so real quick — a **graph** is dots connected by lines. A recipe is a graph. A family tree is a graph. That's it.

@fig:you-already-know-what-a-graph-is
These are all graphs. Dots connected by lines. That's the whole idea. We call the dots "nodes" and the connections between them "edges" — but lines and dots.

Now our universe graph needs a few rules:

**1. Lazy loaded.** Unless someone asks "hey, what's your value?" — do nothing.

**2. No stored values** — all values come from how the graph is connected. Imagine someone asks you the time. You don't actually know — you check your phone, which checks a satellite, which checks an atomic clock. The time depends on where you are in the graph. You always need to check.

**3. Edges are operations** — the lines connecting dots can be instructions. Like: (3) --- × --- (3) = 9.

One more thing: **recursive functions.** You know when you feed your dog and then an hour later he tries to eat his own sh\*t? That is a recursive function. It's a function (in this case your dog) which eats its own "output"... again and again.

In our case we eat the graph, do math, get a result, then eat that result. Again and again. Each time we eat the graph we update the screen with what the graph says. This is how video games work — the engine does math, then updates the screen. Mario never sees half a screen. He always sees a complete image. From Mario's perspective you can hit pause, walk away, get lunch, and resume — and no time would have passed at all for him.

That's it. Sh\*t-eating dogs, nerds in the sky with time, and a base rule of don't speak unless spoken to. Now let's go make some graphic content and create the fucking universe...

---

## Chapter 2: Run It

// ~800 words. Pseudocode. Conversational walkthrough (time, C, E=mc², mass). Primes compressed. Technical card. NO "You Already Use This Model" — that moves to Chapter 3.

Here is a basic example of what an engine might look like.

@code
function evaluate(node):
if node has no children:
return 1 // leaf — base case

    result = identity
    for each child of node:
        child_value = evaluate(child)   // recurse
        result = result × child_value   // apply edge operation

    node.revision += 1                  // tick the counter
    node.committed = result             // lock in the result
    return result

@/code

@fig:graph-evaluation-walkthrough
One recursive function. No physics. No special rules. Just: evaluate the graph. And look what fell out.

So what just happened? The engine walked the graph. Leaves committed first — they had nothing to wait for. Parents waited for their children, then committed. Each node's revision counter ticked. The screen updated. That's one frame of reality.

Now let me show you what fell out of that — because it's kind of insane.

**Time.** See that revision counter? That's time. Not metaphorical time — actual time. Every commit is one tick. Two commits = two moments passed. No commits = no time passes. Think about it: what would it look like if time stopped? Nothing would change. No node evaluates. Nothing commits. That's literally what "time stopped" means — zero change. Time isn't a river you float on. It's the amount of change happening in your local region.

And here's the thing about engine time: the engine could take a billion years between frames for all we know. Mario doesn't notice. Hit pause, walk away, get lunch, come back — zero time passed for Mario. You only ever experience the update. Never the computation.

**The speed limit.** Every parent reads its children's LAST COMMITTED value — not the value they're currently computing. You're always one step behind. The current evaluation is invisible. That's the speed limit. A leaf node — nothing to recurse into — commits instantly. That rate is C. The speed of light. Everything else is slower because it has subgraph work to do first. A photon is a leaf. That's why nothing travels faster than light — you can't commit faster than a node with zero work to do.

**E=mc².** Look at the pseudocode again. Recursive evaluation has two legs it can't skip. The _call_ phase walks DOWN the graph — root to leaves. That's m hops at rate C. Then the _return_ phase walks back UP — leaves to root, delivering results. Another m hops at rate C. Down at C, up at C. m × C × C = mc². The dimensional structure of recursion mirrors E=mc² — two unavoidable phases, each at the maximum rate. We haven't derived the physical value of c² (9×10¹⁶ m²/s²) from this, but the structural pattern is suggestive.

**Mass.** A region of the graph whose topology doesn't change. Same walk, same result, every time. A rock on a table keeps committing the same value because no new inputs are arriving. Stability. When that stability breaks — enough energy to rewire the edges — the delta propagates outward. That's released energy.

And one more: **lazy evaluation.** If nothing demands a node's result, it stays unevaluated. It doesn't need to commit. It can sit there with multiple possible states, pending, until someone asks. That's quantum superposition — and we'll come back to it.

No physics. No special rules. Just: evaluate the graph. And we got something that looks like time (revision counter), a speed limit (off-by-one), a structural mirror of E=mc² (two-leg recursion), mass (stable topology), and lazy evaluation (nodes that nobody asked for stay unevaluated). All from one function.

// Qualitative caveat — manage expectations before going further.

A caveat before we go further: we don't know the exact operations on the edges. We're not claiming to have the specific rules that generate electrons or gravity constants. What we're showing is that the **structure** of recursive graph evaluation — regardless of the specific operations — produces emergent properties that map onto physics. The shape of the argument matters more than the specific numbers.

@technical-card: Recursive Evaluation Rule
**Axiom A2** states the entire engine: a single recursive function evaluates the graph. Leaves return the identity (base case). Non-leaf nodes aggregate their children's committed values via edge operations. The output of pass W(n) feeds pass W(n+1) (Axiom A5). Combined with lazy evaluation (A3) and no stored values (A4), this produces all emergent properties observed above: time (D1), causal ordering (D2), stack depth (D8), superposition (D16), and the information limit.
@/technical-card

### The Proof of Concept: Primes From Topology

Watch what happens when a node's value depends on its depth. Depth 2: leaf returns 1. Depth 3: new irreducible structure → 2 (prime). Depth 4: just recombines depth 2 → composite. Depth 5: another irreducible structure → 3 (prime).

@fig:evaluating-a-graph-step-by-step
Primes emerge from topology. Depths with irreducible structure produce primes. Composite depths just re-combine existing sub-structures. No values stored anywhere.

The node stores nothing. The structure IS the value. This is illustrative, not a proof — but it shows that pure structure, with no stored values, can generate non-trivial mathematical objects. If topology can produce primes, the "no stored values" axiom isn't as crazy as it sounds.

@insight
One recursive function — no physics, no special rules — and we got structures that look like time, a speed limit, E=mc², mass, and quantum superposition. None of these were designed in. They fell out of the evaluation. The engine walked the graph, and something that looks a lot like physics showed up uninvited.
@/insight

Five properties. No physics. No special rules. Just: evaluate the graph. But here's the thing — we're not the first people to build systems like this.

---

## Chapter 3: "Wait. This IS Spacetime."

// THE REVEAL. ~600 words. The document's structural pivot. "You Already Use This Model" → subgraph stacks → image sequence → THE PUNCH → THE RANT.

### You Already Use This Model

// Moved from Demo. Bridges everyday experience to the spacetime revelation.

We already build systems that evaluate graphs. Spreadsheets, React, CPU caches — different teams, different decades, different purposes. They all independently converged on the same model: **topological ordering**. If two nodes have no dependency between them, they can evaluate in any order. If one depends on the other, it must wait.

A spreadsheet is a graph. Change cell A1 and it walks the dependency graph forward, recomputing only what depends on A1, in order. B1 and C1 can update in parallel — no dependency between them. D1 waits for both.

@fig:spreadsheet-is-a-graph
Change A1 and the update cascades forward through the dependency graph. B1 and C1 can update in parallel — no dependency between them. D1 waits for both. That's topological ordering.

Two key consequences fall out of topological ordering. First: no preferred traversal order = no preferred frame = **special relativity for free**. Two observers on independent branches genuinely have no shared "now" — not because of a physical law, but because there's no ordering constraint between them.

### Subgraphs Have Stacks

Now here's where it gets interesting. When the engine evaluates a deep subgraph, it builds a **call stack** — a list of things waiting for answers. Think of a stack of plates: you can't get to the bottom one until you take off every plate above it. Deeper subgraphs = taller call stacks = more pressure on the system.

Plot call stack depth across a region of the graph. What shape do you get?

@fig:call-stack-pyramid
Plot call stack depth across the graph and you get a mountain. Tallest where mass is. Height 1 at the leaves — those are your photons, traveling at C.

Now flip that pyramid upside down. The tall bars become deep wells. Drape a spacetime fabric grid over it.

@fig:invert-pyramid-spacetime
Flip the pyramid and drape a fabric over it. That's the spacetime diagram from your physics textbook. The call stack topology is spacetime curvature.

You're looking at the diagram from every physics textbook ever printed.

@fig:spacetime-is-a-routing-table
Same thing. Different notation. 110 years of research. Our map.

**This IS spacetime.**

Around here I realized something that took me embarrassingly long to see. This graph I'd been staring at — physicists already had a name for it. They call it spacetime. They've been studying it for 110 years. They call it a "fabric." They draw diagrams of it curving. But here's the question that never gets answered: what IS the fabric? What is the thing that curves? I'm saying it's a graph. And if I'm right — or even close — then 110 years of general relativity research just became our instruction manual. Reverse engineering might be cheating in the physics world, but in my world it's a mark of the trade.

@technical-card: Core Axioms
**A1 (Graph Structure):** Reality is a directed graph G = (N, E). Edges carry operations. **A3 (Lazy Evaluation):** No node evaluates until a consumer demands its result. **A4 (No Stored Values):** All values derived from topology alone — the structure IS the value. These three axioms, combined with recursive evaluation (A2), produce the emergent properties demonstrated in the demo.
@/technical-card

@technical-card: Topological Ordering
**D2 (Causal Ordering):** Children evaluate before parents — the partial order imposed by the graph's dependency structure. **D3 (Special Relativity):** Causally independent nodes have no ordering constraint → no preferred frame → no preferred "now." **D4 (Speed of Light):** A leaf node commits at maximum rate C — no subgraph to wait for. All non-leaf evaluations are slower.
@/technical-card

@insight
The call stack of a recursive graph evaluation IS spacetime. The topology of stack depth IS spacetime curvature. Nobody ever said what spacetime IS — what the fabric is, what the thing that curves is. It's a graph. And 110 years of general relativity just became our instruction manual.
@/insight

So IF this is right — what would GR tell us about our graph? It would tell us this is a 3D graph. It would tell us mass curves the routing table. It would tell us paths follow cheapest routes. It would tell us the speed of information has a hard cap. We didn't invent any of this — we're using 110 years of research as a map. But we ARE adding a few rules of our own: lazy evaluation, topology-as-value, and no stored state. The next two sections reverse-engineer what the graph MUST look like to produce the physics we observe. Where the mapping is structural and exact, we'll say so. Where it's suggestive, we'll say that too.

---

## PART 2: General Relativity, Translated

// Each GR phenomenon is reverse-engineering: "If reality IS a graph, what would it HAVE to look like to produce the physics we observe?" Frame claims as "would produce" / "suggests" / "mirrors" rather than "IS" / "explains."

### Mass & Energy

// ~350 words. Stable topology = mass. Disruption = energy. E=mc² from bidirectional walk. Antimatter = mirror graph.

A massive object is a region of the graph whose topology is **stable** — edges don't change, same walk produces the same result every time. That's mass. A rock on a table IS part of the evaluation — but its topology hasn't changed, so it commits the same result every time. No change = same committed value = that's what mass is. Topology that holds.

When that stability breaks — enough energy to rewire the edges — the evaluation produces a different result. The delta propagates outward through the graph. That outward propagation IS the released energy.

@fig:mass-is-stable-topology
Mass is a stable subgraph — same walk, same result. Energy is the delta that propagates when the topology changes.

**E = mc²:** remember the two-leg walk from the demo? The _call_ phase walks down — root to leaves. That's m hops at rate C. The _return_ phase walks back up — leaves to root, delivering results. Another m hops at rate C. You can't have one without the other — you go down to get the answer, you come back up to deliver it. m × C × C = mc². The dimensional structure mirrors E=mc² — two unavoidable phases, each at the maximum rate. This doesn't derive the specific physical value of c², but the structural pattern is hard to ignore.

Antimatter is a mirror graph; when it meets its original, they cancel completely, and the full evaluation propagates outward as energy.

@fig:the-bidirectional-walk
The walk down to leaves and the walk back up are both at rate C. Same rate, two independent directions. The dimensional structure mirrors c² — two unavoidable phases at the same rate.

@technical-card: Mass, Energy, and E=mc²
**D5 (Mass):** A stable subgraph topology — same walk, same result. Topological persistence. **D6 (Energy):** The delta that propagates when stable topology is disrupted. **D7 (E=mc²):** The bidirectional walk — call phase descends m hops at rate C, return phase ascends m hops at rate C. Total: m × C² = mc². The dimensional structure mirrors the c² factor — two unavoidable phases of recursion. **D23 (Antimatter):** Mirror (conjugate) graph topology. Contact with original = complete cancellation → full energy release.
@/technical-card

---

### Gravity

// Significantly compressed — the pyramid/inversion already happened in The Reveal. What remains: mystery, routing pressure, three mystery dissolutions, black holes, dark matter card.

@mystery
Gravity is weird. A suspicious kind of weird. Three clues:

**1.** You can shield every other force — EM, strong, weak. Nobody has ever shielded gravity.

**2.** Einstein's equivalence principle: no experiment can distinguish gravity from acceleration. Why would a "force" be indistinguishable from acceleration?

**3.** Physicists hunted the graviton for decades. Never found one. Maybe gravity isn't a force at all.
@/mystery

You already saw it — the call stack pyramid, the inversion, the spacetime curvature. Now let's look at what the routing pressure actually does.

The deep call stack doesn't just slow things down — the system actively routes around it. Paths through mass are expensive. Paths around it are cheaper. Everything follows the cheapest path. The cheapest path curves. That curve would produce gravity-like behavior — objects following curved paths toward mass, exactly as observed.

@fig:routing-pressure
Deep call stacks create routing pressure. Cheapest paths bend around the pressure zone. That bend produces gravity-like behavior.

Now look at the three mysteries through this lens:

**Why you can't shield gravity.** Every other force transmits via a signal through edges — photons carry EM, gluons carry the strong force. Block the edge, block the signal. IF gravity is stack depth, it isn't a signal — it's the call stack depth of your own evaluation. Your shield shares the same stack. There is no layer in your reality that can reach into the engine and change stack depth. You are Mario. You cannot reach into the console.

**Why gravity equals acceleration.** IF gravity is stack depth, then acceleration adds the same thing — depth to your local call stack. Same effect. Same mechanism. That's why Einstein couldn't tell them apart — in this model, they're the same thing.

**Why there's no graviton.** IF gravity is a system property rather than a force, then "What particle carries gravity?" is like asking "What particle carries network congestion?" It's not a thing that travels.

@physics-card: Black Holes
A black hole is a subgraph so deep that evaluation never completes. The call stack builds without unwinding. Unlike General Relativity's prediction of a singularity — infinite density — there's nothing infinite here. The subgraph is finite. The stack is deep but finite. The computation just never finishes. Stack exhaustion, not mathematical breakdown.
@/physics-card

@physics-card: Dark Matter
Here's a candidate mechanism: pure cycles in the graph — nodes that depend on themselves. When the engine tries to evaluate a cycle, it detects "already visiting this node" and returns PENDING. The cycle can't resolve. But the call stack was already built on the way in. Stack depth is real. Routing pressure is real. So the cycle would gravitate — it has mass from the stack depth — but no value ever commits. No signal leaves. No electromagnetic interaction. No committed state to collide with. Collisionless, invisible, gravitates but doesn't interact with light. This is suggestive, but let's be honest about what it doesn't do: it generates zero predictions. No particle mass. No relic abundance. No self-interaction cross-section. It restates dark matter's observed properties in graph language — which is a starting point, not an explanation.
@/physics-card

@technical-card: Gravity as Routing Pressure
**D8 (Call Stack Depth):** Evaluating a deep subgraph builds a call stack — each parent waits for its children. Stack depth = subgraph depth. **D9 (Gravity):** Deep stacks make paths expensive → system routes around → cheapest paths curve → gravity-like behavior. **D10 (Spacetime Curvature):** Inverted call stack profile mirrors spacetime curvature. **D11 (Can't Shield):** If gravity is stack depth, it's not a signal through edges — no edge to block. **D12 (Equivalence Principle):** Gravity and acceleration both add stack depth — same mechanism in this model.
@/technical-card

@insight
If gravity is stack depth rather than a force, three mysteries dissolve at once: you can't shield it (the stack is part of your own evaluation), you can't tell it from acceleration (both add stack depth), and there's no graviton (it's a system property, not a particle). Plot the stack depth: a pyramid. Flip it: something that looks exactly like Einstein's spacetime curvature. This is suggestive, not proven — but the structural match is hard to dismiss.
@/insight

---

### Time, Space & the Speed of Light

// ~500 words. Callbacks to Ch2 basics, then consequences: dilation, arrow of time, expansion.

We already know time is the revision counter and C is the leaf commit rate. Now watch what happens near mass — and what happens to the graph as a whole.

Space isn't a box things happen inside. It's the graph's shape — the large-scale pattern of connections. Distance is hop count. The minimum distance is one hop — one node. That's the Planck length: one pixel.

@fig:time-is-revision-rate
Time is the revision counter. Each commit is one tick. Near mass: deeper stack, slower commits, fewer ticks. That's time dilation.

Near mass, the call stack is deeper, commits are slower, less change happens. That's the graph version of time dilation. GPS satellites orbit where the stack depth is lower — less mass nearby, shallower call stacks, faster commits, faster clocks. The difference is about 45 microseconds per day. Without correction, GPS would drift roughly 10 kilometres per day. Your phone depends on this being real.

**The arrow of time:** remember Fibonacci? 1, 1, 2, 3, 5, 8, 13... Each number needs the previous two. The engine works the same way. Each walk's committed results become the input to the next walk. Walk 5 needs Walk 4's output. The dependency runs one direction.

That dependency chain IS the arrow. The equations work backwards because they describe the committed results — the photographs. A photograph has no arrow. You can run a film forward or backward. The arrow lives in the computation that produced the frames. Not in the output. In the engine.

Moving fast eats commits too — position edges being rewired costs evaluation steps, leaving fewer for internal state changes. At C, zero internal revisions. Zero elapsed time. That's why a photon experiences no time.

@physics-card: The Muon
Cosmic ray muons should decay 660m above Earth. They reach the ground. At 99.5% of C, almost all evaluation steps go to motion. Their revision counter barely moves. Confirmed experimentally.
@/physics-card

**Why is the universe expanding?** Think of your family tree. It can grow — two people create a new person. You never ask "what is my family tree expanding into?" — growth is just a valid operation on a graph. Same here. The engine evaluates the graph. Some evaluations produce new nodes and edges. More graph = more evaluations = more new nodes. Growth proportional to size = accelerating expansion. The graph growing itself would produce expansion-like behavior, though we can't derive the specific rate — so this is a structural possibility, not a replacement for dark energy.

@fig:the-graph-grows-itself
The graph grows itself. Evaluations add nodes. More nodes = more evaluations = more new nodes. Growth proportional to size = accelerating expansion.

@technical-card: Time and Space
**D1 (Time):** Change. Each commit = one tick. No change = no time. **D13 (Gravitational Time Dilation):** Near mass → deeper stack → slower commits → fewer ticks. **D14 (Velocity Time Dilation):** Fast motion consumes evaluation steps → fewer internal revisions. At C, zero elapsed time. **D15 (Arrow of Time):** Each pass's output feeds the next. Dependency chain runs one direction. Cannot un-commit. **D24 (Space):** Large-scale graph connectivity. Distance = hop count. Planck length = 1 hop = 1 node. **D25 (Expansion):** Evaluations add nodes. Growth proportional to size = accelerating expansion.
@/technical-card

@insight
Space is the graph's shape. Distance is hop count. Time is change — near mass, deeper stacks mean slower commits and less elapsed time. The arrow points one direction because each walk feeds the next. And the universe expands because evaluation grows the graph — like a family tree, it doesn't expand "into" anything. It just grows.
@/insight

That's the large-scale picture. The structural matches are suggestive — some tighter than others. But Einstein only described the large-scale structure. What about the small-scale weirdness?

---

## PART 3: Quantum Mechanics, Translated

// New structure: Mystery → Idle Node (superposition) → Measurement/Heisenberg → Entanglement (centerpiece) → Double-Slit → Eraser/Delayed Choice → Cards & Insight

@mystery
Three things that shouldn't be possible:

**1.** Looking at something changes it. Not bumping it, not touching it — looking. The act of measurement alters the result.

**2.** Two particles, separated by the width of the universe, give correlated answers the instant either is measured. No signal between them. Instantaneous.

**3.** A particle hits a screen. The dot is recorded. AFTER that, you erase some information about the experiment. The interference pattern comes back — in data that was already collected. Erasing information after the fact changed a result that already happened.

These are real. Every one confirmed experimentally, repeatedly, for decades. Standard physics says shut up and calculate. Let's do better.
@/mystery

### The Idle Node

Remember lazy evaluation from the demo? No consumer = no evaluation. Now zoom in. Picture a small subgraph — four or five nodes connected by edges. It's sitting in a quiet corner of the graph. No path connects it to any consumer. No detector. No screen. No eyeball. Just nodes, floating there. Idle.

@fig:idle-subgraph
An isolated subgraph. No consumer connected. All edges pending. All nodes uncommitted. The surrounding committed graph (green) doesn't reach it. This is superposition.

What would it mean for one of those nodes to "be somewhere"? Being somewhere means having committed position edges to specific neighbors. Definite position = definite edges. But this subgraph has no consumer demanding answers. So it hasn't committed. It has pending edges to MULTIPLE positions. Not because physics is weird — because nobody asked.

THIS is superposition. Not a particle magically in two places at once. A graph with no reader. An idle subgraph with uncommitted edges. There is nothing mysterious about it. It's the same thing as a spreadsheet cell whose formula hasn't recalculated yet because nothing downstream needs the result.

Now connect a consumer. A detector. A screen. Something that demands: "What is your value?" That demand cascades into the idle subgraph. The nodes MUST commit. One path is chosen. The others disappear. That's collapse. Not a mystical transition — a lazy thunk being forced.

@fig:consumer-forces-cascade
LEFT: the idle subgraph from before — all pending, no consumer. RIGHT: a detector connects. The demand cascades in. One path commits (green, solid). The rest fade. That's measurement.

Small, isolated things — no consumers nearby — stay pending. Both paths alive. That's why quantum effects appear at tiny scales. Large things — 10²⁶ atoms, every one a **strict consumer** (anything that demands a definite answer right now: a detector, a screen, your eyeball) demanding definite inputs from its neighbors — everything commits instantly. No pending evaluations survive the crowd. That's decoherence.

---

### Why You Can't Just Look

Measurement means inserting a consumer into the graph. Simple enough. But here's the catch: connecting a consumer CHANGES THE TOPOLOGY. You've added edges. You've altered the dependency structure. The graph before measurement and the graph after measurement are different graphs.

You cannot observe without participating. Not because of some mystical observer effect — because inserting a node into a dependency graph changes the dependency graph. That's not philosophy. That's data structures.

@fig:measurement-changes-topology
LEFT: idle subgraph with pending position edges (purple, dotted) and pending momentum structure (orange, dotted). MIDDLE: position detector connects — position edges commit (green), momentum edges disrupted (red). RIGHT: you can't demand both without one demand disrupting the other.

This is Heisenberg's uncertainty principle. Position and momentum are both derived from graph topology. Position is about WHICH edges connect WHERE. Momentum is about HOW the topology is changing over time — edge rewiring rates. Measuring position requires a consumer that demands position edges. That consumer's presence rewires the topology — which is exactly the thing momentum depends on. You can't demand both because demanding one structurally alters what the other depends on.

Not an instrument limitation. Not "we need better equipment." A topological constraint. You can't read a variable and its rate of change from a single snapshot of a graph that your measurement just rewired.

---

### Entanglement

// THE CENTERPIECE. ~450 words. Three figures. This is the section Greg wants to shine.

When two particles interact — collide, get created together, exchange energy — their value subgraphs merge. They end up sharing a node. Think of two spreadsheet cells that both reference the same formula cell. Change the formula, both cells update. That's not magic. That's a shared dependency.

@fig:entanglement-forms
LEFT — BEFORE: particles A and B with separate, independent value subgraphs. RIGHT — AFTER INTERACTION: their value subgraphs have merged into a single shared node (SH). Both A and B point to SH. Interaction merges value subgraphs. Correlation is structural.

Now the particles separate. They fly to opposite ends of the universe. Position edges rewire — A is HERE, B is THERE, enormous distance between them. But here's the thing: value edges and position edges are **different parts of the graph**. The shared value node doesn't move. It doesn't care about position. It's still shared. Still pending. Nobody asked for its value yet.

@fig:entangled-separated
A on the far left, B on the far right. Long dashed gray position path between them (many hops — enormous distance). But both A and B have direct value edges going to the shared node SH (center-bottom). Position edges: gray, dashed — rewired when particles move. Value edges: orange, solid — unchanged by movement. SH is still purple/pending. Nobody asked.

Someone measures particle A. A detector connects. The demand cascades: detector → A → shared node SH. SH must commit. It produces result R. Done.

Now someone measures particle B. Could be a millisecond later. Could be a year. Could be simultaneously. The demand cascades: detector → B → shared node SH. But SH already committed. It already chose R. B reads R. Same result. Correlated.

@fig:entanglement-cascade
The full cascade. (1) Detector connects to A. (2) Green cascade: detector → A → SH. SH commits, shows "R". (3) Detector connects to B. (4) Orange cascade: detector → B → SH (already committed). B reads R. No signal between A and B. SH committed once. Both read the same answer.

No signal traveled between A and B. Nothing moved faster than light. The correlation was baked into the topology the moment they interacted. It was sitting there, waiting for someone to ask. The first measurement didn't CAUSE the second result. Both results were caused by the shared node — which committed once, for both.

Why can't you use this for faster-than-light communication? Because the results are correlated but individually random. When A measures, it gets R — but R is random. A can't choose R. B gets R too — but without knowing A's result, it just looks random. Comparing notes still requires a classical signal at speed C. It's like two people opening sealed envelopes from the same pre-shuffled deck — the cards match, but neither person controls which card they got, and they can't learn anything useful until they call each other.

---

### The Double-Slit

@mystery
Fire particles one at a time at two slits. An interference pattern appears — as if each particle went through both. Add a detector at one slit: the pattern vanishes. Looking at it changed the result.
@/mystery

You already know everything you need for this one.

**Step 1:** No consumer at the slits. Both paths through slit A and slit B are pending. The particle's path is an idle subgraph — nobody asked which slit.

**Step 2:** The engine evaluates all pending paths without committing. Both paths are alive in the dependency chain.

**Step 3:** Pending paths overlap at the screen — bright bands where they align, dark bands where they cancel. Interference.

**Step 4:** The screen's 10²⁶ atoms force commitment. One dot. Over thousands of particles, the interference bands fill in.

@fig:double-slit-as-graph
The double-slit experiment as a dependency graph. Pending edges (purple, dotted) show both paths alive. The detector node, when present, forces commitment — killing the interference.

**A detector ruins it** because it's a consumer. It demands "which slit?" — forces one path to commit. Only one path reaches the screen. No overlap. No interference. You didn't disturb the particle. You changed the graph.

---

### The Quantum Eraser & Delayed Choice

This is the payoff. Let me spell out why the quantum eraser is so strange — because "strange" doesn't do it justice.

You run the double-slit with a detector. The detector records which-path info. No interference — just like we'd expect. Particles hit the screen one at a time. Dots recorded. Data collected. Done.

Now — AFTER the dots are already on the screen — you erase the which-path information. You sort the data by whether the which-path info was erased or kept. In the "erased" subset: the interference pattern is BACK. In the "kept" subset: no interference. The dots were already recorded. How can erasing information after the fact change a pattern that's already there?

Here's how: the eraser is **upstream in the dependency chain.**

@fig:eraser-cascade-path
Full dependency chain: SOURCE → SLIT A / SLIT B → SCREEN. An IDLER branch from one slit path leads to the ERASER node. The cascade from SCREEN traces backward through the graph and hits the ERASER. Two outcomes — TOP: eraser says "erased" → both paths still pending → interference. BOTTOM: eraser says "recorded" → one path committed → no interference. The cascade reads the eraser's state at pull-time.

When the screen demands the particle's position, that demand cascades backward through the dependency graph. The eraser node sits in that chain. The cascade reads whatever state the eraser is in at the moment the cascade reaches it. Not when the eraser was set. When the cascade arrives.

Eraser says "erased" → which-path info gone → both paths still pending → interference.

Eraser says "recorded" → which-path info locked → one path committed → no interference.

"After the fact" is an illusion. The cascade was in flight through the dependency chain. The eraser's state at cascade-time is what matters. No time travel. No retrocausality. A dependency graph being read in dependency order.

**Delayed choice** is the same mechanism pushed further. Wheeler's thought experiment: choose whether to insert a detector AFTER the particle has already passed the slits. Seems like the particle must retroactively decide its own past. But the choice node is upstream in the dependency graph. The cascade reads its state at pull-time, not at wall-clock-time. "Retrocausality" is confusing wall-clock time with graph evaluation order. In the dependency graph, there is no "before" and "after" — there is only upstream and downstream.

**Why basketballs don't do this:** 10²⁶ atoms, every one a strict consumer demanding definite inputs. No pending evaluations survive. That's decoherence.

@technical-card: Superposition and Collapse
**D16 (Superposition):** No strict consumer → node stays unevaluated → pending edges to multiple states. **D17 (Collapse):** Consumer demands result → one path commits → definite outcome. **D18 (Decoherence):** ~10²⁶ atoms each acting as strict consumers → no pending evaluations survive in warm/dense environments. **D19 (Double-Slit):** No consumer at slits → both paths pending → interference at screen. **D20 (Quantum Eraser):** Eraser is upstream in dependency chain. Its state at cascade-time determines outcome. No retrocausality — evaluation was in flight. **D26 (Heisenberg):** Measuring one property rewires the topology the other depends on. Topological constraint, not instrument limitation.
@/technical-card

@technical-card: Entanglement Mechanics
**D21 (Entanglement):** Interaction merges value subgraphs into a shared node. Correlation is structural — baked into topology at interaction time. **D22 (No FTL):** Results are correlated but individually random. Comparing notes requires classical communication at C. Bell's theorem: the correlations are stronger than any local hidden variable model allows — because the shared node ISN'T a hidden variable. It's a real topological feature of the graph that both particles share. The correlation isn't pre-determined — it's co-determined at commit-time.
@/technical-card

@physics-card: Why Probability Is Amplitude Squared (Speculative)
**Caveat up front:** this card is the most speculative thing in the document. We haven't derived the Born rule. What follows is a structural observation — "look, the shapes rhyme" — not a proof.

The prime demo uses trees (no cycles). Values stay real. Everything is deterministic. Now add a **cycle** — a node that depends on itself. Topological ordering breaks. You can't evaluate it top-down because the node needs its own result before it can produce one.

Self-consistency forces a constraint: the value must equal the result of its own operation applied to itself. For many operations, the solutions are **roots of unity** — complex numbers that return to 1 when raised to some power. So cycles in a graph can produce complex-valued solutions. That's interesting, because quantum mechanics runs on complex amplitudes.

Once you have complex values, paths through the graph carry complex amplitudes. Multiple paths to the same node accumulate — some reinforce, some cancel. That's **interference**.

The bidirectional walk (down to leaves, back up to root) means the final result involves α times its conjugate: α × α\* = |α|².

Here's the honesty: this argument has a circularity problem. We're observing that a graph with cycles _can produce_ the mathematical structures QM uses — but we haven't shown it _must_, and we haven't derived which cycles, which operations, or why the specific structure of quantum mechanics emerges rather than some other self-consistent system. The mathematical ingredients (complex numbers, interference, |α|²) appear in the graph formalism, but appearing is not the same as being derived.
@/physics-card

@insight
Quantum mechanics is what a graph looks like when nobody's reading it. Idle subgraphs sit with all paths pending — that's superposition. Connecting a consumer forces commitment — that's collapse. Measurement changes the topology it's trying to read — that's Heisenberg. Two particles that interacted share a node that commits once for both — that's entanglement. And the quantum eraser? The eraser sits upstream in the dependency chain. The cascade reads its state at pull-time, not at wall-clock time. No time travel. No spookiness. Just a graph being evaluated in dependency order.
@/insight

---

## What's Actually Novel Here

The idea that spacetime might be discrete isn't new. Loop quantum gravity, causal sets, causal dynamical triangulations, Wolfram's hypergraph rewriting — a lot of serious people have been here before. So what, if anything, does this framework add?

Four things, specifically:

**1. Read/write separation.** No other discrete spacetime framework separates operations into reads (evaluations that build call stacks) and writes (commits that update the graph). This separation is what produces the off-by-one that gives you a speed limit without bolting one on.

**2. The off-by-one.** You only ever see committed results — never the computation in progress. The engine layer is structurally unobservable. This isn't a philosophical claim. It's a consequence of how recursive evaluation works: parents read their children's LAST committed value, not the current one.

**3. The entanglement mechanism.** Shared topology that co-resolves. Value edges and position edges are different parts of the graph. Particles separate spatially while remaining topologically connected. This is a specific, testable-in-principle mechanism — not just "they're correlated."

**4. The ontological claim.** Most discrete spacetime theories say spacetime "can be modeled as" a discrete structure. This framework says spacetime IS a graph — specifically, a directed graph with operations on edges, evaluated by a single recursive function. That's a stronger claim, and it's falsifiable: if the structure of spacetime can't be decomposed into read/write operations on a graph, the framework is wrong.

None of these are proven. But they are specific. And specificity is what separates "what if reality is discrete" from something you can actually try to break.

---

## Honest Gaps

A framework that claims to explain everything without identifying where it breaks is a story, not a theory. These gaps are real and hard.

@gap-box
@gap: Can't derive Einstein's exact equations from graph structure.
The number one problem. The qualitative match is strong but we haven't derived Gμν + Λgμν = 8πG/c⁴ Tμν from first principles. Without the derivation, this is a compelling analogy, not a formal theory.

@gap: Can't prove the computation is confluent.
We claim the committed result is independent of traversal order. But we haven't formally proven the graph has a unique fixed point for all orderings. If different orderings produce different states, the framework predicts violations of Lorentz symmetry that aren't observed.

@gap: Can't explain specific particles.
Electrons, quarks, neutrinos have specific masses and charges. "Particles are stable topologies" doesn't tell us which ones exist or why. The naive mapping from graph cycles (Z_n symmetry) to particle physics gauge groups (SU(n)) doesn't work — the mathematical structures are fundamentally different. This gap is bigger than it looks.

@gap: Can't prove the Born rule.
We explain that measurement produces a committed result. We don't explain why probabilities follow amplitude squared. (The Born Rule physics card above shows that cycles in graphs naturally produce the right mathematical ingredients — complex amplitudes and |α|² — but this observation is exploratory, not a derivation.)

@gap: Can't explain the hierarchy problem.
Gravity is approximately 10³⁶ times weaker than electromagnetism. Why would stack depth produce such an enormous ratio? No answer.

@gap: No unique experimental prediction — with one exception.
The framework predicts **no singularity** at the center of black holes. Standard GR predicts infinite density. This framework predicts stack exhaustion — finite depth, non-terminating computation, but nothing infinite. If quantum gravity observations become possible, this could be testable.

@gap: Lorentz invariance on a discrete structure.
Any discrete spacetime must explain why Lorentz symmetry holds to the precision we've measured — roughly 10⁻²⁰ times tighter than a naive lattice would produce. A discrete graph should break continuous symmetry at small scales. We have no mechanism for how a graph recovers exact Lorentz invariance. This may be the single biggest existential threat to any discrete spacetime theory, including this one.

@gap: Analogy vs. derivation.
This framework reasons by structural analogy, not mathematical derivation. Where the mapping is exact (topological ordering = causal structure), it's compelling. Where it's approximate (stack depth ≈ gravitational potential), it's suggestive. Where it's a stretch (cycle length = gauge group), it fails. A map that "looks right" is useful — but physics requires equations, not analogies. Until the structural matches produce quantitative predictions, this remains a conceptual framework, not a theory.
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
| Dark matter | Graph cycles that build stacks but never commit. Gravitates, never interacts. | Infinite loop — CPU busy (stack depth) but no output (no signal). |
| Wave function | Pending evaluation. Multiple possible states, nothing committed. | Lazy thunk. Defined, not forced. |
| Collapse | Strict consumer demands a result. Pending evaluation commits. | Forcing a lazy thunk. |
| Quantum eraser | Eraser is upstream in dependency chain. Pull cascades through its state. | Editing spreadsheet formula before Enter. |
| Heisenberg uncertainty | Measuring one property rewires the topology the other depends on. Topological constraint. | Can't read a variable and its derivative from one snapshot. |
| Delayed choice | Choice node is upstream. Cascade reads state at pull-time. | Setting a config value before the function reads it. |
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
