# GL Theory v22 — Source Document

---

## BUILD INSTRUCTIONS

You are building a single `index.html` file from this source document. This file contains everything needed: the design system, the content structure, author notes, and figure descriptions.

### How To Use This File

1. **Read the entire document first** before generating any output.
2. **Produce a single `index.html`** — all CSS inline in `<style>`, all SVGs inline, one self-contained file.
3. **Author notes are INSTRUCTIONS, not content.** They tell you how to write the section. They never appear in the output HTML. Treat them as creative direction from the author.
4. **Content directions** describe what to write. You write the actual prose in the author's voice: excited, plain English, occasional profanity, "smart friend at a bar." Not academic. Not condescending.
5. **The Author's Note section is VERBATIM.** Copy it exactly as provided — typos and all. It is the author's personal voice. Do not fix, edit, or rephrase it.
6. **Every chapter ends with a "What This Means" insight block.** One paragraph, plain English, no jargon.
7. **Physics cards are skippable callouts.** The main text must make sense without them.
8. **Mystery blocks open every physics chapter.** They present the weird observation, build tension, THEN the framework resolves it. The reader should feel the strangeness before getting the answer.

### The Core Insight — Topology Gives Rise to Everything

The document's deepest insight is this: **nodes store nothing. Values, forces, and observable properties all emerge from graph topology alone.** The universe is a recursive function walking a graph. The walking IS reality.

The proof-of-concept is the prime number demo in Chapter 1.5. A node at depth d in the graph returns the d-th prime — not because it stores that prime, but because depth IS the prime index. All of arithmetic emerges from structure. This is the foundation everything else builds on.

From there: the industry has independently converged on how to evaluate graphs — **topological ordering**. Causally connected nodes evaluate in sequence. Causally disconnected nodes evaluate in parallel. Apply this to the universe graph and special relativity falls out for free. The light cone IS the dependency graph. No preferred frame because there is no preferred traversal order.

The call stack section is the centrepiece of the gravity explanation. A massive subgraph builds a deep call stack. Deep call stacks create routing pressure — the system routes around them. That routing pressure IS gravity. The pyramid → invert → spacetime fabric sequence is the visual centrepiece of the whole document. It needs to land.

Thread these three ideas throughout: (1) topology generates values, (2) topological ordering gives you relativity, (3) call stack depth gives you gravity and time dilation.

### The Prime Number Demo — Reference Throughout

The demo section is the centrepiece of the setup. It proves this _type_ of theory is possible by showing that even a trivially simple recursive graph, when evaluated, produces emergent properties. Reference the demo's emergent properties explicitly in later sections (mass, gravity, time, quantum). The demo is not a metaphor — it is a working example.

### The Call Stack Visual Sequence — Three Figures That Flow

The gravity section has three figures that must feel like one continuous reveal:

1. **call-stack-pyramid** — graph nodes across the top, call stack depth bars below, forming a mountain shape
2. **invert-pyramid-spacetime** — same image flipped, spacetime fabric draped over it, wells where the mountain was
3. **routing-pressure** — routing table before/after, paths bending around the pressure zone

These three should be styled consistently and feel like one argument unfolding visually.

### Narrative Arc

```
Mario / two layers → Graph basics → Demo (emergent properties) →
Industry / Topo ordering / C →
Mass & Energy → Gravity (centrepiece) →
Space (brief) → Time →
Quantum + Eraser →
Entanglement + Expansion (compressed) →
Honest Gaps → Reference Table
```

### Image Handling — Slug-Based `images/` Folder

Each figure has a unique **slug** derived from its title (e.g., `two-layers-of-reality`). Images are built as standalone SVG files in an `images/` folder. The `index.html` references them via `<img>` tags, NOT inline SVGs.

**Build process:**

1. For each figure in this source doc, generate an SVG file at `images/{slug}.svg`.
2. Style: whiteboard/stick-figure aesthetic. Dots and lines. Simple shapes. DM Sans font. Use the color tokens from the design system.
3. In `index.html`, reference each figure as: `<img src="images/{slug}.svg" alt="{caption}" width="100%">`
4. Each SVG should use `viewBox` for responsiveness and a reasonable default `width`.

**Incremental builds (rebuilding index.html from source):**

1. For each figure, check if `images/{slug}.svg` already exists.
2. Compare the figure description in this source doc to the description comment embedded at the top of the existing SVG file (first line: `<!-- DESCRIPTION: ... -->`).
3. If the description matches → **skip regeneration. Use the existing file.**
4. If the description changed, the slug changed, or the file is missing → **generate fresh SVG.**

This means `index.html` can be rebuilt quickly from source without regenerating images unless their descriptions change.

### General Rules

- **Never use a concept before explaining it.** Every term is built from prior chapters.
- **Images do heavy lifting.** Text supports images, not the other way around.
- **Lead with the mystery.** Every physics chapter opens with the weird observation, lets the reader sit in it, then resolves it with the framework.
- **Bar test.** If a sentence sounds like a textbook, rewrite it. "Would I say this to a smart friend after two beers?" If no, rewrite.
- Each SVG in `images/` should use `viewBox` for responsiveness. The `<img>` tag in HTML uses `width="100%"` and `max-width` for containment.
- Target reading time: ~18 minutes.
- Target word count: ~4,500–5,500 words (prose only).

