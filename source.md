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
- `.callout-blue` — Important conceptual callout
- `.callout-green` — Positive/success callout
- `.callout-gold` — Special emphasis

**`.physics-card`** — Green-bordered callout for real physics experiments. Label: `⚛ Physics Card — {Title}`. Skippable. Uses `--green` border and `--block-bg-green`.

**`.insight`** — Chapter-closing takeaway. Teal background with gradient top bar. Label: `✦ What This Means`. Italic Lora text. One paragraph summary, no jargon.

**`.principle-box`** — Numbered list of framework principles. Black border. Each item has a numbered blue badge.

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

#### Hook (intro block)

> **AUTHOR NOTE (SECTION):** This should be inviting and low-pressure. Three short paragraphs. Make it clear: no physics degree needed, no CS degree needed. You'll learn cool stuff either way. The "at most you'll see a pattern" line is important — it's the promise without overselling.

**Content direction:** Explain that this document tries to explain physics mysteries using five ideas from computers. Not metaphors — structural parallels. No degrees needed. At minimum you learn cool stuff about the universe. At most you see a pattern connecting it all.

#### The Framework at a Glance

A principle-box with five items. Plant seeds — no explanation yet. Reader returns to this after Chapter 3 and everything clicks.

```
1. ONE GRAPH — Reality is dots connected by lines. That's it.
2. ONE RULE — Each tick, everything updates. One input, one output.
3. GRAPH OPERATIONS — Things interact by connecting. Opposites cancel.
4. BUDGET — There's a speed limit on how much work gets done per tick.
5. LAZY EVALUATION — The engine doesn't compute answers nobody asked for.
```

Follow with a centered muted note: "You don't need to understand any of these yet. By the end, you will."

---

### PART ONE: THE BUILDING BLOCKS

**Part header:** "Part One — The Building Blocks"

> **AUTHOR NOTE (PART):** These three chapters teach concepts with ZERO physics. Just everyday life and computers. The reader should not feel like they're "learning physics" yet. They're learning about graphs, engines, and lazy kitchens. The physics payoff comes in Part Two.

---

#### Chapter 1 — Dots and Lines: What is a Graph?

**Section number:** 01
**Section title:** Dots and Lines: What is a Graph?

> **AUTHOR NOTE (CHAPTER):** This is the most important chapter to get right because everything builds on it. The reader needs to walk away understanding three things: (1) a graph is dots connected by lines, (2) a cycle is a loop that never finishes, (3) inverse graphs cancel. Keep it dead simple. The family tree / social network / recipe examples work perfectly — use all three.

##### Opening

> **AUTHOR NOTE (SECTION):** Open with "You already know what a graph is. You just don't call it that." This immediately disarms any math anxiety.

**Content direction:** Explain graphs through three everyday examples: family tree (people = dots, relationships = lines), social network (friends = dots, connections = lines), recipe (steps = dots, "must do first" = lines). Establish that a graph is dots connected by lines. Mention that mathematicians have fancier words (nodes, edges) but the picture is always the same.

##### Figure: fig-01

**ID:** fig-01
**Label:** Figure 1 — You Already Know What a Graph Is
**Description:** Three simple graphs side by side: a family tree (4 people, parent-child lines), a social network (5 people, friend connections), and a recipe (4 steps with directional arrows showing order).
**Caption:** These are all graphs. Dots connected by lines. That's the whole idea.

##### The Key Rule

**Content direction:** Explain that you can't finish a dot until you've finished everything it depends on. Use the recipe: can't frost the cake until you've baked it.

##### Cycles: When Work Never Finishes

> **AUTHOR NOTE (SECTION):** Make cycles feel dangerous and permanent. The reader needs to viscerally understand that a loop NEVER resolves. The stuck-at-desk metaphor is good. This sets up mass in Chapter 5.

**Content direction:** Most graphs are straightforward — A then B then C, done. But what if the lines loop back? What if C points back to A? That's a cycle — a loop that never finishes. It's not just an annoyance — it's one of the most important patterns in the universe.

##### Figure: fig-02

**ID:** fig-02
**Label:** Figure 2 — What Happens When a Graph Loops Back
**Description:** Three panels. Left: A→B→C simple chain, labeled "FINISHES ✓" in green. Center: A→B→C→A loop, labeled "NEVER FINISHES ✗" in red, with "∞ Forever." Right: Stick figure trapped at desk with paperwork piling up, thought bubble "I'll never get up."
**Caption:** A loop means the work never finishes. It runs forever.

##### Mirror Graphs: Opposites Cancel

**Content direction:** Some graphs are exact mirrors — every connection reversed. When they meet, they cancel. Like adding 5 and subtracting 5. Zero left. This will explain matter-antimatter annihilation later.

##### Figure: fig-03

**ID:** fig-03
**Label:** Figure 3 — When a Graph Meets Its Mirror
**Description:** Left: a small directed graph in blue labeled "GRAPH." Center: its mirror (arrows reversed) in red labeled "MIRROR (INVERSE)." Between them a "+" sign. Then "=" sign. Then a sparkle/poof labeled "Nothing — They cancel."
**Caption:** When a graph meets its exact opposite, they cancel. Zero left. This will explain matter-antimatter annihilation.

##### What This Means (Insight)

Everything in the universe can be described as dots connected by lines. Some patterns loop forever. Some patterns are mirrors of each other and cancel out. That's it. That's the basic building block.

---

#### Chapter 2 — The Engine: Clock Ticks and Budgets

**Section number:** 02
**Section title:** The Engine: Clock Ticks and Budgets

> **AUTHOR NOTE (CHAPTER):** The engine concept is the second pillar. The reader needs to internalize: (1) there's a clock that ticks, (2) each tick has a fixed budget, (3) overflow carries forward as a stack, (4) you only see the finished frame. The workday analogy (8 hours, to-do list) is the right one. Double buffering is important — it explains why we're always looking at the past and why physics equations are time-symmetric.

