# GL Theory v20 — Source Document

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

### The Core Insight — Everything Is State-Change Operations

The document's deepest insight is a unification: mass, energy, gravity, time, and expansion are all the SAME thing — **state-change operations on the graph** — going to different destinations.

Each tick, the engine computes the graph. Each node's computation produces a return value — an operation that modifies the graph (rewrites edges, changes weights, adds connections). Those operations ARE energy. When they loop back into the same nodes, that's mass. When they propagate outward, that's released energy. When they rewrite surrounding edge weights, that's gravity. When they create new nodes/edges, that's expansion. When you count how many happened in your region, that's time.

Thread this unification throughout. Don't treat mass and energy as separate things the framework explains. They're ONE mechanism, THREE destinations.

### Narrative Structure — The Mystery-First Pattern

Every chapter in Part Two follows this beat structure:

```
1. THE MYSTERY — "Here's something genuinely strange about reality
   that physicists have observed. Feel how weird it is."
2. THE TENSION — "Seriously, think about this. Why WOULD it work
   this way? It shouldn't. And yet."
3. THE FRAMEWORK — "But if reality is a two-layer system with an
   engine and a render... it's not weird at all. It's obvious."
4. THE PAYOFF — "Here's exactly how it works in the framework."
5. PHYSICS CARDS — For the curious (skippable)
6. INSIGHT — One paragraph, plain English
```

### The Two-Layer Architecture

The document's central claim is a two-layer architecture:

- **Engine Layer** — where computation happens. The graph. The actual structure of reality. Analogy: the Nintendo console, the desktop computer, the thing doing the work.
- **Render Layer** — what you experience. Your "reality." The output. Analogy: the TV screen, the monitor, what you see.

The Mario analogy is the primary vehicle. Thread it throughout: Mario is the reader, living on the render layer. The engine computes his world. He can't see the engine. Use this analogy for time (Mario's time is change, not ticks), the committed frame (Mario never gets half his world), the holographic principle (Mario 64 on a 2D screen), and the arrow of time (computation direction is in the engine).

Refer to the layers consistently as "engine layer" and "render layer" throughout. Let the reader know they can also think of them as desktop/monitor or Nintendo/TV.