---

## DESIGN SYSTEM

### Fonts

```
@import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,600;1,400&family=JetBrains+Mono:wght@400;600&family=DM+Sans:wght@300;400;600;700&display=swap');
```

| Role        | Font                        | Usage                                                                        |
| ----------- | --------------------------- | ---------------------------------------------------------------------------- |
| Body text   | `Lora, Georgia, serif`      | All paragraph text, headings h1/h2, insight blocks                           |
| UI / Labels | `DM Sans, sans-serif`       | Callout text, figure captions, table text, principle items, section-level h3 |
| Monospace   | `JetBrains Mono, monospace` | Block labels, section numbers, tags, code blocks                             |
| SVG text    | `DM Sans, sans-serif`       | All text inside SVG figures                                                  |

### Color Tokens

```css
:root {
  --ink: #1a1a1a;
  --paper: #faf8f3;
  --paper2: #f2efe6;
  --text-primary: #2a2a2a;
  --text-secondary: #3a3a3a;
  --red: #c0392b;
  --blue: #2471a3;
  --green: #1e8449;
  --purple: #7d3c98;
  --orange: #d35400;
  --gold: #d4a017;
  --muted: #7a7a6a;
  --border: #d5d0c0;
  --dark: #1a1a2e;
  --teal: #a8dadc;
  --block-bg: #f5f2eb;
  --block-bg-alt: var(--paper2);
  --block-bg-warm: #faf6e8;
  --block-bg-blue: #eef6fb;
  --block-bg-red: #fdf0ef;
  --block-bg-green: #edf8f1;
  --block-bg-orange: #fff8f2;
  --block-bg-teal: #edf5f6;
  --block-bg-code: #f4f2ed;
}
```

### Semantic Color Usage in SVGs