##### Opening

> **AUTHOR NOTE (SECTION):** Start from something everyone knows — your phone has a chip, it follows instructions. Then scale up: imagine the universe works the same way.

**Content direction:** Your phone has a chip. It follows instructions one step at a time, ~3 billion times per second. Each tick, a fixed amount of work. Now imagine an engine that runs the universe the same way. One clock. One tick at a time. A fixed budget of work per tick.

##### Figure: fig-04

**ID:** fig-04
**Label:** Figure 4 — The Engine Has a Clock and a Budget
**Description:** Left: a clock face with "TICK" label. Right: a horizontal bar labeled "BUDGET PER TICK — 100 UNITS OF WORK." Simple, clean.
**Caption:** Each tick, the engine has a fixed budget. It processes everything on its list, up to the limit.

##### When Work Overflows

**Content direction:** Workday analogy. 8 hours = budget. 6-hour to-do list = done with spare. 12-hour to-do list = overflow, 4 hours carry to tomorrow. Carried-over work = a stack of unfinished tasks.

##### Figure: fig-05

**ID:** fig-05
**Label:** Figure 5 — Work That Fits vs. Work That Overflows
**Description:** Left panel (green): budget bar with 6hrs of work fitting inside 8hr bar, labeled "FITS IN BUDGET — All done! Energy left over." Right panel (red): budget bar full, 4hrs spilling over as dashed box pointing to "next tick," labeled "OVERFLOWS BUDGET."
**Caption:** If work fits in the budget, it completes. If it overflows, the leftover carries to the next tick.

##### Cycles Eat Budget Forever

> **AUTHOR NOTE (SECTION):** This is the bridge from "abstract graph concept" to "this explains mass." Make the connection explicit: the loop from Chapter 1 never finishes, so it overflows EVERY tick. Forever. That permanent budget drain is going to be mass.

**Content direction:** Connect Chapter 1's loop to the budget concept. A cycle never finishes → it overflows every tick → permanent stack → permanent budget drain. Foreshadow: "Remember that — it's going to explain mass."

##### Figure: fig-06

**ID:** fig-06
**Label:** Figure 6 — A Loop is a Permanent Budget Drain
**Description:** Three identical ticks side by side. Each shows the same A→B→C→A loop and a budget bar where the loop consumes the same chunk (e.g., 30/100) each tick. Label: "Same loop. Same budget consumed. Every tick. Forever."
**Caption:** A loop is a permanent stack. It runs every tick, consuming budget every tick, forever.

##### Double Buffering: You Only See the Finished Result

> **AUTHOR NOTE (SECTION):** Double buffering is subtle but important. It explains why we're "always looking at the past" and why physics equations are time-symmetric (the rendered frame is a static snapshot with no inherent direction).

**Content direction:** Video on your phone: you see the finished frame while the next one is being computed. You never see work in progress. This is double buffering. You're always looking one tick behind.

##### Figure: fig-07

**ID:** fig-07
**Label:** Figure 7 — You're Always Looking at the Finished Frame
**Description:** Left: clean finished frame (smiley face, labeled "WHAT YOU SEE — Frame N — Clean. Finished. Committed."). Right: half-drawn frame with construction lines (labeled "BEING COMPUTED — Frame N+1 — Messy. In progress."). Arrow between them: "you are always one tick behind."
**Caption:** You see Frame N while the engine computes Frame N+1. You never see the work in progress. You're always one behind.

##### What This Means (Insight)

There's an engine. It runs on a clock. Each tick, it has a budget of work it can do. Most work finishes and moves on. But loops never finish — they consume budget every tick, forever. And you only ever see the finished result, never the work in progress.

---

#### Chapter 3 — The Engine Doesn't Compute Answers Nobody Asked For

**Section number:** 03
**Section title:** The Engine Doesn't Compute Answers Nobody Asked For

> **AUTHOR NOTE (CHAPTER):** This is where it gets fun. Lazy evaluation is the key that unlocks quantum mechanics. But DON'T do quantum yet. Just establish the principle through the restaurant analogy. The basketball vs. photon comparison at the end is the bridge to Part Two. The reader should finish this chapter thinking "oh... so quantum weirdness is just a kitchen that doesn't cook food nobody ordered?"

##### Opening

**Content direction:** "Here's something that sounds obvious but changes everything: a smart computer doesn't compute answers nobody needs."

##### The Restaurant Analogy

> **AUTHOR NOTE (SECTION):** The dumb kitchen vs. smart kitchen contrast needs to be vivid. Dumb kitchen = overwhelmed chef, food everywhere, most wasted. Smart kitchen = calm chef with a recipe book, only cooking what's ordered. The CUSTOMER is the strict consumer.

**Content direction:** Restaurant kitchen with full menu. Chef could pre-cook everything (wasteful, insane). Smart chef waits for orders. The customer who orders = the strict consumer. Without a customer, the dish stays as a recipe (a plan, not a product).

##### Figure: fig-08

**ID:** fig-08
**Label:** Figure 8 — Dumb Kitchen vs. Smart Kitchen
**Description:** Left panel (red): "DUMB KITCHEN" — overwhelmed chef stick figure surrounded by dishes everywhere, trash can nearby, caption "Cooks everything. Most goes in the trash." Right panel (green): "SMART KITCHEN" — calm chef with recipe book, only 3 dishes being cooked, caption "Knows all recipes. Only cooks what's ordered."
**Caption:** A smart engine only produces finished answers when something needs them. This is called lazy evaluation.

##### The Basketball vs. the Photon