**Jargon rule:** Avoid "rendered" as a verb. Use "produced," "output," "what you see on the screen." Keep "render layer" as a defined term (it's explained once) but don't use "rendered" casually. The goal is not to sound smart but to teach.

### SVG Figure Handling

Each figure has a stable ID (e.g., `fig-01`) and a description.

**Mode A — Fresh Build (no previous HTML provided):**
Generate all SVGs inline from the descriptions. Style: whiteboard/stick-figure aesthetic. Dots and lines. Simple shapes. DM Sans font. Use the color tokens from the design system.

**Mode B — Incremental Build (previous index.html provided):**
For each figure:

1. Find the `<div class="figure" id="fig-XX">` in the previous HTML.
2. Compare the figure description in this source doc to the `scene-label` text in the previous HTML.
3. If the description matches (same meaning, not necessarily exact text) → **copy the entire figure div verbatim** from the previous HTML.
4. If the description changed or the figure is new → **generate fresh SVG.**

This avoids regenerating expensive SVGs that haven't changed.

### General Rules

- **Never use a concept before explaining it.** Every term is built from prior chapters.
- **Images do heavy lifting.** Text supports images, not the other way around.
- **Lead with the mystery.** Every physics chapter opens with the weird observation, lets the reader sit in it, then resolves it with the framework.
- **Bar test.** If a sentence sounds like a textbook, rewrite it. "Would I say this to a smart friend after two beers?" If no, rewrite.
- Each SVG should use `viewBox` for responsiveness, `width="100%"`, and `max-width` for containment.
- Target reading time: ~45 minutes.
- Target word count: ~12,000–15,000 words (prose only, not counting HTML/SVG markup).

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
| Monospace   | `JetBrains Mono, monospace` | Block labels, section numbers, tags, under-hood blocks                       |
| SVG text    | `DM Sans, sans-serif`       | All text inside SVG figures                                                  |

### Color Tokens

```css
:root {
  /* Core */
  --ink: #1a1a1a;
  --paper: #faf8f3;
  --paper2: #f2efe6;
  --text-primary: #2a2a2a;
  --text-secondary: #3a3a3a;

  /* Accents */
  --red: #c0392b;
  --blue: #2471a3;
  --green: #1e8449;
  --purple: #7d3c98;
  --orange: #d35400;
  --gold: #d4a017;

  /* UI */
  --muted: #7a7a6a;
  --border: #d5d0c0;
  --dark: #1a1a2e;
  --teal: #a8dadc;

  /* Block backgrounds */
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

| Meaning                         | Color                | Use for                                                   |
| ------------------------------- | -------------------- | --------------------------------------------------------- |
| Positive / completes / resolves | `--green` (#1e8449)  | Things that finish, things that work, definite positions  |
| Negative / loops / stuck        | `--red` (#c0392b)    | Cycles, overflow, budget drain, things that don't resolve |
| Neutral / informational         | `--blue` (#2471a3)   | Graphs, nodes, informational elements, questions          |
| Warning / energy / motion       | `--orange` (#d35400) | Energy release, motion, change, direct edges              |
| Quantum / uncommitted           | `--purple` (#7d3c98) | Wave functions, superposition, potential connections      |
| Special / gold accents          | `--gold` (#d4a017)   | Stars, mass labels, special callouts                      |

### Block Types

**`.doc-header`** — Dark hero banner. Background: `var(--dark)`. White/teal text. Contains h1, subtitle, byline.

**`.hook`** — Opening intro block. Left border 5px solid ink. Cream background. Larger font. Sets up the chapter or document.

**`.callout .callout-{color}`** — Accent-colored sidebar blocks. 4px left border. Used for:

- `.callout-neutral` (muted border) — Author's Note, general aside
- `.callout-blue` — Important conceptual callout (used for engine/render layer definition)
- `.callout-green` — Positive/success callout
- `.callout-gold` — Special emphasis

**`.mystery-block`** — Purple-bordered callout that opens every physics chapter. Presents the weird observation and builds tension. Label: `🔍 The Mystery`. Uses `--purple` border and purple gradient background.

**`.physics-card`** — Green-bordered callout for real physics experiments. Label: `⚛ Physics Card — {Title}`. Skippable. Uses `--green` border and `--block-bg-green`.

**`.insight`** — Chapter-closing takeaway. Teal background with gradient top bar. Label: `✦ What This Means`. Italic Lora text. One paragraph summary, no jargon.

**`.principle-box`** — Numbered list of framework axioms. Black border. Each item has a numbered blue badge.

**`.claims-box`** — Numbered list of framework claims. Orange border. Each item has a numbered orange badge. Used for the "What We're Claiming" section.

**`.figure`** — White box with light border and shadow. Contains: `.scene-label` (monospace uppercase), `<svg>`, `.figure-caption` (italic, muted, with top border).

**`.gap-box`** — Gray-bordered block for honest gaps / open problems.

**`.part-header`** — Centered section divider between major parts. Top and bottom 3px black borders.

**`.summary-table`** — Reference table. Dark header row, alternating row colors.

### Layout

- Max content width: 860px, centered
- Body: `font-size: 17px`, `line-height: 1.85`
- Mobile breakpoint: 640px (reduce padding, stack grids)

---

## DOCUMENT CONTENT

---

### FRONT MATTER

#### Hero Header

- **Title:** GL Theory v20
- **Subtitle:** A guide to the universe for people who build things
- **Byline:** VERSION 20.0 · MARCH 2026 · PLAIN ENGLISH EDITION

#### Author's Note (VERBATIM — do not edit)

```
It is a curious thing to have a passion for a subject you can't quite
grasp. I would imagine this is all that is really needed for the seeds
of AI psychosis to take hold.

What follows is something of a "hobby" of mine, that while on the
surface might seem odd, to "ponder the world" as a hobby. But, I'd
argue it's actually a well-known fact that the best way to spend ANY
amount of time on ANY amount of drugs is to sit back and go
"YO what IF LIKE…"

Most of what follows is clearly by written AI, but this is more or
less the result of my "pondering"/ranting about a subject I lack the
skills to fully grasp for the last 8 or 9 years. So while the words
are AI assited but I asure you the delusions are my own.

I have not figured out the exact number yet, but I imagine the odds of
someone being committed rise significantly the moment they start
uttering the words "I have a theory of the universe".

So to try and get ahead of whoever it was that plotted to get Kayne,
I'd like to spell out what this actually is.

This is my best guess on how it could all work. Do I think it's right?
I'd say the odds are as close to zero as something can be. However, if
this somehow has any iota of a concept that inspires a thought in
someone more capable, even if born out of pure opposition, than I'd
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

> **AUTHOR NOTE (SECTION):** This is the most important opening. The reader needs the two-layer architecture IMMEDIATELY. Use Mario. Make it casual — "could be worse things than existence as a 2D Italian plumber." NO jargon. No "structurally." No "rendered output." Just plain talk.

**Hook block content:** Before we get into anything — before graphs, before physics, before any of it — I need to tell you something uncomfortable. **You are Mario.** Not metaphorically. Your reality is taking place on a screen. Now there could be worse things than an existence as a 2D Italian plumber. I don't know what they are yet, but we are off to solve the mysteries of the universe so we can maybe tackle that problem along the way too.

The key takeaway is this: what you experience as "reality" is an output. It takes place on a screen. There is an engine underneath computing your world, and you have no direct access to it.

**Content direction (after hook):** Four paragraphs:

1. This sounds insane until you realize you deal with two-layer systems every day. Your monitor shows letters, your computer stores ones and zeros. Two layers: engine (processor) and the output (monitor). We're claiming reality works the same way.
2. What you experience — space, mass, time, gravity — is the output layer. Underneath, the engine runs something simpler: a graph. Dots connected by lines. The engine computes the graph, and the output of that computation is what you experience as reality.
3. The punchline: you are a pattern of connections in an engine you can't see, being turned into the world you experience. And the only thing worse than being a 2D Italian plumber is finding out you're a graph representation of one.
4. Going forward: two layers. Engine layer (where computation happens — Nintendo console, desktop) and Render layer (what you experience — TV screen, monitor). Use whichever analogy helps.

**Blue callout block:** Define the two layers clearly:

- **The Engine Layer** — where computation happens. The actual structure of reality. Think: the Nintendo console. The desktop computer.
- **The Render Layer** — what you experience. Your "reality." The output. Think: the TV screen. The monitor.
- Note: can also call them desktop/monitor, Nintendo/TV.

##### Figure: fig-00

**ID:** fig-00
**Label:** Figure 0 — Two Layers of Reality
**Description:** Left: a TV screen showing Mario's world (stick-figure Mario, platforms, a question block) labeled "RENDER LAYER — What Mario experiences. His 'reality.'" Right: a Nintendo console with circuit board showing graph nodes and edges inside, labeled "ENGINE LAYER — Dots and lines. The actual computation." Arrow goes FROM the console TO the TV screen, labeled "produces." The engine produces the screen output.
**Caption:** Two layers. The engine computes the graph. The screen shows the output — Mario's world. Mario can't see the engine. He only sees the output. Sound familiar?

**Content direction (after figure):** Two paragraphs:

1. Before you get all up in arms and say isn't this just simulation theory — it's actually a bit more nuanced. Saying "reality is a simulation" is like saying "there's something going on." Cool, thanks. What we're proposing is a specific architecture — an engine that computes a graph, where the computation itself is what we experience as physics — and then showing that this architecture actually explains things. Weird things. Things that have baffled physicists for a century.
2. List the mysteries as teasers: Why can't you shield gravity when you can shield every other force? Why does the universe seem to "know" what you're going to measure before you measure it? Why do physics equations work perfectly backwards in time? How can two particles on opposite sides of the universe be instantly correlated? These are genuine unsolved mysteries and they all have the same answer. So let's get there.

---

#### WHAT WE'RE CLAIMING

> **AUTHOR NOTE (SECTION):** These are CLAIMS, not axioms. Stated plainly. The key change from prior versions: there is now a UNIFIED claim (claim 3) that establishes state-change operations as the single mechanism behind everything. Mass, energy, gravity, time are all the same thing going to different destinations. Don't be pretentious about it — "you don't need to get all of this now."

**Content direction:** Intro line: "Here's the overview of what we're proposing. You don't need to get all of this now — we're going to go through everything piece by piece."

**Claims box with 8 items:**

1. **There are two layers to reality.** What you experience is an output. There's an engine underneath computing it. You are Mario.

2. **The engine layer is a graph — dots connected by lines.** Space, matter, you — all graph structure. The engine computes this graph's next state, one tick at a time.

3. **Everything is state-change operations.** Each tick, the engine computes the graph. Each computation produces a return value — an operation that modifies the graph. What we call mass, energy, gravity, and time are all the same thing: state-change operations going to different destinations. _(This is the unified claim)_

4. **Mass is operations looping.** When return values feed back into the same nodes — same cycle, round and round — that's mass. Persistent computation going nowhere. It eats the engine's budget because the same nodes keep getting recomputed.

5. **Gravity is operations rewriting the graph around them.** A massive cycle doesn't just loop internally — its return values also modify the edge weights of nearby connections. It's literally rewriting the routing table around itself. That's why you can't shield it — the cycle is rewriting your shield's edges too.

6. **C is the maximum change per tick.** The engine has a fixed budget per tick. C is the most state-change that can happen in one tick. It has nothing to do with light — light is just the thing with zero mass (no loops eating budget) that moves at the max rate. C is the speed of change.

7. **Time is change.** Not a river, not a dimension. How much changed in your region between frames. Freeze time = nothing is changing. The engine didn't stop — your region's budget got consumed.

8. **You're always one frame behind.** The engine computes the entire next state, then commits it as one finished frame. You never see work in progress. This is why you can't "catch reality in the act" — and why physics equations work perfectly forwards and backwards. You're looking at a finished snapshot, not the process that produced it.

**Muted center text:** "You don't need to understand all of this yet. We're going to go through it piece by piece. By the end, it'll click."

---

### PART ONE: THE TOOLKIT

**Part header:** "Part One — The Toolkit"

> **AUTHOR NOTE (PART):** Two chapters. Fast. These teach concepts with ZERO physics. Just everyday life and computers. The reader should be through the toolkit in 15 minutes max and hungry for payoffs. The physics payoff comes immediately after in Part Two.

---

#### Chapter 1 — What Is a Graph?

**Section number:** 01
**Section title:** What Is a Graph?

> **AUTHOR NOTE (CHAPTER):** Keep it TIGHT. The reader needs: (1) graph = dots connected by lines, (2) cycle = loop that never finishes, (3) inverse graphs cancel. Then the PIVOT paragraph that connects graphs to the state-change model: the graph computes its own future. That's the trick.

##### Opening

**Content direction:** "Before we can talk about the universe being a graph, we need to talk about what a graph actually is. Good news: you already know. You just don't call it that." Explain through three compact examples: family tree, social network, recipe. Dots connected by lines.

##### Figure: fig-01

**ID:** fig-01
**Label:** Figure 1 — You Already Know What a Graph Is
**Description:** Three simple graphs side by side: a family tree (5 people, parent-child lines), a social network (6 people, friend connections), and a recipe (4 steps with directional arrows showing order: Mix → Bake → Cool → Frost).
**Caption:** These are all graphs. Dots connected by lines. That's the whole idea.

##### The Key Rule

**Content direction:** One sentence: you can't finish a dot until you've finished everything it depends on. Can't frost the cake until it's cooled.

##### Cycles: When Work Never Finishes

> **AUTHOR NOTE (SECTION):** Make cycles feel dangerous and permanent. Keep it tight.

**Content direction:** Most graphs are straightforward — A then B then C, done. But what if the lines loop back? C points to A? That's a cycle — a loop that never finishes. Permanent condition. Round and round forever. Like being stuck at a desk where your to-do list generates more to-do list. You will never get up. Remember that — cycles are one of the most important patterns in the universe.

##### Figure: fig-02

**ID:** fig-02
**Label:** Figure 2 — What Happens When a Graph Loops Back
**Description:** Two panels. Left: A→B→C simple chain in green, labeled "FINISHES ✓" with "Done!" Right: A→B→C→A loop in red, labeled "NEVER FINISHES ✗" with "∞ Forever" in the center.
**Caption:** A loop means the work never finishes. It runs forever. That permanence is going to explain mass.

##### Mirror Graphs: Opposites Cancel

**Content direction:** Some graphs are exact mirrors — every connection reversed. When they meet, they cancel. Like adding 5 and subtracting 5. Zero left. This will explain matter-antimatter annihilation later.

##### Figure: fig-03

**ID:** fig-03
**Label:** Figure 3 — When a Graph Meets Its Mirror
**Description:** Left: a small directed graph (A→B→C) in blue labeled "GRAPH." Center: its mirror (C→B→A) in red labeled "MIRROR (INVERSE)." Between them a "+" sign. Then "=" sign. Then a sparkle labeled "Nothing. They cancel."
**Caption:** When a graph meets its exact opposite, they cancel. Zero left. This will explain matter-antimatter annihilation.

##### The Pivot: Everything Is a Graph

> **AUTHOR NOTE (SECTION):** The key transition. Tone shifts from educational to provocative. "Graph foreplay is over." Then connect to the state-change model with one sentence: the graph computes its own future.

**Content direction:** "Graph foreplay is over. Here's where it gets real." When I say everything is a graph, I don't mean graphs are a useful metaphor. I mean there is no "world" as you know it. The render layer — trees, rocks, your body — is an output. The engine layer is graphs. Dots and lines. That's what's actually there. The rest is output.

You are Mario. The cartridge is full of graphs. And the way those graphs change — the way one state becomes the next — is the engine computing return values and applying them. The graph computes its own future. That's the whole trick. And we're going to use it to explain most of what physicists have spent a century arguing about.

##### What This Means (Insight)

Everything in the universe — space, matter, forces, you — can be described as dots connected by lines. Some patterns finish. Some loop forever, trapping work inside themselves. Some are mirrors of each other and cancel on contact. And the graph computes its own next state — each tick's output becomes the next tick's input. These are all the building blocks we need.

---

#### Chapter 2 — The Engine: How Reality Gets Computed

**Section number:** 02
**Section title:** The Engine: How Reality Gets Computed

> **AUTHOR NOTE (CHAPTER):** This is the most important chapter. Six beats: (1) The engine tick, (2) What the computation actually does — the unified state-change model, (3) Why cycles eat budget — iterative resolution, (4) C as maximum change per tick, (5) Mario never gets half his world — committed frames + SR-6 seed, (6) The smart kitchen — lazy evaluation. The state-change operations concept is introduced in Beat 2 and used to unify everything else. This chapter replaces and merges the old Chapters 2 and 3.

##### Beat 1: The Engine Tick

> **AUTHOR NOTE (SECTION):** Start with the CPU analogy but reframe around ticks and state. Do NOT pin the tick to Planck time or any specific measurement — the tick duration is unknowable from inside. Emphasize Mario's perspective: the tick is invisible.

**Content direction:** The engine runs in ticks. Each tick, it does one thing: computes the graph's next state. Takes the current state, walks the graph, computes every node, applies the results, produces the next state. Current state → compute → next state. That's a tick.

Your computer does the same thing. Your CPU has a clock — say 3 billion cycles per second. Each cycle, it processes instructions, fixed budget. The universe's engine works the same way. One tick at a time. Fixed budget per tick.

But here's the thing: how long does a tick "take"? We don't know. We CAN'T know. It could be instantaneous, it could take a billion years in whatever layer exists above ours. From our perspective — from Mario's perspective — the tick is invisible. We never see the computation happening. We only see the finished frames. Frame 12. Frame 13. The gap between them doesn't exist for us. Mario doesn't experience the time between frames. He just gets the next frame.

##### Figure: fig-04

**ID:** fig-04
**Label:** Figure 4 — The Engine Has a Tick and a Budget
**Description:** Left: a clock face with "TICK" label. Right: a horizontal bar labeled "BUDGET PER TICK — FIXED AMOUNT OF WORK." Simple, clean. Below: "How long is a tick? We don't know. We can't know. From inside, we only see the finished frames."
**Caption:** Each tick, the engine computes the graph's next state. Fixed budget. The tick duration is invisible from inside — Mario only sees finished frames.

##### Beat 2: What the Computation Actually Does — State-Change Operations

> **AUTHOR NOTE (SECTION):** THIS IS THE MOST IMPORTANT NEW SECTION IN THE DOCUMENT. It introduces the unified concept: return values are operations on the graph. Energy isn't a thing that lives somewhere — energy IS the state change. Mass, energy, gravity, time, expansion are all the same mechanism (state-change operations) going to different destinations. Take time to explain this clearly. Use concrete language — "modify edges, change weights, add connections."

**Content direction:** Each tick, the engine walks the graph. Every node computes its new state based on its inputs — the edges coming in from other nodes. Each computation produces a **return value**. And here's the key: that return value isn't just a number. It's an **operation**. A state change. It says: "modify these edges, change these weights, add this connection, remove that one."

When all the return values are collected and applied, the graph has changed. It's in a new state. That new state is the committed frame — what Mario sees. And that new state becomes the input to the next tick.

This is the whole universe in one sentence: **a graph computing its own next state, where the return values from each computation are the operations that produce the next state.**

Now here's the insight that makes everything click: those return values — those state-change operations — are what we call **energy**. Energy isn't a glowing substance that lives in batteries and food. Energy IS the state change. It's the operation that transforms the graph from this tick to the next.

And those operations can go to three places:

- **Loop back into the same nodes** → mass. The operations keep modifying the same subgraph, over and over. The cycle churns. Persistent. Budget-consuming.
- **Propagate outward to neighboring nodes** → released energy. The operations modify new nodes. Change ripples across the graph.
- **Create new nodes and edges** → expansion. The operations add structure. The graph grows.

Same type of thing. Three destinations. That's the entire economy of the universe.

##### Figure: fig-state-change (NEW)

**ID:** fig-state-change
**Label:** Figure 5 — The Universe Computes Its Own Next State
**Description:** Three panels. Left: graph in State S (nodes with edges, one cycle highlighted in red). Center: "COMPUTE" — each node has a small arrow showing its return value (operation). Some arrows loop back (red, "mass"), some point outward (blue, "energy"), one points to a dashed new node (green, "expansion"). Right: graph in State S' — same graph but edges modified, weights changed, one new node added. A curved arrow goes from S' back around to the left labeled "→ input to next tick." Bottom label: "Return values are operations. They modify the graph. The modified graph is the next frame. The next frame is the input to the next tick."
**Caption:** Each tick: the engine computes every node, producing return values (operations). Those operations modify the graph into its next state. That next state becomes the input to the next tick. The universe is a recursive function — output feeds back as input. That's reality.

##### Beat 3: Why Cycles Eat Budget — Iterative Resolution

> **AUTHOR NOTE (SECTION):** This replaces the old "workday overflow" analogy. Use the iterative solver analogy from real computer science — spreadsheets with circular references, Gauss-Seidel iteration. Explain WHY cycles need multiple passes and why each pass costs budget.

**Content direction:** Most nodes are straightforward. Their inputs come from other nodes that have already been computed. A depends on B, B has a value, compute A, done. One pass.

But cycles can't resolve in one pass. Node A depends on B, B depends on C, C depends on A. Nobody can finish because they're all waiting for each other. So the engine does what your computer does when a spreadsheet has circular references: it iterates. Compute A with a guess. Use that to compute B. Use B to compute C. Use C to update A. Each pass gets closer to convergence. But each pass costs budget.

The engine keeps iterating until one of two things happens: (1) the values converge (stabilize), or (2) the budget runs out. Whatever state exists when the budget is exhausted — that's the committed frame. Done. Move on.

A bigger cycle = more nodes per iteration = more budget per pass. A deeper cycle = more iterations to converge = more total budget consumed. That's why heavier things (bigger/deeper cycles) consume more budget. That's mass.

##### Figure: fig-06

**ID:** fig-06
**Label:** Figure 6 — A Cycle Needs Iterative Resolution (That Costs Budget)
**Description:** Left: a 3-node cycle (A→B→C→A) in red. Center: three stacked budget bars (Pass 1, Pass 2, Pass 3) each showing the cycle consuming a chunk (~30% red) and the rest available for other work. Right: "Same cycle. Multiple passes. Each pass costs budget. That's mass." Below the bars: small arrows showing the iteration — "Compute A → use for B → use for C → feed back to A → repeat."
**Caption:** A cycle can't resolve in one pass. The engine iterates — each pass costs budget. Bigger cycle = more budget per pass. More passes needed = more total budget consumed. That's mass.

##### Beat 4: C Is the Maximum Change Per Tick

> **AUTHOR NOTE (SECTION):** Drop "clock speed" language entirely. C is the most change that can happen in one tick. Walk through: (1) the budget limits how many operations per tick, (2) a photon has zero mass so all budget goes to propagation, (3) that max propagation per tick is what we measure as C, (4) it has nothing to do with light, (5) the "stopping time" thought experiment. Make this concrete and visceral.

**Content direction:** The engine has a fixed budget per tick. That budget limits how many state-change operations can happen. And here's what we measure as C — the "speed of light":

C is the most change that can happen in a single tick. The full budget, spent entirely on propagation — state-change operations rippling outward from node to node to node. That's C. The maximum rate of change.

A photon has no mass. No cycles. Zero budget eaten by looping operations. So ALL of its budget goes to propagation — its state changes ripple outward as far as the budget allows. That maximum distance per tick is what we measure as C.

A bowling ball has massive cycles eating budget. Less budget available for propagation. Fewer hops per tick. Slower than C.

We call C "the speed of light" because we discovered it by watching photons. But it has nothing to do with light. Light is just the thing with zero overhead that uses the full tick. C is the maximum rate of change. Period.

Now think about what it would actually MEAN to "freeze time." Everything around you stops. People mid-step. Birds mid-flight. But what IS that? Nothing is changing. Zero state-change operations in your region. The engine is still ticking — still producing frames. But YOUR region's budget got consumed. Maybe a massive cycle nearby ate everything. Other regions of the universe still update. Stars still burn. Galaxies still move. You just got nothing from that tick.

Freezing time doesn't stop the engine. It starves your region.

##### Figure: fig-c-maxchange

**ID:** fig-c-maxchange
**Label:** Figure 7 — C Is the Maximum Change Per Tick
**Description:** Three horizontal lanes. Top (blue, "PHOTON — zero mass"): full budget bar, all spent on propagation, arrow spanning full width, label "Full budget → max propagation → C." Middle (orange, "BOWLING BALL — lots of mass"): budget bar with large red chunk eaten by "cycles (mass)" and small remaining portion for propagation, shorter arrow, label "Cycles eat budget → less propagation → slower." Bottom (red, "NEAR BLACK HOLE — extreme mass"): budget bar almost entirely red "cycles," tiny sliver remaining, almost no arrow, label "Almost all budget consumed → almost no change → time nearly stopped."
**Caption:** C is what the full budget looks like when nothing eats it. A photon gets the full budget — max change per tick. A bowling ball's cycles eat most of it. Near a black hole, the budget is almost gone. Nothing to do with light. Everything to do with budget.

##### Beat 5: Mario Never Gets Half His World

> **AUTHOR NOTE (SECTION):** Do NOT use the term "double buffering." Use the Mario analogy. The reader needs: (1) entire frame computed before committing, (2) you only see finished frames, (3) you're always one frame behind. ALSO plant the SR-6 seed here: because the engine computes the whole graph before committing, the committed frame has no trace of the computation order. No preferred direction. No preferred frame.

**Content direction:** When you play Mario, you never see half a frame. Mario gets his entire world, fully formed, every single frame. The console computes the ENTIRE frame in the background, then flips it to the screen all at once. While you're looking at Frame 12, the engine is computing Frame 13. You — Mario — are always one frame behind.

Reality works the same way. The engine computes the entire state of everything, commits it, and THAT is what you experience. You never see work in progress.

This seems like a nerdy technical detail. It's not. It's going to explain why physicists have been tearing their hair out for 80 years over experiments where the universe seems to know the future. Spoiler: it doesn't know the future. There's just no "during" — only "before the frame commits" and "after the frame commits."

And one more thing: because the engine computes the ENTIRE graph before committing, the committed frame has no trace of how it was computed. Whether the engine walked the graph left-to-right, right-to-left, inside-out, random order — the output is the same. The result doesn't care about the process. That's going to explain why physics has no preferred direction — no "this way is special" — because you're looking at the result, not the work that produced it.

##### Figure: fig-07

**ID:** fig-07
**Label:** Figure 8 — Mario Never Gets Half His World
**Description:** Left: a clean, complete frame (smiley face, platforms) with solid green border, labeled "WHAT MARIO SEES — Frame N — Clean. Complete. Committed." Right: a half-drawn frame with construction lines and dashed red border, labeled "BEING COMPUTED — Frame N+1 — Messy. In progress. Mario can't see this." Between them: "you are always one frame behind."
**Caption:** Mario sees Frame N while the engine computes Frame N+1. He never sees work in progress. He's always one frame behind. Reality works the same way.

##### Beat 6: The Smart Kitchen (Lazy Evaluation)

> **AUTHOR NOTE (SECTION):** Compress from old standalone chapter. Connect to state-change model: the strict consumer forces a pending operation to commit into a definite one.

**Content direction:** One more engine rule. The engine is smart — it doesn't compute answers nobody needs.

Restaurant analogy: dumb chef pre-cooks everything (wasteful, insane). Smart chef has recipe book but only cooks what's ordered. Customer = strict consumer. No customer, no dish — just a recipe.

A basketball: 10²⁶ atoms, every one demanding values from its neighbors. Everything gets computed and committed. Every tick. But a lone photon in empty space? Nobody nearby needs its value. No strict consumer. The engine knows how to compute it (has the recipe) but doesn't produce a definite answer because nobody's asking.

Connect to state-change model: "The strict consumer doesn't just 'observe' the particle. It forces a pending state-change operation to commit. The operation was pending — possible connections, possible values, nothing decided. The strict consumer's computation REQUIRES a definite input, so the engine resolves the pending operation into a definite one. That's what physicists call 'collapse.'"

##### Figure: fig-08

**ID:** fig-08
**Label:** Figure 9 — Dumb Kitchen vs. Smart Kitchen
**Description:** Left panel (red, "DUMB KITCHEN"): overwhelmed chef stick figure surrounded by dishes everywhere, trash can nearby, "Cooks everything. Most goes in the trash." Right panel (green, "SMART KITCHEN"): calm chef with recipe book, only 2 dishes being cooked, "Knows all recipes. Only cooks what's ordered."
**Caption:** A smart engine only produces finished answers when something needs them. This is called lazy evaluation, and it's going to explain quantum mechanics.

##### What This Means (Insight)

The engine computes the graph's next state, one tick at a time. Each computation produces state-change operations — and those operations ARE energy. When they loop back (mass), propagate out (released energy), or build new structure (expansion), that's the entire economy of the universe. Cycles eat budget because they need iterative resolution. C is the max change per tick — nothing to do with light. You always see the finished frame, never the work in progress. And the engine only commits definite answers when something demands one. That's the whole toolkit. Let's explain the universe.

---

#### THE FIVE AXIOMS (Interlude)

> **AUTHOR NOTE (SECTION):** Appears AFTER the toolkit. The reader understands every concept. Restate as formal axioms with callbacks. Updated to reflect the state-change operations model.

**Principle box title:** "The Five Axioms — Now That You Speak the Language"

```
1. ONE GRAPH — The engine layer is a graph. Dots and lines. Space is the large-scale shape. Stuff is the local structure — loops, clusters, edges.

2. ONE RULE — Each tick, the engine computes the graph's next state. Every node computes, produces a return value (a state-change operation), and those operations modify the graph into the next frame. Output feeds back as input. The universe is recursive.

3. GRAPH OPERATIONS — Things interact by connecting. Mirror graphs cancel on contact. Connections can be committed (definite) or uncommitted (possible). State-change operations can loop (mass), propagate (energy), or build (expansion).

4. BUDGET — Fixed work per tick. Cycles eat budget through iterative resolution — each pass costs operations. C is the ceiling: the maximum change per tick.

5. LAZY EVALUATION — No definite answer until something demands one. The engine knows all recipes. It only cooks what's ordered. Strict consumers force pending operations to commit.
```

**Muted center text:** "Five ideas. That's the whole framework. Now let's use them to explain the universe."

---

### PART TWO: THE UNIVERSE THROUGH THE FRAMEWORK

**Part header:** "Part Two — The Universe Through the Framework"

> **AUTHOR NOTE (PART):** Every chapter opens with a mystery block. The tone escalates. Chapter order: Mass/Energy → Gravity → Space → Time → Quantum → Entanglement → Expansion. Mass pays off loops + state-change immediately. Gravity pays off the rewriting insight. Space needs mass/gravity context. Time needs all three + Fibonacci/recursive engine. Quantum needs lazy eval + committed frames. Entanglement is graph structure. Expansion is the victory lap.

---

#### Chapter 3 — What Is Mass? And What Is Energy?

**Section number:** 03
**Section title:** What Is Mass? And What Is Energy?

> **AUTHOR NOTE (CHAPTER):** First physics payoff. The UNIFIED explanation: mass and energy aren't two things — they're the same thing (state-change operations) going to different destinations. The mystery block sets up E=mc². The c² explanation is key: budget × propagation rate = budget² = c². Hamster wheel metaphor still works but reframed: it's producing operations that feed back into itself. Annihilation = mirror graphs cancel, all operations escape.

##### Mystery Block

**Mystery content:** Here's something that should bother you: mass and energy are the same thing. Einstein proved it in 1905. A paperclip contains enough energy to flatten a city. But WHY? Why would stuff contain astronomical amounts of trapped energy? And why is the conversion factor the speed of LIGHT, squared? What does light have to do with a paperclip? Physicists can use the equation. But "why c²" has never had a satisfying intuitive answer.

##### Tension

**Content direction:** Think about it. Mass just sits there. A rock on a table. Not moving, not glowing. Where is all that energy hiding? And when you release it — nuclear bomb, annihilation — where does it come FROM?

##### Framework Answer — The Unified Explanation

> **AUTHOR NOTE (SECTION):** This is where the unified state-change model pays off for the first time. Mass and energy are the same thing. Don't treat them as two phenomena the framework explains separately.

**Content direction:** "The answer is that mass and energy aren't two different things. They're the same thing — state-change operations — going to different destinations."

Every tick, the engine computes the graph. Every computation produces return values — operations that modify the graph. When those operations loop back into the same nodes, that's mass. When they propagate outward, that's energy. Same stuff. Different destination.

E=mc² is what happens when you force the operations to change destination — from looping to propagating.

##### Mass: The Hamster Wheel (reframed)

**Content direction:** The hamster wheel isn't just "consuming budget." It's producing state-change operations every iteration — operations that modify edges, rewrite weights — but those operations feed right back into the same cycle. Same nodes getting rewritten by their own output, over and over. From the render layer: a stable, persistent thing sitting on a table. From the engine layer: furious activity going nowhere.

A heavier thing is a bigger cycle — more nodes, more operations per iteration, more budget consumed. The rock on your table is running a permanent computation. You just can't see it because you're Mario.

##### Figure: fig-14

**ID:** fig-14
**Label:** Figure 10 — Same Operations, Three Destinations
**Description:** Three panels. Left (blue, "ENERGY"): arrows propagating outward from a node, "Operations propagate outward. State changes ripple to new nodes." Center (red, "MASS"): stick figure running in a hamster wheel with arrows looping, "Operations loop back. Same nodes getting rewritten. Same cycle." Right (green, "EXPANSION"): nodes building new connections, "Operations create new structure. New nodes, new edges."
**Caption:** Every tick, the engine produces state-change operations. They go one of three places: out (energy), back in (mass), or into building new graph (expansion). Same type of thing. Three destinations. That's the entire economy of the universe.

##### E=mc²: When the Loop Breaks — WITH the c² Explained

> **AUTHOR NOTE (SECTION):** Break the loop → operations change destination from looping to propagating. Explain c²: the amount of operations trapped per tick relates to the budget (C), and they propagate outward also at C. Work × propagation = C × C = c².

**Content direction:** When the cycle breaks, those operations that were looping back now propagate OUTWARD. Same operations, new destination. The surrounding graph gets hit with a wave of state changes that were previously trapped.

How much energy? All the operations per tick (which is related to C — the budget) times the propagation rate (also C — because that's how fast operations can ripple outward). That's C × C = c². Not a magic number. The budget squared. Because the trapped work AND the escape rate are both governed by the same budget.

The engine's budget is enormous — C is roughly 300 million meters per second. Squared: ~9 × 10¹⁶. That's why a paperclip could power a city. The engine is fast as hell.

When a particle meets its antiparticle (mirror graph from Chapter 1), they cancel completely. All cycles vanish. Every operation that was looping now propagates. 100% conversion. Total annihilation.

##### Figure: fig-16

**ID:** fig-16
**Label:** Figure 11 — Break the Loop and Mass Becomes Energy
**Description:** Left: intact 3-node loop in red, labeled "BEFORE: LOOP INTACT — Mass. Stable. Operations looping." Center: scissors icon with "BREAK!" Right: scattered nodes with energy arrows and lightning bolts radiating outward, labeled "AFTER: OPERATIONS ESCAPE — Same operations, new destination. E = mc²."
**Caption:** Break the loop and all the trapped operations escape outward. c² = budget × propagation rate. The engine's budget is enormous. That's why a paperclip could power a city.

##### Physics Card: E = mc²

Einstein showed in 1905 that mass and energy are interchangeable. The c² factor (~9 × 10¹⁶) is why tiny mass = astronomical energy. Nuclear weapons exploit partial conversion. Antimatter annihilation achieves total conversion.

##### Physics Card: Matter-Antimatter Annihilation

When an electron meets a positron (its antimatter mirror), they annihilate — 100% mass to energy as photons. In this framework: mirror graphs cancel, all cycles vanish, all trapped operations escape.

##### What This Means (Insight)

Mass and energy aren't two different things. They're state-change operations going to different destinations. Looping back into the same nodes? Mass — persistent, budget-consuming, going nowhere. Propagating outward to new nodes? Energy — change rippling across the graph. Break the loop and mass becomes energy. c² is the engine's budget squared — trapped work times propagation rate. That's why tiny mass = city-leveling energy.

---

#### Chapter 4 — What Is Gravity?

**Section number:** 04
**Section title:** What Is Gravity? And Why Can't You Block It?

> **AUTHOR NOTE (CHAPTER):** Three mysteries in the opening: (1) can't shield it, (2) indistinguishable from acceleration, (3) no graviton. Four major beats: Activity Monitor as gravity, The cycle is literally rewriting the graph (NEW — the key insight), Spacetime as routing table, Why you can't block it (resolved through rewriting). The fish-in-water analogy still works but now it's sharper: the cycle's operations are rewriting your shield's edges.

##### Mystery Block

**Mystery content:** Gravity is weird. A suspicious kind of weird.

Four forces: electromagnetic, strong nuclear, weak nuclear, gravity. First three can be shielded. Radiation → lead. EM fields → Faraday cage. Strong force → doesn't even reach past the nucleus. But gravity? Never found a way. Not with any material, field, or arrangement. Nothing blocks it.

Einstein's equivalence principle: NO experiment from inside a sealed room can tell if you're in gravity or accelerating. None. Elevator on Earth vs. rocket in space — identical. Why would a "force" be identical to acceleration?

Physicists spent decades hunting the graviton — the carrier particle. Never found one. Every other force has a carrier. Gravity? Nothing.

Three clues. Three ways gravity is fundamentally different. Maybe it's not a force at all.

##### Beat 1: How Budget Drains Work in Real Machines

**Content direction:** Activity Monitor / Task Manager. Chrome eating 78% CPU. Everything else slows. Not because Chrome sent a message — they share hardware. Chrome is eating the shared budget. Closer processes = more affected. Farther = barely notice. That's gravity. Mass (a cycle) drains budget. Closer in graph = more affected. Farther = less.

##### Figure: fig-activity-monitor

**ID:** fig-activity-monitor
**Label:** Figure 12 — Your Computer Already Does This
**Description:** Left: Activity Monitor showing Chrome at 78% CPU, other processes slow. Right: massive star node (gold) with nearby nodes (red, slow) and far nodes (green, fast). Both sides labeled to show the parallel.
**Caption:** Same effect. Same reason. A massive object doesn't "pull" things. It drains the shared budget. Everything nearby gets less. That's gravity.

##### Beat 2: The Cycle Is Literally Rewriting the Graph Around It (NEW KEY SECTION)

> **AUTHOR NOTE (SECTION):** This is the key new insight for gravity. The cycle's return values aren't ONLY feeding back into the cycle. They ALSO modify the edge weights of neighboring nodes. The cycle is actively rewriting the surrounding graph structure — its computation produces operations that change edge costs. This makes gravity concrete: not an abstract "drain" but specific operations modifying specific edges. Every tick.

**Content direction:** Here's what makes gravity different from just "a heavy process slowing things down." The cycle isn't only eating budget — it's actively rewriting the graph around it.

Remember: return values are operations. They modify edges, change weights, rewire connections. A cycle's return values mostly loop back into itself — that's the mass part. But not ALL of them. Some of those operations modify the edges of neighboring nodes. They increase edge weights. They change the routing costs.

The cycle is literally rewriting the routing table around it. Not metaphorically. Its computation produces operations that change the surrounding graph structure. Every tick. The more massive the cycle (more operations per iteration), the more it rewrites. The closer you are (fewer hops), the more your edges get modified.

THAT is gravity. Not a force. Not a signal. A computation that rewrites the graph around itself as a side effect of its own cycling.

##### Beat 3: Spacetime IS the Routing Table

**Content direction:** Your computer has routing tables — maps saying "to get data from A to B, go here, cost X." Network routers too. The engine needs the same — which nodes, what order, cheapest paths.

That routing table — connections, costs, cheapest paths — is what we experience as spacetime.

No mass: all edges cost the same, cheapest path is straight = flat spacetime. Mass present: cycle rewriting nearby edges to higher costs = cheapest paths curve. That curve is gravity. Einstein described it perfectly, called it curved spacetime. He didn't say WHY mass curves spacetime. This framework answers: because the massive cycle's operations are rewriting the edge costs around it. Spacetime IS the routing table, and the cycle is literally rewriting it.

##### Figure: fig-routing

**ID:** fig-routing
**Label:** Figure 13 — Spacetime Is a Routing Table
**Description:** Left (green): uniform grid, all costs "1", straight path A→B, "Flat routing table — no mass." Right (red): same grid but massive node M in center, nearby costs "5", "8", far costs "1". Path A→B curves around M. "Warped routing table — mass rewriting edge costs."
**Caption:** Left: no mass, flat routing table, straight paths. Right: mass is rewriting nearby edge costs, cheapest path curves. That curve is gravity. Einstein called it curved spacetime. We call it a routing table being rewritten by a cycle.

##### Beat 4: Why You Can't Block It

**Content direction:** Now the three clues dissolve:

**Can't shield it** — the cycle's operations are rewriting edges. Including your shield's edges. You can't stop a computation from modifying the graph you're part of. Other forces send signals THROUGH edges (photons, gluons) — break the edges, block the signal. But gravity isn't a signal. It's the edges being rewritten.

##### Figure: fig-22

**ID:** fig-22
**Label:** Figure 14 — Why You Can't Build a Gravity Shield
**Description:** A fish in water holding a sign "NO CURRENT." Current lines flow right through fish and sign. Label: "The cycle's operations rewrite edges — including the shield's edges. You're part of the graph being computed. You can't opt out."
**Caption:** The cycle's return values rewrite the graph around it — including anything you build as a shield. You can't opt out of the computation you're part of.

**Indistinguishable from acceleration** — acceleration = moving through graph, connections being rewired, costs budget. Gravity = cycle nearby eating budget. Either way: less budget for your state transitions. Same experience. No difference at the engine level.

**No graviton** — nothing being transmitted. Gravity is the graph being rewritten by a cycle's operations. "What particle carries gravity?" = "What particle carries network congestion?" Nothing. It's a system property.

##### Physics Card: Gravitational Lensing

1919, Eddington: stars near the sun appeared shifted during eclipse. Light follows cheapest path through the routing table. Near mass, cheapest path curves. Einstein predicted exactly this.

##### Physics Card: Black Holes

A black hole = cycle so massive that iterative resolution consumes the entire budget. Zero budget remaining. Zero state changes. The engine keeps ticking but nothing in that region gets updated. Not "gravity so strong light can't escape" but "no budget left for anything to happen." And unlike GR's prediction of a singularity — infinite density — there's nothing infinite here. The cycle is finite. The budget is finite. The computation just doesn't finish. Budget exhaustion, not mathematical breakdown.

##### Physics Card: Gravitational Waves

2015, LIGO: ripples from black holes merging 1.3 billion light-years away. When mass changes, the cycle's rewriting pattern changes — the edge-weight modifications propagate outward. Confirmed at C — changes to the routing table propagate at the maximum rate.

##### What This Means (Insight)

Gravity isn't a force. It's a massive cycle whose operations rewrite the edge weights of the surrounding graph. Everything follows the cheapest path through the rewritten routing table — and those paths curve toward mass. You can't block it because the cycle is rewriting your edges too. You can't tell it from acceleration because both cost the same budget. There's no graviton because nothing is being sent — the graph itself is being rewritten. Einstein's curved spacetime is a routing table being actively modified by a computation. Every tick.

---

#### Chapter 5 — What Is Space?

**Section number:** 05
**Section title:** What Is Space?

> **AUTHOR NOTE (CHAPTER):** Space comes AFTER mass and gravity because the reader understands graph weights and routing distortion. Mystery: space has minimum size + holographic principle. Mario 64 for holographic principle. Position (committed vs uncommitted edges) bridges to quantum. No changes from prior version except minor language updates (avoid "rendered").

##### Mystery Block

**Mystery content:** Space has a minimum size. Below ~10⁻³⁵ meters, equations break. Not "need better instruments" — math itself breaks. Space is granular. Like zooming into a photo and finding pixels.

And: all info in a 3D volume can be described by its 2D surface. Not approximately — FULLY. Info in a room scales with wall area, not volume. The holographic principle. Makes no sense if space is a container.

##### Framework Answer

**Content direction:** Space isn't a box. It's the large-scale pattern of connections in the graph. Distance = hops. Zoom out far enough, hops look smooth. That smoothness is "space."

##### Figure: fig-11

**ID:** fig-11
**Label:** Figure 15 — Space Is the Graph's Shape, Seen From Different Distances
**Description:** Three panels at increasing zoom. Left (ZOOMED IN): individual dots and lines. Center (MEDIUM ZOOM): dense mesh. Right (ZOOMED OUT): smooth flowing shape.
**Caption:** Up close: dots and lines. Zoom out: a mesh. More: smooth curves. That's "space." The connections ARE the space.

##### Distance Is Hops

**Content direction:** Two nodes connected by 3 intermediate nodes? Close. Billion nodes between? Far. No invisible "space" underneath. The connections ARE the distance.

##### Position = Committed Connections

**Content direction:** Being "somewhere" = committed (solid) connections to specific neighbors. Not definite = uncommitted (dotted) to many possible neighbors. That's superposition.

##### The Holographic Principle: Mario 64 on a 2D Screen

**Content direction:** Super Mario 64: 3D castles, depth, volume. But the screen is flat. 2D. Everything encoded on a 2D surface.

Physicists found the same: Bekenstein showed black hole info scales with surface AREA, not volume. 't Hooft, Susskind formalized it: all info in 3D can be encoded on 2D boundary. Like a hologram.

In this framework: the engine doesn't need to organize in 3D. It stores info however is efficient. The 3D experience is the output. The engine's storage might be a 2D surface. You are Mario 64 — 3D experience, 2D information.

##### Physics Card: The Holographic Principle

1993, 't Hooft: information in any volume encoded on boundary. Bekenstein: black hole entropy scales with area. AdS/CFT (Maldacena, 1997): lower-dimensional boundary fully describes higher-dimensional bulk. In framework: engine encodes info however it wants; 3D experience is the output.

##### What This Means (Insight)

Space isn't a box. It's the graph's shape — connections between everything. Distance is hops. Minimum size is one node (one pixel). The 3D world might be an output from information stored on a 2D surface — like Mario 64 on a flat screen. No space "under" the graph. The graph is all there is.

---

#### Chapter 6 — What Is Time?

**Section number:** 06
**Section title:** What Is Time? (And Why Does It Run Differently in Different Places?)

> **AUTHOR NOTE (CHAPTER):** Mystery: equations work backwards + time dilation. "Mario's time" = change, not ticks. Key NEW sections: (1) The Fibonacci / Recursive Engine section explaining the arrow of time, (2) Why equations work backwards — they describe the committed frame (snapshot), arrow is in the computation. NO TIME TRAVEL. Motion eats budget → velocity dilation. GPS makes it real.

##### Mystery Block

**Mystery content:** Every fundamental equation works perfectly backwards. Newton, Maxwell, Einstein, Schrödinger — reverse them, still valid. Drop a ball: falls. Backwards: rises. Both valid solutions.

But reality has a direction. Eggs break, don't unbreak. You age. Big Bang. There IS an arrow.

Where is the arrow? Where in the equations does it say "time goes this way"? Nowhere. No equation contains the arrow. Century-long argument.

And: time runs at different speeds. Clocks near Earth tick slower than orbital clocks. Not broken — genuinely fewer ticks. They AGE less.

##### Framework Answer

**Content direction:** Time isn't a thing. Time is change. How many state-change operations happened in your region between frames. That's all it is. We measure time by counting changes — clock ticks, pendulum swings, heartbeats. Every "clock" is just a change-counter.

##### Mario's Time

**Content direction:** Mario's time = updates his region gets per frame. More budget → more changes → "faster time." Pause the game → Mario doesn't wait — nothing DID happen. No changes. No time.

The engine tick and Mario's "time" are completely different things. The engine tick is the computation cycle — invisible to Mario. Mario's time is the change he observes between frames.

##### Figure: fig-17

**ID:** fig-17
**Label:** Figure 16 — Same Tick, Different Budgets, Different Time
**Description:** Left (green, "CLOCK IN EMPTY SPACE"): clock face, budget bar mostly available for state transitions (95 units), tiny portion for other tasks. "Lots of change. Lots of 'time.'" Right (red, "CLOCK NEAR A STAR"): clock face, star nearby eating 45 units, only 55 left. "Less change. Less 'time.'" Subtitle: "Same engine tick. Same total budget. The star ate the budget."
**Caption:** Same engine tick. Same total budget. But the star's cycle ate the budget. Fewer state-change operations. Fewer ticks. The clock genuinely aged less.

##### GPS — This Is Real

**Content direction:** GPS satellites orbit high, less mass, more budget, faster clocks. Difference: ~45 μs/day. Without correction: 10km drift per day. Every satellite adjusts. Your phone depends on time dilation being real.

##### The Recursive Engine — Why Time Has a Direction (NEW)

> **AUTHOR NOTE (SECTION):** The Fibonacci analogy. The engine is recursive: each tick's output feeds the next tick's input. This dependency chain IS the arrow of time. Grade 11 math teachers beaming. This resolves the century-long mystery of where the arrow comes from.

**Content direction:** Here's something that will make every grade 11 math teacher beam with pride.

Remember the Fibonacci sequence? 1, 1, 2, 3, 5, 8, 13... Each number is computed from the two before it. You can't compute the 5th term without the 4th. You can't get the 4th without the 3rd. There's an order. A dependency chain. The computation only runs one direction.

The engine works the same way. Each tick's return values — the state-change operations — become the input to the next tick. Tick 4's output feeds Tick 5. Tick 5's output feeds Tick 6. You can't run Tick 5 without Tick 4's output because Tick 5's input IS Tick 4's output.

The universe is a recursive function. Each frame is computed from the previous frame. That dependency chain IS the arrow of time.

##### Why Physics Equations Work Backwards (NEW)

> **AUTHOR NOTE (SECTION):** Direct payoff. Equations describe the committed frames (snapshots). Snapshots have no direction. The arrow is in the computation, one layer deeper.

**Content direction:** Now you know why every equation works backwards. The equations describe the committed frames. The snapshots. The output. A photograph has no arrow — run the film forward or backward, same frames. The equations describe what's in the photograph. Of course they work both ways.

The arrow isn't missing. It's one layer deeper. In the computation that produced the frames. Like Fibonacci: you can LOOK at the sequence backwards (13, 8, 5, 3, 2, 1, 1) but the computation that GENERATED it only runs one direction.

The arrow of time lives in the engine. Not in the equations. The equations describe the output. The arrow describes the process.

And sorry — no time travel. The computation only runs forward. Each tick's output is committed and becomes the next tick's input. You can't un-compute a frame. The function ran. The result committed. No undo.

Grade 11 math teachers everywhere are beaming with pride right now.

##### Motion Eats Budget Too

**Content direction:** Moving fast = connections being rewired (old dropped, new formed). Rewiring costs budget (state-change operations spent on structural modification). Faster = more rewiring = more budget consumed = less for internal state = less time. At light speed, ALL budget → motion, zero internal changes, zero time. The "speed limit" isn't a rule — it's a budget cap. C is the maximum. Can't spend more than exists.

##### Physics Card: The Muon

Cosmic muons: created ~15km up, decay in 2.2μs, should travel ~660m. Reach the ground at 99.5% C. Almost all budget consumed by motion. Almost none for internal decay. They experience less time.

##### Physics Card: The Twin Paradox

Twin A home, Twin B near-light-speed travel. B is genuinely younger — fewer state-change operations, fewer cell divisions, fewer heartbeats. Confirmed by atomic clocks on aircraft and GPS.

##### What This Means (Insight)

Time is not a river. Time is change — how many state-change operations happened in your region between frames. Near mass, fewer happen (mass ate the budget). Moving fast, fewer happen (motion ate the budget). At light speed, NONE happen. The equations work backwards because they describe finished snapshots — photographs with no arrow. The arrow lives in the engine's computation direction: each tick's output feeds the next tick's input, like Fibonacci. The computation only runs forward. No time travel.

---

#### Chapter 7 — The Quantum World

**Section number:** 07
**Section title:** The Quantum World: Why Small Things Act So Strange

> **AUTHOR NOTE (CHAPTER):** Mystery: double-slit + quantum eraser. Payoff for lazy eval + committed frames. Key insight for quantum eraser: the engine computes the WHOLE graph before committing — there is no "before" and "after" during computation. Connect to the SR-6 seed from Chapter 2: the engine computes everything as one graph, order doesn't matter, the committed frame is the result.

##### Mystery Block

**Mystery content:** Double-slit: particles form interference pattern (wave). Detector at slit → pattern vanishes. Looking changed the outcome.

Quantum eraser: run with detector, AFTER particle hits screen, erase which-path info. Sort results. Pattern COMES BACK for erased subsets. Particle already hit screen. Dot already there. How can erasing info AFTER THE FACT change an already-recorded pattern? As if the universe reached back in time.

Confirmed hundreds of times. Real. Seems to violate causality.

##### Tension

**Content direction:** Four options: (1) particles are magic, (2) universe knows the future, (3) reality doesn't exist until you look, (4) we're misunderstanding "before" and "after." Let's talk about option 4.

##### Smart Kitchen Revisited

**Content direction:** Callback to Ch 2 chef. Particle in flight — nobody needs definite position. No strict consumer. Engine walks all possible paths but doesn't commit. Pending operations, not definite ones.

##### Figure: fig-23

**ID:** fig-23
**Label:** Figure 17 — Before Anyone Asks vs. After Someone Asks
**Description:** Left (purple, "WAVE FUNCTION — BEFORE"): central node with dotted lines to ~7 possible positions. "Pending operations. Nothing committed." Right (green, "MEASURED — AFTER"): same node with ONE thick solid line to ONE neighbor. "One definite operation. One definite position."
**Caption:** Left: nobody's asking — pending operations, nothing committed. Right: someone asks — one operation commits, one definite answer. That's quantum mechanics.

##### The Double-Slit

**Content direction:** Four steps: (1) particle approaches, nobody asking. (2) Engine computes paths through BOTH slits — pending, neither committed. (3) Pending paths overlap on screen — where they line up: bright, where they cancel: dark. (4) Screen is strict consumer (10²⁶ atoms demanding definite inputs). Forces commitment → one dot. Over thousands → interference bands.

##### Why a Detector Ruins the Pattern

**Content direction:** Camera at slit = strict consumer demanding a definite answer. Forces the pending operation to commit. Once committed, one path. No overlap. No interference. Camera didn't "disturb" the particle. It demanded a definite input. The pending operation committed.

##### The Off-By-One: Why the Quantum Eraser Isn't Time Travel

> **AUTHOR NOTE (SECTION):** CRITICAL. Callback to "Mario never gets half his world" AND the SR-6 seed. The engine computes the ENTIRE graph as one computation. It doesn't process slit-then-screen-then-eraser in sequence. It computes the whole setup, resolves all dependencies, and commits. There is no "before" and "after" during computation.

**Content direction:** Remember: Mario never gets half his world. The engine computes the ENTIRE graph before committing. It doesn't matter what order things "happen" in. The engine doesn't process slit-then-screen-then-eraser in sequence. It computes the whole setup as one graph, resolves all dependencies (iterating through cycles as needed), and commits.

There is no "before" and "after" during computation. There's only the uncommitted state being resolved and the committed frame that results.

The quantum eraser doesn't change the past. There is no "past" during computation. The engine sees the whole setup: source, slits, detectors, the eraser that will be applied. It computes the result of the complete configuration. The eraser is part of the INPUT, not something that happens "after."

You're not retroactively changing a result. You're changing the inputs to a computation that hasn't been committed yet. Like editing a spreadsheet formula before hitting Enter.

##### Why Basketballs Don't Do This

**Content direction:** Basketball: 10²⁶ atoms, every one a strict consumer. Every pending operation gets forced to commit instantly. No uncommitted operations survive. Too many customers in the kitchen.

##### Physics Card: Decoherence

Isolated particles maintain pending operations easily. Warm, dense environments: commitment happens instantly. More neighbors = more strict consumers. Main quantum computing challenge: keeping qubits isolated.

##### Physics Card: The Quantum Eraser (Detailed)

Kim et al. (1999): entangled pairs, one hits screen, other preserves or erases which-path info. When erased (even after partner hit screen), interference reappears in sorted subset. Not time travel — engine computed whole setup as single graph. Sorting data = applying filter to already-committed frame.

##### What This Means (Insight)

Quantum behavior isn't strange. It's lazy evaluation. The engine computes every possibility but only commits definite operations when something demands one. Small isolated things: nobody asking, operations stay pending. Big dense things: everything demanding, operations commit immediately. The quantum eraser isn't time travel — the engine computes the entire graph as one computation, then commits. There is no "during." There is no "after the fact." The whole frame is computed at once.

---

#### Chapter 8 — Entanglement

**Section number:** 08
**Section title:** Entanglement: The Universe's Shortcut

> **AUTHOR NOTE (CHAPTER):** Mystery: Einstein's "spooky action," Bell's theorem, 2022 Nobel. Framework: direct edge (shortcut) persists. Three-panel story. Why not FTL communication. Keep tight.

##### Mystery Block

**Mystery content:** Einstein: "spooky action at a distance." Two particles interact, separate, fly apart. Measure one — other INSTANTLY has correlated value. Not light-speed. Instantly.

Bell (1964): correlations too strong for hidden info. Something connects them. 2022 Nobel Prize confirmed.

How?

##### Framework Answer

**Content direction:** Direct edge. Shortcut. When particles interact, they form a direct connection — 1 hop. They separate, scenic route grows. But direct edge persists. Still 1 hop. Resolution travels the shortcut regardless of scenic route length.

##### Figure: fig-27

**ID:** fig-27
**Label:** Figure 18 — Entanglement Is a Shortcut That Persists
**Description:** Three panels. ① "THEY MEET": two nodes close, thick orange edge. ② "THEY SEPARATE": same nodes far apart, gray intermediate nodes (scenic route: many hops), but orange edge still connects — "still 1 hop." ③ "ONE IS MEASURED": scientist measures one, resolution arrow travels direct edge — "Both get definite values."
**Caption:** Direct edge persists regardless of separation. Resolution travels the shortcut. One hop. That's entanglement.

##### Why Not FTL Communication

**Content direction:** Neither scientist learns what question the other was asked. Correlated answers, but random. Can't encode messages. Must compare via regular signal at light speed. Like two people opening envelopes from the same deck.

##### Physics Card: Bell's Theorem

1964: correlations too strong for local hidden variables. Something nonlocal. 2022 Nobel (Aspect, Clauser, Zeilinger). In framework: direct edge IS the nonlocal connection.

##### What This Means (Insight)

Direct edge — a shortcut that persists. Resolution travels through it, not the scenic route. One hop regardless of distance. Not spooky. Graph structure that doesn't care about the long way around.

---

#### Chapter 9 — Why Is the Universe Expanding?

**Section number:** 09
**Section title:** Why Is the Universe Expanding? (And Getting Bigger Faster?)

> **AUTHOR NOTE (CHAPTER):** Victory lap. Mystery: accelerating expansion, dark energy never detected. Framework: state-change operations create new graph structure. More graph → more computation → more operations → more graph. Positive feedback. No dark energy needed.

##### Mystery Block

**Mystery content:** Hubble (1929): galaxies flying apart. 1998: accelerating. "Dark energy" — 68% of universe. Never detected. Biggest component, completely invisible. Suspicious.

##### Framework Answer

**Content direction:** What if nothing is pushing? State-change operations can create new nodes and edges. More graph → more computation → more operations → some create more structure → more graph. Positive feedback. Snowball.

##### Figure: fig-29

**ID:** fig-29
**Label:** Figure 19 — The Graph Grows Itself
**Description:** Three graphs increasing left to right with "compute →" arrows. Left (5 nodes), center (~12 nodes), right (~40 nodes). Bottom: "More graph → more computation → more operations → more graph."
**Caption:** Computation produces operations. Some operations create new structure. More structure = more computation = more operations. Growth proportional to size = acceleration.

##### Physics Card: The Expanding Universe

Hubble (1929), Perlmutter/Schmidt/Riess (1998, Nobel 2011). Standard physics requires dark energy — 68%, never detected. In framework: no separate substance. Acceleration IS the graph growing through its own computation.

##### What This Means (Insight)

The universe expands because computation creates structure. Every tick: more graph → more computation → more operations → more structure. Snowball. Acceleration isn't a mysterious force. The graph computes itself into existence. No "dark energy" needed.

---

### PART THREE: WHAT WE DON'T KNOW

**Part header:** "Part Three — What We Don't Know"

#### Chapter 10 — Honest Gaps

**Section number:** 10
**Section title:** Honest Gaps

> **AUTHOR NOTE (CHAPTER):** Critical for credibility. No overselling. Updated from prior version: (1) Lorentz symmetry downgraded from gap to "needs formal proof" — we have the confluent computation argument but haven't proven it, (2) Energy conservation during expansion added, (3) Black hole singularity prediction highlighted. Keep honest and undefensive.

**Content direction:** "A framework that claims to explain everything is a story, not a theory. These gaps are real and hard."

**Gap box items:**

1. **Can't derive Einstein's exact equations from graph structure.** The #1 problem. Qualitative match is strong — budget drain, routing distortion, curved paths. But we haven't derived G*μν + Λg*μν = 8πG/c⁴ T_μν from first principles. Without the math, it's an analogy, not a derivation.

2. **Can't prove the computation is confluent.** We claim the committed frame is the same regardless of traversal order (which explains why physics has no preferred direction). But we haven't formally proven the graph computation has a unique fixed point. If different traversal orders could produce different frames, the framework would predict violations of Lorentz symmetry that aren't observed. This is a formal-proof gap, not a conceptual one — the mechanism is sound, the proof is missing.

3. **Can't explain why space is 3D.** The graph could produce any number of dimensions. Why three? What about the connectivity constrains this?

4. **Can't explain specific particles.** Electrons, quarks, neutrinos have specific masses, charges, and properties. What determines which cycles map to which particles? "Particles are cycles" doesn't tell us which cycles.

5. **Can't prove the Born rule.** Why probability = amplitude squared? We explain THAT measurement produces definite outcomes (strict consumers forcing commitment) but not WHY the probabilities follow the squaring rule.

6. **Can't explain spin.** Electron needs 720° rotation. No graph operation produces this.

7. **Can't explain charge quantization.** Every proton has exactly the same charge. Why?

8. **Can't fully account for energy conservation during expansion.** If return values create new graph structure, and new structure means new cycles (new mass), the total energy accounting must be consistent. Standard cosmology handles this with negative gravitational potential energy. We need a graph equivalent.

9. **Can't explain the hierarchy problem.** Gravity 10³⁶ times weaker than electromagnetism. Why?

10. **No unique experimental prediction — with one possible exception.** The framework reproduces standard physics qualitatively. Necessary but not sufficient. A framework indistinguishable from current theory isn't yet physics. HOWEVER: the framework predicts no singularity at the center of black holes — budget exhaustion instead of infinite density. If quantum gravity observations become possible, this could be testable.

Close with: "These are genuine obstacles. Any one could invalidate the whole picture. That's how science works — you lay out what you think, lay out where it breaks, and hope someone smarter can do what you couldn't."

---

### PART FOUR: REFERENCE TABLE

**Part header:** "Part Four — Everything Mapped"

#### Chapter REF — The Complete Reference Table

**Section number:** REF
**Section title:** The Complete Reference Table

> **AUTHOR NOTE (CHAPTER):** Quick-reference lookup. Updated with state-change operations language, refined C/time definitions, and new rows for Lorentz symmetry and singularity prediction.

**Content direction:** Summary table:

| Physics Concept          | In This Framework                                                                     | Computer Analogy                                              |
| ------------------------ | ------------------------------------------------------------------------------------- | ------------------------------------------------------------- |
| Space                    | Large-scale graph shape, connectivity pattern                                         | Network topology, hop count = distance                        |
| Position                 | Committed edges to specific neighbors                                                 | Pointer to specific memory address                            |
| Mass                     | Operations looping back into same subgraph. Iterative resolution consuming budget.    | Infinite loop consuming CPU, circular spreadsheet references  |
| Energy                   | State-change operation. Return value of computation. Also input to next tick.         | Function output that feeds next function call. Recursive.     |
| E = mc²                  | Break cycle → operations change destination from looping to propagating. c² = budget² | Terminate infinite loop, flush stack as output                |
| Antimatter               | Inverse (mirror) graph                                                                | Function whose output negates another's                       |
| Annihilation             | Mirror graphs cancel, cycles vanish, all operations escape                            | Composed opposite functions = zero residue                    |
| Time (engine tick)       | One computation cycle. Duration unknowable from inside.                               | One CPU cycle. Programs can't perceive individual cycles.     |
| Time (experienced)       | Change. How many state-change operations in your region per tick.                     | Instructions executed per cycle, varies with load             |
| Arrow of time            | Recursive dependency — each tick's output feeds next. Like Fibonacci.                 | Program execution order — can't un-run code                   |
| Time dilation (gravity)  | Mass cycles eat budget → fewer operations for other things                            | Heavy process consuming CPU → less throughput for others      |
| Time dilation (velocity) | Motion rewiring costs operations                                                      | Data transfer consuming bandwidth                             |
| Speed of light (C)       | Maximum state-change per tick. What one full tick of budget looks like from inside.   | Max throughput per cycle. Not a limit — a capacity.           |
| Gravity                  | Cycle's operations rewriting surrounding edge weights every tick                      | Heavy process rewriting routing table as side effect          |
| Can't shield gravity     | Cycle rewrites your edges too. You're part of the graph being computed.               | Can't block congestion when you're on the same network        |
| Equivalence principle    | Acceleration and gravity both cost operations the same way                            | CPU load from motion vs. from processes: same effect          |
| Spacetime                | The graph's routing table — edge weights and cheapest paths. Rewritten every tick.    | Network routing table, updated with topology changes          |
| Black hole               | Budget exhaustion. Cycle consumes entire budget. Zero remaining operations.           | One process at 100% CPU. Everything else frozen.              |
| Black hole singularity   | No singularity. Budget exhaustion, not infinity. Computation doesn't finish. 🔮       | Process timeout, not stack overflow. Finite, not infinite.    |
| Gravitational waves      | Changes in cycle rewriting pattern propagating outward at C                           | Routing table updates propagating through network             |
| Wave function            | Pending operations, not yet committed                                                 | Lazy thunk — defined but not forced                           |
| Collapse                 | Strict consumer forces pending operation to commit                                    | Forcing a lazy thunk, evaluating and caching                  |
| Superposition            | Node with pending operations to multiple possible neighbors                           | Unevaluated expression with multiple possible results         |
| Interference             | Multiple pending paths overlap, amplitudes add/cancel                                 | Multiple path evaluations combining or canceling              |
| Decoherence              | More strict consumers → faster commitment of pending operations                       | More consumers of lazy value → higher chance of forcing       |
| Quantum eraser           | Whole graph computed as one before committing. No "after the fact."                   | Editing spreadsheet formula before pressing Enter             |
| Entanglement             | Direct edge (shortcut) persists regardless of distance                                | Shared pointer — same data regardless of memory distance      |
| Lorentz symmetry         | Confluent computation — committed frame independent of traversal order                | Deterministic function — same output regardless of eval order |
| Committed frame          | See Frame N while N+1 computes. Always one behind.                                    | GPU displays current frame while computing next               |
| Holographic principle    | Graph info encoded on boundaries, output as 3D                                        | Mario 64: 3D game on 2D screen                                |
| Expansion                | Operations creating new nodes/edges. Graph grows itself.                              | Self-modifying code, expanding codebase                       |
| Accelerating expansion   | Growth proportional to current size. Positive feedback.                               | Exponential growth — more code → more output → more code      |
| Planck length            | Minimum graph spacing — one node                                                      | One pixel — minimum addressable unit                          |
| Planck time              | Appears to be smallest measurable time unit. May correspond to one engine tick.       | Smallest measurable cycle. The tick itself is invisible.      |

---

### FOOTER

```
GL Theory v20: A Guide to the Universe for People Who Build Things — Version 20.0 — March 2026
Framework developed by Greg. Plain English Edition.
"The delusions are my own."
```

---

## END OF SOURCE DOCUMENT