| Meaning                         | Color                | Use for                                                  |
| ------------------------------- | -------------------- | -------------------------------------------------------- |
| Positive / completes / resolves | `--green` (#1e8449)  | Things that finish, things that work, definite positions |
| Negative / loops / stuck        | `--red` (#c0392b)    | Cycles, overflow, things that don't resolve              |
| Neutral / informational         | `--blue` (#2471a3)   | Graphs, nodes, informational elements                    |
| Warning / energy / motion       | `--orange` (#d35400) | Energy release, motion, change, direct edges             |
| Quantum / uncommitted           | `--purple` (#7d3c98) | Wave functions, superposition, potential connections     |
| Special / gold accents          | `--gold` (#d4a017)   | Stars, mass labels, special callouts                     |

### Block Types

**`.doc-header`** — Dark hero banner. Background: `var(--dark)`. White/teal text.

**`.hook`** — Opening intro block. Left border 5px solid ink. Cream background. Larger font.

**`.callout .callout-{color}`** — Accent-colored sidebar blocks. 4px left border.

- `.callout-neutral` — Author's Note, general aside
- `.callout-blue` — Important conceptual callout
- `.callout-green` — Positive/success callout
- `.callout-gold` — Special emphasis

**`.mystery-block`** — Purple-bordered callout. Label: `🔍 The Mystery`.

**`.physics-card`** — Green-bordered callout. Label: `⚛ Physics Card — {Title}`. Skippable.

**`.insight`** — Chapter-closing takeaway. Teal background. Label: `✦ What This Means`. Italic Lora. One paragraph.

**`.principle-box`** — Numbered axioms. Black border. Blue numbered badges.

**`.claims-box`** — Numbered claims. Orange border. Orange numbered badges.

**`.figure`** — White box with border and shadow. Contains: `.scene-label` (monospace uppercase), `<img src="images/{slug}.svg">`, `.figure-caption` (italic, muted).

**`.gap-box`** — Gray-bordered block for honest gaps.

**`.part-header`** — Centered section divider. Top and bottom 3px black borders.

**`.summary-table`** — Reference table. Dark header row, alternating rows.

### Layout

- Max content width: 860px, centered
- Body: `font-size: 17px`, `line-height: 1.85`
- Mobile breakpoint: 640px

---

## DOCUMENT CONTENT

---

### FRONT MATTER

#### Hero Header

- **Title:** GL Theory v22
- **Subtitle:** A guide to the universe for people who build things
- **Byline:** VERSION 22.0 · MARCH 2026 · PLAIN ENGLISH EDITION

---

#### Author's Note (VERBATIM — do not edit, fix, or rephrase)

```MD
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
```

---

#### THE HOOK: You Are Mario

> **AUTHOR NOTE:** Trimmed ~40% from original. Keep core metaphor, two-layer definition, teaser mystery list. Cut extra elaboration.

**Hook block content:** Before we get into anything — before graphs, before physics, before any of it — I need to tell you something uncomfortable. **You are Mario.** Not metaphorically. Your reality is taking place on a screen. There is an engine underneath computing your world, and you have no direct access to it.

**Content direction (after hook):** Two tight paragraphs:

1. That sounds insane until you realize you deal with two-layer systems every day. Your monitor shows letters, your computer stores ones and zeros. Two layers: engine (processor) and the output (monitor). We're claiming reality works the same way — what you experience (space, mass, time, gravity) is the output of an engine evaluating a graph. Dots connected by lines. The evaluation IS your reality.
2. This isn't just "reality is a simulation" — that's like saying "there's something going on." We're proposing a specific architecture and then showing it actually explains things: Why can't you shield gravity? Why does the universe "know" what you'll measure? Why do equations work backwards in time? These are genuine unsolved mysteries and they all have the same answer.

**Blue callout block — define the two layers:**

- **The Engine Layer** — where computation happens. The actual structure of reality. Think: the Nintendo console.
- **The Render Layer** — what you experience. Your "reality." The output. Think: the TV screen.

##### Figure: two-layers-of-reality

**Slug:** two-layers-of-reality
**Label:** Figure 0 — Two Layers of Reality
**Description:** Left: a TV screen showing Mario's world (stick-figure Mario, platforms, a question block) labeled "RENDER LAYER — What Mario experiences. His 'reality.'" Right: a Nintendo console with circuit board showing graph nodes and edges inside, labeled "ENGINE LAYER — Dots and lines. The actual computation." Arrow goes FROM the console TO the TV screen, labeled "produces."
**Caption:** Two layers. The engine computes the graph. The screen shows the output — Mario's world. Mario can't see the engine. He only sees the output. Sound familiar?

**Content direction (graph bridge — NOT a standalone section):** After the figure, 2-3 sentences folded into the hook flow: "We suspect the engine layer is a graph — dots connected by lines, where edges carry operations (multiply, add, divide). A recipe is a graph. A family tree is a graph. You already think in graphs. The node stores nothing — everything meaningful is in the connections."

##### Figure: you-already-know-what-a-graph-is

**Slug:** you-already-know-what-a-graph-is
**Label:** Figure 1 — You Already Know What a Graph Is
**Description:** Three simple graphs side by side: a family tree (5 people, parent-child lines), a social network (6 people, friend connections), and a recipe (4 steps with directional arrows: Mix → Bake → Cool → Frost).
**Caption:** These are all graphs. Dots connected by lines. That's the whole idea.

---

#### The Demo: What Happens When You Evaluate One

> **AUTHOR NOTE:** THE CENTREPIECE OF THE SETUP. Reframed from "primes from topology" to "watch what emerges from the simplest possible recursive evaluation." Pseudocode + visual walkthrough does the heavy lifting, not prose.

**Content direction:** "Now let's actually watch a graph evaluate itself. Here's a recursive function in ~10 lines:"

**Pseudocode block:**

```
function evaluate(node):
    if node has no children:
        return 1                    // leaf — base case

    result = identity
    for each child of node:
        child_value = evaluate(child)    // recurse
        result = result × child_value    // apply edge operation

    node.revision += 1              // tick the counter
    node.committed = result         // lock in the result
    return result
```

**Content direction:** "That's the whole engine. Let's run it on a simple graph and watch what happens."

##### Figure: graph-evaluation-walkthrough

**Slug:** graph-evaluation-walkthrough
**Label:** Figure 2 — Watch What Emerges From Recursive Evaluation
**Description:** NEW FIGURE. A 2-3 panel visual showing a small graph (root with two children, each with a leaf) being evaluated step by step. The walkthrough annotates each emergent property as it appears:

- Panel 1: "BEFORE" — all nodes show "?" (pending). Annotation: "Nothing demanded yet. All nodes pending. → That's superposition."
- Panel 2: "EVALUATING" — leaves evaluate first (they have no children, return immediately at rate C). Call stack shown building as parent waits for children. Annotations: "Leaves go first — can't evaluate parent before children. → That's causal ordering." / "Stack builds while parent waits. → That's the gravity mechanism." / "Leaf commits instantly — no subgraph to recurse. → That's C, the speed of light."
- Panel 3: "COMPLETE" — all nodes committed, revision counters ticked. Parent reads children's LAST committed values. Annotations: "Each node ticked its revision counter. → That's time." / "Parent read the LAST committed result, not the in-progress one. → That's the speed-of-information limit."
  **Caption:** One recursive function. No physics. No special rules. Just: evaluate the graph. And look what fell out.

**Content direction (after figure, "Did You Notice?" section):** Short section pointing out what just emerged with NO special rules:

- **Change** — each node's state changed when it committed. From that node's perspective, time just passed. No change = no time.
- **Evaluation order** — leaves first, root last. Can't evaluate a parent before its children. That's causal ordering.
- **Stack depth** — deeper subgraphs build taller stacks, take longer. That's the gravity mechanism.
- **Lazy evaluation** — if nothing demands a node's result, it stays unevaluated. That's quantum superposition.
- **The off-by-one** — you only ever read the last committed result. That's the speed-of-information limit.

**Content direction (closing beat):** "The important thing isn't this specific graph. It's that ALL of these properties emerged from nothing more than recursive evaluation. No special rules. No physics. Just: evaluate the graph. The properties ARE the evaluation."

**Content direction (qualitative caveat):** "A caveat before we go further: we don't know the exact operations on the edges. We're not claiming to have the specific rules that generate electrons or gravity constants. What we're showing is that the **structure** of recursive graph evaluation — regardless of the specific operations — produces emergent properties that map onto physics. The shape of the argument matters more than the specific numbers."

**Content direction (prime number result — ELEVATED, with figure):** "One more thing — and this matters. Watch what happens when a node's base value depends on its depth in the graph."

"Take a graph of depth 2 — one parent, one child. The child (a leaf) returns 1. The parent multiplies: result is 1. That's 1 unique factor. Depth 2 gives you the first value in the sequence: 1."

"Depth 3: the parent has a child at depth 2 (which returns 1) and a leaf. Multiply up: 2 is the result. 2 is prime."

"Depth 4: the subgraph at depth 2 already returned its result. The parent at depth 4 just gets 2 × 1 = 2. NOT a new prime — it's composite. It factors into the structure below it."

"Depth 5: a new topology that can't be factored into smaller subgraphs. Result: 3. That's the next prime."

"You see the pattern? Depths that introduce genuinely new topological structure produce primes. Depths that are just combinations of existing sub-structures produce composites. The primes aren't stored. They aren't computed by a formula. They emerge from which depths create irreducible topologies."

"The node stores nothing. The structure IS the value. If topology generates primes, and primes generate all numbers, then topology alone generates all of arithmetic. This is the proof of concept. Everything else builds on it."

##### Figure: evaluating-a-graph-step-by-step

**Slug:** evaluating-a-graph-step-by-step
**Label:** Figure 2b — Topology Generates Primes
**Description:** Three columns showing graphs at different depths. Left column "DEPTH 2": a simple parent-child pair. Child returns 1, parent gets 1. Label: "Depth 2 → 1. Base case." Center column "DEPTH 3": parent with two children (one at depth 2, one leaf). Result: 2. Label: "Depth 3 → 2. Prime. New irreducible structure." Right column "DEPTH 5": a tree that can't be decomposed into smaller sub-trees. Result: 3. Label: "Depth 5 → 3. Prime. Another irreducible structure." Between columns 2 and 3, a small "DEPTH 4" annotation showing 2 × 1 = 2 with label: "Depth 4 → 2. Composite. Just sub-structures re-combined." Bottom label: "Primes aren't stored. They emerge from irreducible topology. The structure IS the value."
**Caption:** Primes emerge from topology. Depths with irreducible structure produce primes. Composite depths just re-combine existing sub-structures. No values stored anywhere.

##### What This Means (Insight)

A recursive graph evaluation — with no stored values and no special rules — produces emergent properties that map directly onto physics: time (change), causality (evaluation order), gravity (stack depth), quantum mechanics (lazy evaluation), and the speed of information (off-by-one). None of these were designed in. They fell out of the recursive evaluation. The properties ARE the evaluation.

---

#### How Industry Already Does This

> **AUTHOR NOTE:** Promoted from callout to regular subsection titled "You Already Use This Model." Topological ordering is essential context, not optional engineer-only material. The spreadsheet figure stays. C = leaf commit rate and special relativity punchlines follow as main-narrative transition.

**Subsection (h3, "You Already Use This Model"):** We already build systems that evaluate graphs. Spreadsheets, React, CPU caches — different teams, different decades, different purposes. They all independently converged on the same model: **topological ordering**. If two nodes have no dependency between them, they can evaluate in any order. If one depends on the other, it must wait. A spreadsheet is a graph. Change cell A1 and it walks the dependency graph forward, recomputing only what depends on A1, in order. B1 and C1 can update in parallel (no dependency between them). D1 waits for both.

##### Figure: spreadsheet-is-a-graph (inside callout)

**Slug:** spreadsheet-is-a-graph
**Label:** Figure 3 — A Spreadsheet Is a Graph Being Evaluated
**Description:** Three panels showing spreadsheet cell dependency graph changing state. Panel 1 "STATE 0": four cells. A1=5 (blue, just changed), B1="=A1×2" (gray, stale), C1="=A1+1" (gray, stale), D1="=B1+C1" (gray, stale). Panel 2 "STATE 1": B1 and C1 both evaluate (they both depend only on A1, no dependency between each other — they can go in any order or simultaneously). B1=10 (green, committed), C1=6 (green, committed), D1 still stale. Panel 3 "STATE 2": D1 now evaluates (depends on both B1 and C1, which are both committed). D1=16 (green, committed). Arrow below: "A1 changed → B1 and C1 in parallel → D1 last. Topological order."
**Caption:** Change A1 and the update cascades forward through the dependency graph. B1 and C1 can update in parallel — no dependency between them. D1 waits for both. That's topological ordering.

**Content direction (main narrative transition, OUTSIDE the callout):** Two key consequences fall out of topological ordering. First: no preferred traversal order = no preferred frame = special relativity for free. Two observers on independent branches genuinely have no shared "now" — not because of a physical law, but because there's no ordering constraint between them. Second: **C = leaf commit rate.** The speed of light has nothing to do with light. A leaf node — nothing to recurse into — commits instantly. That rate is C. Everything else is slower because it has subgraph work to do first. A photon is a leaf. That's why it travels at C.

---

#### What the Framework Explains

> **AUTHOR NOTE:** Merged chapters. Mystery blocks only for gravity and quantum (the big reveals). Other sections are subsections without separate mystery blocks.

---

##### Mass & Energy

**Content direction (~350 words):** A massive object is a region of the graph whose topology is **stable** — edges don't change, same walk produces the same result every time. That's mass. When stability breaks — enough energy to rewire edges — the delta propagates outward. That's released energy.

E = mc²: look at the pseudocode from the demo. Recursive evaluation has two phases and it can't avoid them. The *call* phase walks down — the root calls its children, which call their children, all the way to the leaves. That's m hops at rate C. Then the *return* phase walks back up — each child returns its result to its parent, all the way to the root. Another m hops at rate C. Every recursive evaluation does both. You can't have one without the other — you go down to get the answer, you come back up to deliver it. m × C × C = mc². The c² isn't magic — it's the two unavoidable phases of recursion.

Antimatter is a mirror graph; when it meets its original, they cancel completely, and the full evaluation propagates outward as energy.

##### Figure: mass-is-stable-topology

**Slug:** mass-is-stable-topology
**Label:** Figure 5 — Mass Is Stable Topology. Energy Is What Propagates When It Isn't.
**Description:** Three panels. Left panel (blue, "STABLE TOPOLOGY — MASS"): a subgraph with fixed edges shown twice (Walk 1 and Walk 2), both producing the same result. Label: "Same walk. Same result. Every time. That's mass." Center panel (orange, "DISRUPTION — ENERGY INPUT"): new edge being added to the subgraph, labeled "Energy arrives. Topology changes." Right panel (green, "PROPAGATION — RELEASED ENERGY"): the subgraph with new structure, delta arrows radiating outward, labeled "New walk. Different result. Delta propagates outward. That's released energy."
**Caption:** Mass is a stable subgraph — same walk, same result. Energy is the delta that propagates when the topology changes.

##### Figure: the-bidirectional-walk

**Slug:** the-bidirectional-walk
**Label:** Figure 6 — The Bidirectional Walk. That's Where c² Comes From.
**Description:** One subgraph of depth m shown with two sets of arrows. Blue arrows going DOWN from root to leaves labeled "DOWN LEG — m hops at rate C." Orange arrows going UP from leaves to root labeled "UP LEG — m hops at rate C." Below: equation "E = m × C (down) × C (up) = mc²." Caption note: "Same rate. Two independent directions. The graph is symmetric. No preferred direction. That's why c² appears."
**Caption:** The walk down to leaves and the walk back up are both at rate C. Same rate, two independent directions. That's c² — not a magic constant, a topological fact.

---

##### Gravity

> **AUTHOR NOTE:** This is the centrepiece. ~800 words. Call stack explanation → pyramid → invert → routing pressure. All three mysteries dissolved. Keep the "can't shield gravity" argument at full strength.

**Mystery Block:**
Gravity is weird. A suspicious kind of weird. Three clues: (1) You can shield every other force — EM, strong, weak. Nobody has ever shielded gravity. (2) Einstein's equivalence principle: no experiment can distinguish gravity from acceleration. Why? (3) Physicists hunted the graviton for decades. Never found one. Maybe gravity isn't a force at all.

**Content direction (call stack intro):** When the engine evaluates a deep subgraph, it builds a call stack — a list of things waiting for answers. [ADD PHYSICAL ANALOGY: "Think of a stack of plates: you can't get to the bottom one until you take off every plate above it. Each plate is a question waiting for the question below it to be answered first."] Everything on the stack is **waiting**. The stack depth equals the subgraph depth. Deep subgraph = tall stack = everything nearby waits longer.

Now plot call stack depth across a region of the graph. What shape do you get?

##### Figure: call-stack-pyramid

**Slug:** call-stack-pyramid
**Label:** Figure 7a — Call Stack Depth Across the Graph Forms a Pyramid
**Description:** A horizontal row of nodes across the top of the figure (connected as a graph, with a clearly deeper/more complex subgraph in the center, labeled "MASS"). Below each node, a vertical bar whose height represents that node's call stack depth when evaluated. The bars form a pyramid/mountain shape — tallest in the center over the mass, tapering to height 1 at the far edges (leaf nodes). The whole shape is amber/orange. Labels: "height 1" at edges (pointing to leaf nodes), "height 8" at peak (pointing to the mass node's bar), "MASS HERE" with an arrow at the peak. Below the figure: "Stack depth across the graph. Tall where mass is. Flat everywhere else."
**Caption:** Plot call stack depth across the graph and you get a mountain. Tallest where mass is. Height 1 at the leaves — those are your photons, traveling at C.

**Content direction:** Now flip that pyramid upside down. The tall bars become deep wells. Drape a spacetime fabric grid over it. You're looking at exactly what spacetime curvature looks like in every physics textbook.

##### Figure: invert-pyramid-spacetime

**Slug:** invert-pyramid-spacetime
**Label:** Figure 7b — Invert the Pyramid. Add the Spacetime Fabric. Same Shape.
**Description:** Same data as fig-pyramid but inverted. The mountain shape is now flipped to a well shape. Over the top of it, a grid of lines (the "spacetime fabric") is draped, curving downward into the well at the center and flat at the edges — exactly like the classic spacetime curvature diagrams from physics textbooks. The mass node is at the bottom of the well. Label: "INVERT THE CALL STACK TOPOLOGY." Second label on the fabric: "THIS IS SPACETIME CURVATURE." Third label: "Same shape. Different perspective. The call stack IS the curvature."
**Caption:** Flip the pyramid and drape a fabric over it. That's the spacetime diagram from your physics textbook. The call stack topology is spacetime curvature.

**Content direction (routing pressure):** The deep call stack doesn't just slow things down — the system actively routes around it. Paths through mass are expensive. Paths around it are cheaper. Everything follows the cheapest path. The cheapest path curves. That curve IS gravity.

##### Figure: routing-pressure

**Slug:** routing-pressure
**Label:** Figure 7c — Deep Call Stacks Create Routing Pressure
**Description:** Two panels. Left panel "BEFORE — no mass, flat routing table": a uniform grid of nodes. A straight path from A (top left) to B (bottom right) drawn as a straight diagonal line. All nodes the same color. Label: "Uniform routing costs. Straight path is cheapest." Right panel "AFTER — mass present, routing table updated": same grid. A cluster of nodes in the center colored amber/orange, labeled "DEEP STACK — high routing cost." The path from A to B is now curved around the mass cluster, avoiding the high-cost center. Label: "Routing table updated. Cheapest path now bends around the mass. That bend is gravity."
**Caption:** Deep call stacks create routing pressure. Cheapest paths bend around the pressure zone. That bend is gravity.

**Content direction (dissolve the three mysteries):**

**Why you can't shield gravity.** Every other force transmits via a signal through edges. Block the edge, block the signal. But gravity isn't a signal. It's the call stack depth of your own evaluation. Your shield shares the same stack. There is no layer in your reality that can reach into the engine and change stack depth. You are Mario. You cannot reach into the console.

**Why gravity equals acceleration.** Both add depth to your local call stack. Same effect. Same mechanism. That's why Einstein couldn't tell them apart — they're the same thing.

**Why there's no graviton.** "What particle carries gravity?" is like asking "What particle carries network congestion?" It's a system property. Not a thing that travels.

##### Physics Card: Black Holes

A black hole is a subgraph so deep that evaluation never completes. The call stack builds without unwinding. Unlike GR's prediction of a singularity — infinite density — there's nothing infinite here. The subgraph is finite. The stack is deep but finite. The computation just never finishes. Stack exhaustion, not mathematical breakdown.

##### What This Means (Insight)

Gravity is not a force. It is call stack pressure created by a deep subgraph. Plot the stack depth: a pyramid. Flip it: Einstein's spacetime curvature. The routing table updates, paths curve toward mass. You can't block it because the stack is part of your own evaluation. There is no signal to block. The topology is not optional.

---

##### Space & Time

> **AUTHOR NOTE:** Space section folded into Time. "Space = graph shape, distance = hop count, Planck length" opens the combined section. "Pending edges = superposition" moved to the quantum section where it's actually needed.

**Content direction (space opening, ~50 words):** Space isn't a box things happen inside. It's the graph's shape — the large-scale pattern of connections. Distance is hop count. The minimum distance is one hop — one node. That's the Planck length: one pixel.

> **AUTHOR NOTE:** ~300 words. Lead with "what if time stopped?" thought experiment. Time = amount of change in your local region. Fibonacci/arrow of time (keep photographs insight), GPS proof. Physics card: The Muon.

**Content direction:** What would it look like if time stopped? Nothing changes. No node evaluates to a new state. Nothing commits. Time IS the amount of change in your local region. Each time a node commits a new result, that's one tick of local time — not because the graph is counting, but because change happened. Near mass, the call stack is deeper, commits are slower, less change happens. That IS time dilation.

GPS satellites orbit where the stack depth is lower — faster commits, faster clocks. Without correction, GPS would drift 10km per day. Your phone depends on this being real.

**The arrow of time:** Remember Fibonacci? Each number needs the previous two. The engine works the same way — each walk's output feeds the next walk's input. Walk 5 needs Walk 4's committed output. The dependency runs one direction. That dependency chain IS the arrow. The equations work backwards because they describe the committed results — the photographs. A photograph has no arrow. The arrow lives in the computation that produced it. Not in the output. In the engine.

Moving fast eats commits too — position edges being rewired costs evaluation steps, leaving fewer for internal state. At C, zero internal revisions. Zero elapsed time. That's why a photon experiences no time.

##### Physics Card: The Muon

Cosmic ray muons should decay 660m above Earth. They reach the ground. At 99.5% of C, almost all evaluation steps go to motion. Their revision counter barely moves. Confirmed experimentally.

##### What This Means (Insight)

Time is change. No change, no time. Near mass: deeper stack, slower commits, less change, less elapsed time. The arrow of time is a dependency chain — each walk's output feeds the next. The equations work backwards because they describe photographs, not the computation. The computation runs one direction. No undo.

---

#### The Quantum World

> **AUTHOR NOTE:** Keep as distinct section. Lazy eval = superposition. Double-slit in 4 steps. Quantum eraser via dependency chains (Tier 1 — preserve fully).

**Mystery Block:**
Double-slit: fire particles at two slits. Interference pattern appears. Add a detector: pattern vanishes. Quantum eraser: erase the detector's info AFTER the dot is recorded. Pattern comes BACK. How can erasing information after the fact change a result that's already been recorded?

**Content direction:** Remember the demo — if nothing demands a node's result, it stays unevaluated. A particle in flight with no **strict consumer** — anything that demands a definite answer right now, like a detector, a screen, your eyeball — stays pending. Both paths through both slits: pending. Neither committed.

##### Figure: pending-vs-committed

**Slug:** pending-vs-committed
**Label:** Figure 8 — Pending vs. Committed: That's All Superposition Is
**Description:** Two panels. Left panel (purple border, "WAVE FUNCTION — PENDING"): central node (the particle) with six dotted lines connecting to six possible position nodes around it. None are committed. Label: "No consumer. All paths pending. Nothing committed. This is superposition." Right panel (green border, "MEASURED — COMMITTED"): same central node with ONE thick solid line to ONE position node. All other connections gone. Label: "Consumer demands a result. One path commits. One definite position."
**Caption:** Superposition is pending evaluation. Collapse is when a consumer demands a result. One path commits.

**Content direction (double-slit in 4 steps):** (1) No consumer → both paths pending. (2) Engine evaluates all pending paths without committing. (3) Pending paths overlap at screen — bright bands where they align, dark where they cancel. (4) Screen's 10²⁶ atoms force commitment — one dot.

**A detector ruins it** because it demands "which slit?" — forces one path to commit. Only one path to the screen. No overlap. No pattern.

**Content direction (quantum eraser — FULL TREATMENT):** The eraser is **upstream in the dependency chain**. When the screen demands the particle's position, that demand cascades backwards through the dependency graph. The eraser node sits in that path. The cascade reads whatever state the eraser is in at the moment the pull arrives.

Eraser OFF: cascade hits "which-path erased." Both paths still pending. Interference emerges.
Eraser ON: cascade hits "which-path recorded." One path commits. Interference destroyed.

There is no "after the fact." The path evaluation was still in flight through the dependency chain. The eraser's state at the time of the pull determines the outcome. It's like editing a spreadsheet formula before pressing Enter.

**Why basketballs don't do this:** 10²⁶ atoms, every one a strict consumer. No pending evaluations survive. That's decoherence.

##### What This Means (Insight)

Quantum mechanics is lazy evaluation. Small, isolated things: no consumers, pending paths survive, interference. Large things: consumers everywhere, everything commits instantly. The quantum eraser isn't time travel — the eraser is upstream in the dependency chain. Its state at the moment of the cascade determines the outcome. Not backward in time — upstream in the dependency graph.

##### Physics Card — Why Probability Is Amplitude Squared

> **AUTHOR NOTE:** This is a physics card (~250 words), placed after the quantum insight block. Framed as exploratory — we haven't proven this IS the Born rule, but the structure naturally produces the right ingredients. Text only, no figure.

**Content direction:** The prime demo uses trees (no cycles). Values stay real. Everything is deterministic. That's the baseline.

Now add a **cycle** to the graph — a node that depends on itself. Topological ordering breaks. You can't evaluate it top-down because the node needs its own result before it can produce one.

Self-consistency forces a constraint: the value must equal the result of its own operation applied to itself. For many operations, the only solutions are **roots of unity** — complex numbers that return to 1 when raised to some power. Complex numbers don't get bolted on as a special rule. They emerge because cycles demand self-consistent solutions, and self-consistent solutions in a multiplicative graph are roots of unity.

Once you have complex values, paths through the graph carry complex amplitudes. Multiple paths to the same node accumulate — some reinforce, some cancel. That's **interference**. Not mysterious wave behavior. Bookkeeping on a graph with cycles.

The bidirectional walk (down to leaves, back up to root) means the final result involves α times its conjugate: α × α* = |α|². Probability from structure.

**Caveat:** This is exploratory. We haven't derived the Born rule from first principles. But it's interesting that cycles in a graph — which must exist in any non-trivial universe (feedback, self-reference, closed causal loops) — naturally produce exactly the mathematical structure quantum mechanics uses: complex amplitudes, interference, and squared-modulus probability.

---

#### Everything Else That Falls Out

> **AUTHOR NOTE:** Very brief. Entanglement: 2 paragraphs. Expansion: 2 paragraphs. No figures.

##### Entanglement

When two particles interact, their value subgraphs merge — they share a node. Position can change — they can move to opposite ends of the universe. But the shared node doesn't care about position. When either particle is evaluated, the shared node commits. Both read the same result. No signal travels — the correlation was in the topology all along.

Why not faster-than-light communication? The results are correlated but random. Neither observer learns anything useful until they compare notes at C.

##### Expansion

The engine evaluates the graph. Some evaluations add new nodes and edges. More graph = more evaluations = more new nodes. Growth proportional to size = accelerating expansion. No dark energy needed. The graph computes itself into existence.

---

#### Honest Gaps

> **AUTHOR NOTE:** Trimmed from 11 to 6 most critical. Credibility section.

**Content direction:** "A framework that claims to explain everything without identifying where it breaks is a story, not a theory. These gaps are real and hard."

**Gap box items (6):**

1. **Can't derive Einstein's exact equations from graph structure.** The number one problem. The qualitative match is strong but we haven't derived G*μν + Λg*μν = 8πG/c⁴ T_μν from first principles. Without the derivation, this is a compelling analogy, not a formal theory.

2. **Can't prove the computation is confluent.** We claim the committed result is independent of traversal order. But we haven't formally proven the graph has a unique fixed point for all orderings. If different orderings produce different states, the framework predicts violations of Lorentz symmetry that aren't observed.

3. **Can't explain specific particles.** Electrons, quarks, neutrinos have specific masses and charges. "Particles are stable topologies" doesn't tell us which ones exist or why.

4. **Can't prove the Born rule.** We explain that measurement produces a committed result. We don't explain why probabilities follow amplitude squared. (The Born Rule physics card above shows that cycles in graphs naturally produce the right mathematical ingredients — complex amplitudes and |α|² — but this observation is exploratory, not a derivation.)

5. **Can't explain the hierarchy problem.** Gravity is ~10³⁶ times weaker than electromagnetism. Why would stack depth produce such an enormous ratio? No answer.

6. **No unique experimental prediction — with one exception.** The framework predicts **no singularity** at the center of black holes. Standard GR predicts infinite density. This framework predicts stack exhaustion — finite depth, non-terminating computation, but nothing infinite. If quantum gravity observations become possible, this could be testable.

**Content direction (closing):** "These are genuine obstacles. Any one of them could be fatal. That's fine. You lay out what you think, you lay out where it breaks, and you hope someone smarter can get further than you did."

---

#### Reference Table

**Section title:** Quick Reference

> **AUTHOR NOTE:** Trimmed from 35 rows to ~20 most important.

| Physics Concept       | In This Framework (v22)                                                      | Computer Analogy                                               |
| --------------------- | ---------------------------------------------------------------------------- | -------------------------------------------------------------- |
| Space                 | Large-scale graph shape. Connectivity pattern.                               | Network topology. Hop count = distance.                        |
| Mass                  | Stable subgraph topology. Same walk, same result.                            | Deterministic function, same output for unchanged input.       |
| Energy                | Return value that propagates outward when topology changes.                  | Function output feeding next function call.                    |
| E = mc²               | Bidirectional walk: m hops down at C, m hops up at C. mc².                   | Recursive call cost: down m levels × up m levels at same rate. |
| Time                  | Change. Each commit is one tick of local time. No change = no time.          | State change counter. No state change = no tick.               |
| Arrow of time         | Each walk's output feeds the next. Fibonacci dependency. Cannot un-commit.   | Program execution order. Can't un-run code.                    |
| Time dilation         | Deep stack or fast motion → slower commits → revision counter ticks less.    | Deep recursion or I/O consuming cycles → lower throughput.     |
| Speed of light (C)    | Commit rate of a leaf node. No subgraph. Maximum rate.                       | Base case return time. Immediate, no recursion.                |
| Gravity               | Deep call stack creating routing pressure. Paths curve.                      | Deep recursive call; OS routes work around it.                 |
| Can't shield gravity  | Stack is part of your own evaluation. Not a signal — a topology.             | Can't avoid being on the same call stack.                      |
| Equivalence principle | Acceleration and gravity both add call stack depth. Same mechanism.          | CPU load from motion vs. deep calls: same throughput impact.   |
| Spacetime             | The routing table — edge weights, cheapest paths. Updated by stack pressure. | Network routing table, updated on congestion.                  |
| Black hole            | Subgraph so deep the stack never unwinds. No singularity — stack exhaustion. | Non-terminating recursion. Finite code, infinite loop.         |
| Wave function         | Pending evaluation. Multiple possible states, nothing committed.             | Lazy thunk. Defined, not forced.                               |
| Collapse              | Strict consumer demands a result. Pending evaluation commits.                | Forcing a lazy thunk.                                          |
| Quantum eraser        | Eraser is upstream in dependency chain. Pull cascades through its state.     | Editing spreadsheet formula before Enter.                      |
| Entanglement          | Shared value subgraph node. Co-resolves when either is evaluated.            | Shared pointer. Same data regardless of location.              |
| Special relativity    | No preferred traversal order → no preferred frame.                           | Same output regardless of evaluation order.                    |
| Expansion             | Evaluations add new nodes. Growth proportional to size = acceleration.       | Self-modifying code. Evaluation extends codebase.              |
| Planck length         | One hop. One node. One pixel.                                                | Minimum addressable unit.                                      |

---

### FOOTER

```
GL Theory v22: A Guide to the Universe for People Who Build Things
Version 22.0 · March 2026 · Plain English Edition
Framework developed by Greg.
"The delusions are my own."
```

---

## END OF SOURCE DOCUMENT