> **AUTHOR NOTE (SECTION):** This is the "aha" setup for all of quantum mechanics. Don't resolve it here — just plant the seed. Basketball = dense, everything demands answers from everything, all resolved. Photon in empty space = alone, nobody asking, stays as a recipe.

**Content direction:** A basketball: 10²⁶ atoms, each demanding values from neighbors. Everything gets resolved immediately. Every tick. A photon in empty space: nothing nearby needs its value. Nobody's asking. It stays as a recipe, not a dish.

##### Figure: fig-09

**ID:** fig-09
**Label:** Figure 9 — When Everything Asks vs. When Nobody Asks
**Description:** Left: basketball (big circle) filled with tiny demanding dots, speech bubbles saying "I NEED YOUR VALUE!" — labeled "10²⁶ atoms, each demanding answers. Everything gets resolved." Right: single dot in empty space with dashed circle of emptiness around it, thought bubble "Nobody's asking me anything..." — labeled "Nothing nearby needs its value. Stays as a recipe."
**Caption:** A basketball: everything is demanding answers, everything is resolved. A lone photon: nobody's asking, so no definite answer is produced.

##### What This Means (Insight)

The engine computes everything, but only produces definite answers when something NEEDS one. Things surrounded by demanding neighbors (like atoms in a basketball) always get definite answers. Things floating alone (like a photon in space) don't — they stay as possibilities until something asks.

---

### INTERLUDE: The Five Principles Revisited

> **AUTHOR NOTE (SECTION):** This is the payoff for the "Framework at a Glance" card from the front matter. The reader now understands every concept. Restate each principle with a one-sentence callback to what they learned. This should feel like "oh, NOW I get it."

**Content direction:** Now that you understand graphs, engines, budgets, and lazy evaluation, restate the five principles with callbacks to the chapters.

##### Figure: fig-10

**ID:** fig-10
**Label:** Figure 10 — The Framework, Now That You Speak the Language
**Description:** Five horizontal cards stacked vertically, each with a numbered blue badge and two lines of text. Each principle gets a one-sentence callback:

1. ONE GRAPH — Remember dots and lines? That's everything. Space is the pattern. Stuff is the local connections.
2. ONE RULE — Each tick, everything updates. Like your CPU: one clock, one step, every time.
3. GRAPH OPERATIONS — Things interact by connecting their dots. Mirror graphs cancel.
4. BUDGET — There's a cap on work per tick. Loops eat it forever. That's mass.
5. LAZY EVAL — No answer until someone asks. That's why quantum stuff is weird.
   **Caption:** Five ideas. That's the whole framework. Now let's use them to explain the universe.

---

### PART TWO: THE UNIVERSE THROUGH THE FRAMEWORK

**Part header:** "Part Two — The Universe Through the Framework"

> **AUTHOR NOTE (PART):** This is where we pay off all the setup. Each chapter follows the pattern: (1) the cool observation in plain English, (2) how the framework explains it, (3) physics cards for curious readers, (4) "What This Means." The tone should escalate — the reader should feel the framework gaining explanatory power with each chapter.

---

#### Chapter 4 — What is Space?

**Section number:** 04
**Section title:** What is Space? (It's the Graph's Shape)

> **AUTHOR NOTE (CHAPTER):** The key insight: space isn't a container, it's the graph's shape seen from far away. The three-zoom-levels figure is crucial — it shows the same thing at different scales. "Distance = hops" needs to land hard. The position section (committed vs uncommitted edges) is the bridge to quantum — committed edges = definite position, uncommitted edges = superposition.

##### Opening

**Content direction:** Most people think space is a big empty container — a box that holds stuff. This framework says the opposite. There is no box. Space is the large-scale pattern of connections. Distance = how many hops between nodes. Zoom out far enough and the hops look smooth. That smoothness is what we call space.

##### Figure: fig-11

**ID:** fig-11
**Label:** Figure 11 — Space is the Graph's Shape, Seen From Different Distances
**Description:** Three panels at increasing "zoom out." Left (ZOOMED IN): individual nodes and edges visible, dots and lines. Center (MEDIUM ZOOM): denser mesh, zigzag pattern emerges. Right (ZOOMED OUT): smooth flowing curves — this is what we call "space."
**Caption:** Space is the graph's shape, seen from far enough away. Up close it's dots. Far away it's smooth.

##### Figure: fig-12

**ID:** fig-12
**Label:** Figure 12 — Distance is Just the Number of Hops
**Description:** Left (green): two nodes connected by short path (3 hops), labeled "NEAR — 3 HOPS." Right (red): two nodes connected by long path with many intermediate dots and ellipsis, labeled "FAR — MANY HOPS." Bottom text: "There's no invisible 'space' the graph sits in. The connections ARE the distance."
**Caption:** There's no separate "space" containing the graph. The hops ARE the distance.

##### Position = Having Definite Connections

**Content direction:** Being "somewhere" = committed connections to specific neighbors (solid lines). Not being "somewhere" = uncommitted connections to many possible neighbors (dotted lines). That's what superposition actually means.

##### Figure: fig-13

**ID:** fig-13
**Label:** Figure 13 — Being 'Somewhere' vs. Being 'Undecided'
**Description:** Left (green): node with thick solid lines to 3 specific neighbors, labeled "DEFINITE POSITION — Solid connections. 'I am HERE.'" Right (purple): node with dotted lines fanning out to ~10 possible neighbors, labeled "NO DEFINITE POSITION — Dotted connections. 'I could be anywhere.'"
**Caption:** Being "somewhere" means having definite connections. Being "in superposition" means the connections haven't been decided yet.

##### Physics Card: The Planck Scale

Physicists discovered that below ~10⁻³⁵ meters (the Planck length), our equations stop working. In this framework, that's the graph's minimum spacing — nothing smaller than one node. The Planck time (~10⁻⁴⁴ seconds) is one tick of the engine.

##### What This Means (Insight)

Space isn't a box that holds the universe. Space is the SHAPE of the graph — the pattern of connections between everything. Distance is how many hops separate two things. When you "move," your connections to neighbors are being rewired. There's no space "under" the graph. The graph is all there is.

---

#### Chapter 5 — What is Mass? And What is Energy?

**Section number:** 05
**Section title:** What is Mass? And What is Energy?

> **AUTHOR NOTE (CHAPTER):** This is the big payoff for chapters 1 and 2. Cycles + budget = mass. Return values = energy. Three destinations for return values: energy (exits), mass (loops back), expansion (builds new graph). The E=mc² moment should hit hard — "break the loop and everything escapes." The hamster wheel metaphor is perfect for mass. Annihilation (mirror graphs from Ch1 meeting and canceling) ties it together.

##### Opening

**Content direction:** When the engine finishes a computation, it produces a return value — an output. That return value goes one of three places: out (energy), back into the loop (mass), or into building new connections (expansion).

##### Figure: fig-14

**ID:** fig-14
**Label:** Figure 14 — Every Computation Produces a Result. It Goes One of Three Places.
**Description:** Three panels side by side. Left (blue, "ENERGY"): arrows propagating outward from a node, stick figure waving goodbye, "Result goes OUT." Center (red, "MASS"): stick figure running in a hamster wheel (cycle), "Result loops BACK IN." Right (green, "EXPANSION"): stick figure building a bridge between two nodes, "Result BUILDS new graph."
**Caption:** Every tick, the engine produces results. They go one of three places: out (energy), back in (mass), or into building new graph (expansion).

##### Mass: The Hamster Wheel

> **AUTHOR NOTE (SECTION):** Mass should feel heavy and permanent and inescapable. A loop that never stops. Budget consumed every tick. The hamster wheel.

**Content direction:** The loop from Chapter 1 + the budget from Chapter 2. Every tick, the engine processes the cycle. Every tick, it produces a return value. But instead of going somewhere useful, the result feeds right back in. Round and round. Forever. That's mass. Heavier = bigger loop = more budget consumed.

##### Figure: fig-15

**ID:** fig-15
**Label:** Figure 15 — Mass is a Loop That Never Stops Eating Budget
**Description:** Left: a 4-node cycle with recycling arrow. Right: three stacked budget bars (Tick 1, Tick 2, Tick 3) each showing the same chunk consumed by "loop" (red, ~30%) and the rest for "other work." Label: "Same drain. Every tick. That's mass."
**Caption:** Mass is a loop that runs every tick, consuming budget every tick, feeding its own results back into itself. It never stops.

##### E = mc²: When the Loop Breaks

> **AUTHOR NOTE (SECTION):** This is the most dramatic moment in the first half of the document. The reader should feel the explosion. Break the loop → everything trapped inside escapes → all at once → as energy. That's a nuclear bomb. Then connect to annihilation: mirror graphs from Chapter 1 cancel, loops vanish, total conversion.

**Content direction:** When the loop breaks — when something destroys the cycle — all those trapped results escape. All at once. As energy. That's E = mc². That's a nuclear bomb. And when a particle meets its antiparticle (its mirror from Chapter 1), they cancel completely. Total conversion.

##### Figure: fig-16

**ID:** fig-16
**Label:** Figure 16 — Break the Loop and Mass Becomes Energy
**Description:** Left: intact loop (red, 3 nodes cycling), labeled "BEFORE: LOOP INTACT — Mass. Stable. Contained." Center: scissors icon with "BREAK!" Right: nodes scattered, energy arrows radiating outward with lightning bolt symbols, labeled "AFTER: ENERGY ESCAPES — Everything trapped inside escapes. All at once."
**Caption:** Break the loop and everything trapped inside escapes as energy. That's E = mc². That's a nuclear bomb.

##### Physics Card: E = mc²

Einstein showed in 1905 that mass and energy are interchangeable. E = mc². A paperclip contains enough energy to power a city. Nuclear weapons, reactors, and PET scanners all exploit this. The c² factor is why tiny mass = astronomical energy.

##### Physics Card: Matter-Antimatter Annihilation

When an electron meets a positron (its antimatter mirror), they annihilate completely — converting 100% of their mass into energy as photons. Routinely observed in particle accelerators and PET scanners.

##### What This Means (Insight)

Mass is stuck energy. It's work that loops forever, consuming budget every tick, feeding its own results back into itself. Energy is work that finished and went somewhere. They're the same thing — return values from computation — just going to different destinations. Break the loop and mass becomes energy. E = mc².

---

#### Chapter 6 — What is Time?

**Section number:** 06
**Section title:** What is Time? (And Why Does It Run Differently in Different Places?)

> **AUTHOR NOTE (CHAPTER):** Time as a counter, not a river. The two-clocks figure is the money shot — same tick, same total budget, but one clock is near a star (mass ate the budget) so it ticked fewer times. Make it visceral: "This is not a trick. This is not perception. The clock genuinely ticked fewer times." GPS example makes it concrete and real. Three levels of time (engine/experienced/rendered) is subtle but important. Velocity dilation = motion costs budget too. The speed of light = budget cap, not a rule.

##### Opening

**Content direction:** Most people think time is a river. This framework says time is a counter — how many state changes happened to you since the last tick. And the counter is different in different places because budget is different in different places.

##### Figure: fig-17

**ID:** fig-17
**Label:** Figure 17 — Same Tick, Different Budgets, Different Time
**Description:** Left (green): "CLOCK IN EMPTY SPACE" — clock face with happy expression, budget bar showing only 5 units used for small tasks, 95 for clock ticking. "Clock ticks: 95." Right (red): "CLOCK NEAR A STAR" — clock face with tired expression, star nearby eating 40 units, only 55 left for clock. "Clock ticks: 55."
**Caption:** Same engine tick. Same total budget. But the clock near the star had less budget available — so it ticked fewer times. That's time dilation.

##### Make It Real

> **AUTHOR NOTE (SECTION):** Don't let the reader dismiss this as theoretical. This is REAL. GPS depends on it. Every day. The atoms genuinely aged differently.

**Content direction:** "This is not a trick. This is not perception." The clock near the star genuinely ticked fewer times. Fewer state changes. Fewer electron transitions. It AGED less.

##### Figure: fig-18

**ID:** fig-18
**Label:** Figure 18 — Your Phone Depends on This Being Real
**Description:** GPS satellite high up (far from Earth, fast clock), phone on ground near Earth (slow clock). Callout box: "DIFFERENCE: ~45 μs/day — Without correction, your GPS would be off by 10km per day."
**Caption:** GPS satellites correct for time dilation every day. Your phone's location accuracy depends on it.

##### Three Levels of Time

**Content direction:** Engine time = master clock, ticks the same everywhere. Experienced time = how much happened to you, depends on budget, this is what dilates. Rendered time = the committed frame, a static snapshot with no inherent direction (explains why physics equations are time-symmetric). Arrow of time = computation direction. You can't un-run a function.

##### Figure: fig-19

**ID:** fig-19
**Label:** Figure 19 — Three Things We Call "Time"
**Description:** Three panels. Left (blue, "ENGINE TIME"): steady clock, "The master clock. Ticks the same everywhere. Always." Center (orange, "EXPERIENCED TIME"): two stick figures — one running fast, one moving slowly near a heavy ball — "How much happened to you. Depends on available budget. Dilates." Right (purple, "RENDERED TIME"): a photograph/snapshot — "A snapshot. Static. No direction. That's why equations work both ways." Bottom text: "The arrow of time is the computation direction."
**Caption:** Engine time never changes. Experienced time depends on your budget. Rendered time is a static snapshot — the committed frame.

##### Motion Eats Budget Too

**Content direction:** Moving fast = rewiring connections (old dropped, new formed). Rewiring costs budget. Faster = more rewiring = more budget consumed = less for internal state = less time experienced. That's why moving clocks run slow.

##### Figure: fig-20

**ID:** fig-20
**Label:** Figure 20 — Moving Fast Means Rewiring Your Connections (That Costs Budget)
**Description:** Stick figure moving right, trailing dotted lines behind (old connections, red, "dropped") and forming solid lines ahead (new connections, green, "new"). Budget bar showing "motion (rewiring)" chunk and smaller "internal state changes" chunk. Labels: "More motion → less budget for you → fewer internal changes → less time."
**Caption:** Moving fast means constantly rewiring your graph connections. That costs budget. Less budget left for internal state changes.

##### Physics Card: The Muon

Cosmic rays create muons in the upper atmosphere (~15km up). They decay in 2.2 microseconds — should only travel ~660 meters. But they reach the ground. Their clocks run ~10x slower at 99.5% light speed. Confirmed by every experiment.

##### Physics Card: The Twin Paradox

Twin A stays home. Twin B flies to a star at near-light speed and returns. Twin B is younger. Confirmed by atomic clocks on aircraft and satellites. Not a thought experiment — reality.

##### What This Means (Insight)

Time is a counter: how many state changes happened to you since the last tick. Near mass, fewer happen (mass ate the budget). Moving fast, fewer happen (motion ate the budget). At the speed of light, NONE happen — all budget goes to movement. The speed limit isn't a rule — it's a budget cap. You can't spend more than exists.

---

#### Chapter 7 — What is Gravity?

**Section number:** 07
**Section title:** What is Gravity? (And Why Can't You Block It?)

> **AUTHOR NOTE (CHAPTER):** Gravity as routing distortion, not a force. The flat-vs-warped graph figure is the centerpiece. Activity Monitor analogy is perfect for making it feel intuitive. The "why you can't block it" section is the unique insight — other forces travel through connections, gravity IS the connections. The fish-in-water analogy nails it. Three physics cards here: lensing, black holes, gravitational waves.

##### Opening

**Content direction:** Four forces in physics. Three can be blocked. Gravity can't. Nothing shields it. Why? Because gravity isn't a force. It's a routing distortion — the budget drain from mass warping connections around it.

##### Figure: fig-21

**ID:** fig-21
**Label:** Figure 21 — Flat Space vs. Space Warped by Mass
**Description:** Left (green, "FLAT SPACE — NO MASS"): uniform grid with straight path from A to B. "All edges cost the same. Shortest path is straight." Right (red, "NEAR MASS — WARPED"): same grid but warped/curved around a heavy node M. Path from A to B curves around M. "Edges near mass cost more. Cheapest path CURVES around it."
**Caption:** Flat space: all connections cost the same, shortest path is straight. Near mass: costs are warped, cheapest path curves. That curve is gravity.

##### The Activity Monitor Analogy

**Content direction:** Open Activity Monitor. Find the heaviest app. Watch everything else slow down. The heavy app didn't send a "go slow" message. They share hardware. It's eating the shared budget. That's gravity.

##### Why You Can't Block It

> **AUTHOR NOTE (SECTION):** This is one of my favorite parts. Every other force uses connections as a medium — break the connections, block the force. But gravity IS the connections. Your shield is made of connections. The drain flows through the shield itself. The fish-in-water analogy makes this visceral.

**Content direction:** Every other force travels through connections — break them with a shield. Gravity isn't traveling through connections. Gravity IS the connections. The budget drain flows through the connections themselves. Your shield is made of connections. The drain flows through your shield.

##### Figure: fig-22

**ID:** fig-22
**Label:** Figure 22 — Why You Can't Build a Gravity Shield
**Description:** A fish in water holding a sign that says "NO CURRENT." The current (wavy lines) flows right through the fish and the sign. Label: "A shield is made of the same stuff gravity flows through. You can't block the current when you ARE the current."
**Caption:** You can't build a gravity shield for the same reason a fish can't block a current. The shield is made of the medium the drain flows through.

##### Physics Card: Gravitational Lensing

In 1919, Arthur Eddington photographed stars during a solar eclipse. Stars near the sun's edge appeared shifted — light bending around the sun, following the cheapest path through warped space. Einstein predicted exactly this.

##### Physics Card: Black Holes

A black hole is where mass is so concentrated that budget drain = 100%. Zero budget left. Zero state changes. Time stops. Nothing propagates out. The event horizon isn't a barrier — it's where the budget hits zero.

##### Physics Card: Gravitational Waves

In 2015, LIGO detected ripples from two black holes merging 1.3 billion light-years away. When mass changes, the changing budget drain propagates outward as waves — edge weights oscillating.

##### What This Means (Insight)

Gravity is not a force pulling things together. It's a budget drain that distorts the connections around mass. Everything follows the cheapest path through the distorted network — and those paths curve toward mass. Einstein described this distortion perfectly. He called it curved spacetime. It's a routing table warped by a congested node.

---

#### Chapter 8 — The Quantum World

**Section number:** 08
**Section title:** The Quantum World: Why Small Things Act So Strange

> **AUTHOR NOTE (CHAPTER):** This is the longest and most important chapter. It's the payoff for lazy evaluation (Ch 3). The double-slit experiment is the main event — the 4-panel comic strip format works. Key insight: the engine walks every possible path but doesn't commit until a strict consumer demands it. "Observation" isn't magic — it's a strict consumer forcing resolution. The basketball (Ch 3 callback) explains why big things don't do this. The detector-ruins-it explanation must be clear: the camera didn't "disturb" the particle, it demanded an answer.

##### Opening

> **AUTHOR NOTE (SECTION):** Callback to the smart kitchen. The chef knows every recipe but only cooks what's ordered. Now: a particle in flight, nobody needs its position. Nobody ordered the soufflé.

**Content direction:** Callback to Ch 3. Chef knows recipes, only cooks orders. A particle in flight — nothing needs its definite position. No strict consumer. Engine walks the recipe (computes all possible paths) but doesn't produce a finished dish. The particle has potential positions — possible connections, none committed.

##### Figure: fig-23

**ID:** fig-23
**Label:** Figure 23 — Before Anyone Asks vs. After Someone Asks
**Description:** Left (purple, "WAVE FUNCTION — BEFORE"): central node with dotted lines fanning out to ~10 possible positions, faint endpoint dots. "Many possible connections. None committed." Right (green, "MEASURED PARTICLE — AFTER"): same central node but with ONE solid thick line to ONE neighbor, all other connections faded. "One definite connection. One definite position."
**Caption:** Before someone asks: many possible connections (wave function). After someone asks: one definite connection (collapse). That's quantum mechanics.

##### The Double-Slit Experiment

> **AUTHOR NOTE (SECTION):** This is the most famous experiment in physics. Feynman said it contains "the only mystery." Use the 4-panel comic format. Panel 1: particle approaches, nobody's asking where it is. Panel 2: engine walks both paths through both slits (dotted). Panel 3: paths overlap on screen — bright where they align, dark where they cancel. Panel 4: screen demands "WHERE ARE YOU?" — one dot appears. Over thousands of particles, dots form interference pattern.

**Content direction:** The most famous experiment in physics. Four steps: (1) particle approaches wall with two slits, nobody asking where it is. (2) Engine computes paths through BOTH slits. (3) Paths overlap on far screen — constructive (bright) and destructive (dark) interference. (4) Screen is a strict consumer — demands one answer — one dot appears. Over thousands: dots form interference bands.

##### Figure: fig-24

**ID:** fig-24
**Label:** Figure 24 — The Double-Slit Experiment: The Most Important Experiment in Physics
**Description:** Four-panel comic strip. Panel ①: particle approaching wall with 2 slits, thought bubble "Nobody's asking where I am." Panel ②: dotted lines going through BOTH slits — "Engine walks both paths. Neither committed." Panel ③: screen showing interference pattern (alternating bright/dark bands) — "Where paths line up: bright. Where they cancel: dark." Panel ④: screen demands "WHERE ARE YOU?" — single dot appears on screen — "One dot. Over thousands, dots form the pattern."
**Caption:** Each particle lands at one spot. But the PROBABILITY of where it lands was shaped by the engine computing every possible path through both slits.

##### Why a Detector Ruins the Pattern

**Content direction:** Put a camera at one slit. It's a strict consumer — needs to know "did you come through here?" Forces a definite answer. Once there's an answer, only one path. No overlap. No interference.

##### Figure: fig-25

**ID:** fig-25
**Label:** Figure 25 — A Detector Doesn't 'Disturb' the Particle. It Demands an Answer.
**Description:** Wall with two slits. Camera (red) at one slit with speech bubble "DID YOU COME THROUGH HERE?" One solid path shown. Screen on right with scattered dots (no pattern). Label: "The camera demanded an answer. Once committed, only one path contributes."
**Caption:** The camera didn't "disturb" the particle. It demanded an answer. Once the answer exists, only one path contributes. No interference.

##### Why Basketballs Don't Do This

**Content direction:** Callback to Ch 3's basketball. 10²⁶ atoms, every one a strict consumer. No uncommitted edges survive. That's why big things behave normally.

##### Figure: fig-26

**ID:** fig-26
**Label:** Figure 26 — Why Big Things Behave Normally
**Description:** Large basketball circle filled with tiny dots, speech bubbles ("VALUE!" "NOW!" "WHERE?!" "GIVE!"). Caption: "10²⁶ atoms, EVERY one a strict consumer. No uncommitted edges survive."
**Caption:** A basketball has 10²⁶ atoms, every one demanding answers from its neighbors. Everything gets committed instantly. No quantum weirdness.

##### Physics Card: Decoherence

Isolated particles maintain superposition. In warm, dense environments, quantum behavior vanishes instantly. More neighbors = more strict consumers = faster resolution. Main challenge in quantum computing.

##### Physics Card: The Quantum Eraser

Run double-slit with detectors → no interference. Erase which-path info after particle hit screen. Sort results → interference reappears in subset. Not time travel. You changed how you sorted already-committed data. Like removing a spreadsheet filter.

##### What This Means (Insight)

Quantum behavior isn't strange. It's lazy evaluation. The engine computes every possibility but doesn't commit an answer until something NEEDS one. Small, isolated things have nobody asking, so they stay as possibilities. Big, interconnected things have everything asking — they're committed immediately. "Observation" isn't magic. It's a strict consumer forcing a computation to produce a definite result.

---

#### Chapter 9 — Entanglement

**Section number:** 09
**Section title:** Entanglement: The Universe's Shortcut

> **AUTHOR NOTE (CHAPTER):** Entanglement should feel simple once you see it. A direct edge that persists. Three-panel story: (1) two particles meet, form a direct edge, (2) they separate, thousands of nodes between them, but the direct edge is still 1 hop, (3) one is measured, resolution travels through the shortcut. Then: why it's not faster-than-light communication (you need to compare results at light speed). Bell's theorem physics card.

##### Opening

**Content direction:** Einstein called it "spooky action at a distance." He thought particles must carry hidden info. In 1964, Bell proved the correlations are too strong for hidden info. Something connects them. In this framework: a direct edge — a shortcut.

##### Figure: fig-27

**ID:** fig-27
**Label:** Figure 27 — Entanglement is a Shortcut That Persists
**Description:** Three panels. ① "THEY MEET": two nodes close together with thick orange direct edge. ② "THEY SEPARATE": same two nodes far apart, many intermediate gray nodes between them, but thick orange direct edge still connects them — "Direct edge persists. One hop." ③ "ONE IS MEASURED": scientist measures node A, resolution arrow travels along the direct edge to node B — "Both get definite values. Instantly." Bottom text: "The neighborhood path might be 1 billion hops. The direct edge is still 1 hop."
**Caption:** That's entanglement. Not magic. Not communication. A shortcut through the graph that doesn't care about the long way around.

##### Why It's Not Faster-Than-Light Communication

**Content direction:** Neither particle learns what question the other was asked. Just correlated answers. To check correlation, you must compare results via regular signal at light speed.

##### Figure: fig-28

**ID:** fig-28
**Label:** Figure 28 — Correlated Instantly, But Verification Takes Time
**Description:** Two stick-figure scientists on opposite sides. Left one with thought bubble "I got UP" (blue). Right one with "I got DOWN" (red). Between them: a dashed line with a snail emoji and label "classical signal needed to compare (travels at speed of light — no faster)."
**Caption:** The particles get correlated answers instantly. But to KNOW they're correlated, you need to send a regular signal. No faster-than-light phone calls.

##### Physics Card: Bell's Theorem

In 1964, John Bell proved correlations between entangled particles are too strong for hidden information. Something connects them. Decades of experiments confirmed this, culminating in the 2022 Nobel Prize. In this framework: the direct edge.

##### What This Means (Insight)

Two particles that interact form a direct edge — a shortcut in the graph. When one is measured, the resolution travels through the shortcut, not through the neighborhood. The shortcut is one hop regardless of how many hops the neighborhood path has grown to. This isn't spooky. It's graph structure.

---

#### Chapter 10 — Why is the Universe Expanding?

**Section number:** 10
**Section title:** Why is the Universe Expanding? (And Getting Bigger Faster?)

> **AUTHOR NOTE (CHAPTER):** This should feel like the framework's victory lap. Expansion = computation creates new connections. Acceleration = positive feedback (more graph → more computation → more graph). The snowball analogy is perfect. The dark energy problem: standard physics needs a mysterious substance making up 68% of the universe. This framework doesn't — the expansion IS the graph growing through its own computation. That's elegant and the reader should feel it.

##### Opening

**Content direction:** Hubble 1929: galaxies flying apart. 1998: expansion accelerating. Standard physics needs "dark energy" (68% of the universe, never detected). In this framework: computation creates connections. More connections → more computation → more connections. Positive feedback = acceleration.

##### Figure: fig-29

**ID:** fig-29
**Label:** Figure 29 — The Graph Grows Itself
**Description:** Three graphs of increasing size left to right, with "compute →" arrows between them. Left (EARLY): 5 nodes, 5 edges. Center (LATER): ~13 nodes, ~15 edges. Right (EVEN LATER): ~40 nodes, many edges. Bottom: "More graph → more computation → more new connections → more graph. Growth proportional to size = acceleration."
**Caption:** The engine runs. Computations produce results. Results create new connections. More connections = more computations = more new connections. The graph grows itself.

##### Figure: fig-30

**ID:** fig-30
**Label:** Figure 30 — A Snowball Rolling Downhill
**Description:** A curved downhill slope. Snowballs rolling down, increasing in size from left (small) to right (huge), with increasingly large motion arrows. Labels: "small" → "bigger" → "BIGGER" → "HUGE."
**Caption:** More graph → more computation → more growth. Growth proportional to current size = exponential acceleration.

##### Physics Card: The Expanding Universe

Hubble 1929: galaxies receding. 1998: expansion accelerating. Standard physics requires "dark energy" — 68% of the universe. In this framework, no separate substance needed. The expansion IS the graph growing through its own computation.

##### What This Means (Insight)

The universe is growing because computation creates connections. Every tick, the engine runs, produces results, and those results build new structure. More structure means more computation. More computation means more structure. It's a snowball. That's why the expansion is accelerating. It's not a mysterious force. It's the graph computing itself into existence.

---

### PART THREE: WHAT WE DON'T KNOW

**Part header:** "Part Three — What We Don't Know"

#### Chapter 11 — Honest Gaps

**Section number:** 11
**Section title:** Honest Gaps

> **AUTHOR NOTE (CHAPTER):** This section is critical for credibility. No overselling. List what the framework CAN'T do. The tone should be honest and undefensive. "A framework that claims to explain everything is a story, not a theory. These gaps are real and hard." End with an invitation: lay out what you think, lay out where it breaks, invite smarter people to do what you couldn't.

**Content direction:** Use a gap-box block. List these honest gaps:

1. **Can't derive Einstein's exact equations from graph structure** — the #1 problem. Without the math, it's an analogy, not a derivation.
2. **Can't explain why space is 3D** — why this specific connectivity pattern?
3. **Can't explain specific particles** — electrons, quarks, neutrinos have specific masses, charges. What determines the "shape" of each loop?
4. **Can't prove the Born rule** — why probability = amplitude squared?
5. **Can't explain spin** — electron needs 720° rotation to return to starting state. No graph operation yet produces this.
6. **Can't explain charge quantization** — why every proton has exactly the same charge.
7. **Can't explain the hierarchy problem** — gravity 10³⁶ times weaker than electromagnetism. Why?
8. **No unique experimental prediction** — framework makes same predictions as standard physics. Necessary but not sufficient. A framework indistinguishable from current theory by experiment is not yet physics.

Close with: "These are genuine obstacles. Any one could unravel the whole picture. That's how science works."

---

### PART FOUR: REFERENCE TABLE

**Part header:** "Part Four — Everything Mapped"

#### Chapter 12 — The Complete Reference Table

**Section number:** REF
**Section title:** The Complete Reference Table

> **AUTHOR NOTE (CHAPTER):** This is a quick-reference lookup. Every phenomenon in one table. Three columns: Physics Concept / In This Framework / Computer Analogy. Cover all concepts discussed in the document. Use the summary-table CSS class.

**Content direction:** A summary-table with three columns covering (at minimum):

| Physics Concept          | In This Framework                                                     | Computer Analogy                                        |
| ------------------------ | --------------------------------------------------------------------- | ------------------------------------------------------- |
| Space                    | Large-scale graph shape, connectivity                                 | Network topology, hop count = distance                  |
| Position                 | Committed edges to specific neighbors                                 | Pointer to specific memory address                      |
| Mass                     | Cyclic subgraph, loop consuming budget per tick                       | Infinite loop consuming CPU per cycle                   |
| Energy                   | Return value of completed computation                                 | Function output that exits and passes forward           |
| E = mc²                  | Breaking a loop releases trapped return values                        | Terminating infinite loop, flushing stack as output     |
| Antimatter               | Inverse (mirror) graph                                                | Function whose output negates another's                 |
| Annihilation             | Graph meets inverse, loops cancel, energy escapes                     | Composed opposite functions = zero residue              |
| Time (engine)            | Global tick counter, never dilates                                    | CPU clock cycles                                        |
| Time (experienced)       | State transitions per tick, depends on budget                         | Instructions per cycle, varies with load                |
| Time dilation (gravity)  | Mass drains budget → fewer transitions                                | Heavy process consuming CPU → less throughput           |
| Time dilation (velocity) | Motion rewiring costs budget                                          | Data transfer consuming bandwidth                       |
| Speed of light           | Maximum budget per tick, all spent on propagation                     | Maximum bus speed                                       |
| Gravity                  | Budget drain warps edge weights → curved cheapest paths               | Congested node warps routing costs                      |
| Can't shield gravity     | Drain flows through graph itself; shield IS graph                     | Can't block congestion with more network                |
| Black hole               | Budget drain = 100%, zero state changes, time stops                   | CPU at 100% by one process, everything freezes          |
| Wave function            | Uncommitted edges, potential connections                              | Lazy thunk, defined but not forced                      |
| Collapse                 | Strict consumer demands value, engine commits                         | Forcing a lazy thunk, evaluating and caching            |
| Superposition            | Node with uncommitted edges to multiple neighbors                     | Unevaluated expression with multiple possible values    |
| Interference             | Multiple graph walks overlap, amplitudes add/cancel                   | Multiple path evaluations combining or canceling        |
| Decoherence              | More neighbors = more strict consumers = faster resolution            | More consumers of lazy value = higher chance of forcing |
| Entanglement             | Direct edge (shortcut) between nodes, persists regardless of distance | Shared pointer, same data regardless of memory distance |
| Expansion                | Return values create new edges/nodes                                  | Self-writing code, expanding codebase                   |
| Accelerating expansion   | Growth proportional to current size, positive feedback                | Exponential growth                                      |
| Planck length            | Minimum graph spacing, one node                                       | One pixel, minimum addressable unit                     |
| Planck time              | One tick of the engine                                                | One clock cycle                                         |
| Double buffering         | See Frame N while N+1 computes                                        | GPU renders next frame while displaying current         |

---

### FOOTER

```
GL Theory v20: A Guide to the Universe for People Who Build Things — Version 20.0 — March 2026
Framework developed by Greg. Plain English Edition.
"The delusions are my own."
```

---

## END OF SOURCE DOCUMENT
