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
- **Render Layer** — what you experience. Your "reality." Analogy: the TV screen, the monitor, the output you see.

The Mario analogy is the primary vehicle. Thread it throughout: Mario is the reader, living on the render layer. The engine computes his world. He can't see the engine. Use this analogy for time (Mario's time is change, not ticks), double buffering (Mario never gets half his world), the holographic principle (Mario 64 on a 2D screen), and the arrow of time (computation direction is in the engine).

Refer to the layers consistently as "engine layer" and "render layer" throughout. Let the reader know they can also think of them as desktop/monitor or Nintendo/TV.

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

> **AUTHOR NOTE (SECTION):** This is the most important opening in the document. It replaces the old "here are five axioms" approach. The reader needs to understand the two-layer architecture IMMEDIATELY — it's the central claim. Use the Mario analogy. Make it visceral, not academic. The reader should walk away knowing: (1) there are two layers — engine and render, (2) you live on the render, (3) the engine is running graphs, (4) this isn't just "simulation theory" — it actually explains things.

**Hook block content:** Before we get into anything — before graphs, before physics, before any of it — I need to tell you something uncomfortable. **You are Mario.** Not metaphorically. Structurally. You are living on a screen. What you experience as "reality" is a rendered output. There is an engine underneath computing what you see, and you have no direct access to it.

**Content direction (after hook):** Four paragraphs:

1. This sounds insane until you realize you deal with two-layer systems every day. Your monitor shows letters, your computer stores ones and zeros. Two layers: engine (processor) and render (monitor). We're claiming reality works the same way.
2. What you experience — space, mass, time, gravity — is the render layer. Underneath, the engine runs something simpler: a graph. Dots connected by lines.
3. The punchline: you are a pattern of connections being rendered into the world you experience. And the only thing worse than being a 2D Italian plumber is finding out you're a graph representation of one.
4. Going forward: two layers. Engine layer (where computation happens — Nintendo console, desktop) and Render layer (what you experience — TV screen, monitor). Use whichever analogy helps.

**Blue callout block:** Define the two layers clearly:

- **The Engine Layer** — where computation happens. The actual structure of reality. Think: the Nintendo console. The desktop computer.
- **The Render Layer** — what you experience. Your "reality." Think: the TV screen. The monitor.
- Note: can also call them desktop/monitor, Nintendo/TV.

##### Figure: fig-00

**ID:** fig-00
**Label:** Figure 0 — Two Layers of Reality
**Description:** Left: a TV screen showing Mario's world (stick-figure Mario, platforms, a question block) labeled "RENDER LAYER — What Mario experiences. His 'reality.'" Right: a Nintendo console with circuit board showing graph nodes and edges inside, labeled "ENGINE LAYER — Dots and lines. The actual computation." Arrow between them labeled "renders."
**Caption:** Two layers. The screen shows the output — Mario's world. The engine does the work — dots and lines. Mario can't see the engine. He only sees the render. Sound familiar?

**Content direction (after figure):** Two paragraphs explaining why this is interesting:

1. This isn't just "simulation theory" — this architecture actually EXPLAINS things. Weird things that have baffled physicists for a century.
2. List the mysteries as teasers: Why can't you shield gravity? Why does the universe seem to "know" what you're going to measure? Why do physics equations work backwards? How can two particles be instantly correlated across the universe? These are genuine unsolved mysteries and they all have the same answer.

---

#### WHAT WE'RE CLAIMING

> **AUTHOR NOTE (SECTION):** This replaces the old "Framework at a Glance" axiom box. These are CLAIMS, not axioms. Stated in plain English. Each claim is paired with a mystery it solves. The reader should think "that's either brilliant or insane" and keep reading. Use the claims-box CSS class (orange border, orange badges).

**Content direction:** Intro line: "Before we teach you anything, here's what this framework says about reality. Read these now — some will sound wild. By the end of this document, none of them will."

**Claims box with 8 items:**

1. **There are two layers to reality.** What you experience is a render. Underneath is an engine computing it. You are Mario. This explains why certain things about reality seem "computed."
2. **The engine layer is a graph — dots connected by lines.** Space, matter, you — all graph structure. This explains why space has a minimum size and why distance exists at all.
3. **Mass is a loop in the graph that never finishes,** consuming the engine's budget every tick. This explains why mass and energy are interchangeable — and why E=mc².
4. **Gravity is not a force — it's emergent.** It's what happens when loops drain budget from their region, warping the routing table. This explains why you can't shield it, why it's indistinguishable from acceleration, and why no one has ever found the graviton.
5. **C (the speed of light) is the engine's clock speed** — the maximum rate at which change can propagate. It's not about light. It's the fastest the engine can update anything.
6. **E=mc² means: break the loop and the trapped work escapes.** The c² isn't arbitrary — it's the engine's processing capacity squared. That's why a paperclip could power a city.
7. **You're always one frame behind.** The engine computes the entire frame, then commits it. You never see work in progress. This explains the quantum eraser, delayed-choice experiments, and why you can't catch reality mid-computation.
8. **Spacetime is the routing table.** The engine needs to know which nodes to update and in what order. That routing table, warped by mass, is what we experience as spacetime. Einstein called it "curved spacetime." We call it a congested network.

**Muted center text:** "Some of that probably sounds crazy. By the end, none of it will. Let's start with the one tool you need."

---

### PART ONE: THE TOOLKIT

**Part header:** "Part One — The Toolkit"

> **AUTHOR NOTE (PART):** Two chapters. Fast. These teach concepts with ZERO physics. Just everyday life and computers. The reader should be through the toolkit in 15 minutes max and hungry for payoffs. The physics payoff comes immediately after in Part Two.

---

#### Chapter 1 — What Is a Graph?

**Section number:** 01
**Section title:** What Is a Graph?

> **AUTHOR NOTE (CHAPTER):** This is the most important chapter to get right because everything builds on it. Keep it TIGHT — shorter than the previous version. The reader needs: (1) graph = dots connected by lines, (2) cycle = loop that never finishes, (3) inverse graphs cancel. Then the PIVOT: "graph foreplay is over, everything is a graph, you are Mario and the cartridge is full of graphs."

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

> **AUTHOR NOTE (SECTION):** Make cycles feel dangerous and permanent. The reader needs to viscerally understand that a loop NEVER resolves. Keep it tight — this was good in v19 and doesn't need to be longer.

**Content direction:** Most graphs are straightforward — A then B then C, done. But what if the lines loop back? C points to A? That's a cycle — a loop that never finishes. It's a permanent condition. The work goes around and around forever. Like being stuck at a desk where your to-do list generates more to-do list. You will never get up. Remember that feeling — cycles are one of the most important patterns in the universe.

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

> **AUTHOR NOTE (SECTION):** This is the key transition moment. The reader has learned graph basics. Now hit them with the claim. The tone should shift from educational to provocative. "Graph foreplay is over."

**Content direction:** "Graph foreplay is over. Here's where it gets real." When I say everything is a graph, I don't mean graphs are a useful metaphor. I mean there is no "world" as you know it. The render layer — trees, rocks, your body — is an output. The engine layer is graphs. Dots and lines. That's what's actually there. The rest is rendering. You are Mario. The cartridge is full of graphs. And we're going to use three facts about graphs — they have structure, they can loop, and opposites cancel — to explain most of what physicists have spent a century arguing about.

##### What This Means (Insight)

Everything in the universe — space, matter, forces, you — can be described as dots connected by lines. Some patterns finish. Some loop forever, trapping work inside themselves. Some are mirrors of each other and cancel on contact. These three behaviors are all the building blocks we need.

---

#### Chapter 2 — The Engine: How Reality Gets Computed

**Section number:** 02
**Section title:** The Engine: How Reality Gets Computed

> **AUTHOR NOTE (CHAPTER):** This is the densest chapter — it covers clock/budget, overflow/stack, C as clock speed, double buffering ("Mario never gets half his world"), and lazy evaluation ("the smart kitchen"). The Mario analogy carries the weight. Five beats, each landing a concept that will pay off in Part Two. The old Chapters 2 and 3 are merged here.

##### Opening

**Content direction:** "So there's an engine underneath reality. How does it work? Same way your computer works. A clock ticks. Each tick, a fixed amount of work gets done. That's it." Your phone: ~3 billion ticks/sec, fixed budget per tick. The universe's engine: same pattern, one clock, one tick, fixed budget.

##### Figure: fig-04

**ID:** fig-04
**Label:** Figure 4 — The Engine Has a Clock and a Budget
**Description:** Left: a clock face with "TICK" label. Right: a horizontal bar labeled "BUDGET PER TICK — 100 UNITS OF WORK." Simple, clean.
**Caption:** Each tick, the engine has a fixed budget. It processes everything on its list, up to the limit.

##### When Work Overflows

**Content direction:** Workday analogy. 8 hours = budget. 6-hour to-do list = done with spare. 12-hour to-do list = overflow, 4 hours carry to tomorrow. Carried-over work = a stack.

##### Figure: fig-05

**ID:** fig-05
**Label:** Figure 5 — Work That Fits vs. Work That Overflows
**Description:** Left panel (green): budget bar with 6hrs of work fitting inside 8hr bar, labeled "FITS IN BUDGET — All done! Energy left over." Right panel (red): budget bar full, 4hrs spilling over as dashed box pointing to "next tick," labeled "OVERFLOWS BUDGET."
**Caption:** If work fits in the budget, it completes. If it overflows, the leftover carries to the next tick as a stack.

##### Bridge to Mass

**Content direction:** Connect Chapter 1's loop to the budget. A cycle never finishes → it overflows every tick → permanent stack → permanent budget drain. Foreshadow: "Remember that — we're about to use it to explain mass."

##### Figure: fig-06

**ID:** fig-06
**Label:** Figure 6 — A Loop Is a Permanent Budget Drain
**Description:** Three identical ticks side by side (Tick 1, Tick 2, Tick 3). Each shows a budget bar where the loop (red) consumes the same chunk (~30%) and the rest is "other work" (blue). Below: a small 3-node cycle diagram. Label: "Same drain. Every tick. That's mass."
**Caption:** A loop is a permanent stack. It runs every tick, consuming budget every tick, feeding its own results back into itself. It never stops.

##### C Is the Engine's Clock Speed

> **AUTHOR NOTE (SECTION):** This is a NEW major section that was underserved in prior versions. C needs its own dedicated space with a real explanation. The reader needs to walk away understanding: (1) C is not a "speed limit" — it's the engine's clock speed, (2) you can't go "faster" because the clock IS how fast things happen, (3) "stopping time" means nothing is changing, not that a clock paused, (4) C is the speed of change.

**Content direction:** "Here's something that confused physicists for a century: why does the universe have a speed limit? Wrong question. It's not a speed limit. It's a clock speed."

Your computer has a clock speed — 3 GHz means 3 billion ticks per second. Each tick, data moves a fixed distance. You can't move data faster than the clock because the clock IS how fast things happen. No "faster" to go. Asking "what if data went faster" is like asking "what if the engine did more work than it can."

C is the same thing for the universe's engine. Not that light is special — light just has zero mass (no loops, no budget drain) so it can travel at the engine's maximum rate. C is the fastest the engine can propagate a change from one node to the next.

What does "stopping time" mean? Nothing is changing. Zero state transitions. Not a cosmic clock pausing — the budget is fully consumed and nothing can update. Time isn't a river flowing. Time is change. C is the speed of change.

##### Figure: fig-c-clockspeed

**ID:** fig-c-clockspeed
**Label:** Figure 7 — C Is Not a Speed Limit. It's a Clock Speed.
**Description:** Two panels. Left: "YOUR COMPUTER" — a dark rectangle (computer chip) with "3 GHz — 3B ticks/sec" label, a data dot moving along a bus at max speed with arrow. Right: "THE UNIVERSE'S ENGINE" — a dark rectangle with graph nodes connected by edges, a change dot propagating between nodes, labeled "C ≈ 3×10⁸ m/s." Both panels have matching text: "Data/change can't move faster than the clock allows. There's no 'faster.'"
**Caption:** Not a speed limit. A clock speed. The fastest the engine can move a change from one node to the next. "What if something went faster than light?" is like asking "what if the computer did more than 3 billion ticks per second on a 3 GHz chip?" It can't. That's what 3 GHz means.

##### Mario Never Gets Half His World (Double Buffering)

> **AUTHOR NOTE (SECTION):** Do NOT use the term "double buffering" in the main text. Use the Mario analogy instead. The reader needs to understand: (1) the engine computes the ENTIRE frame before committing, (2) you only see committed frames, (3) you're always one frame behind, (4) this is going to explain quantum weirdness. Tease the quantum payoff at the end.

**Content direction:** When you play Mario, you never see half a frame. Mario gets his entire world, fully formed, every single frame. The console computes the ENTIRE frame in the background, then flips it to the screen all at once. While you're looking at Frame 12, the engine is computing Frame 13. You — Mario — are always one frame behind.

Reality works the same way. The engine computes the entire state of everything, commits it, and THAT is what you experience. You never see work in progress.

This seems like a nerdy technical detail. It's not. It's going to explain why physicists have been tearing their hair out for 80 years over experiments where the universe seems to know the future. Spoiler: it doesn't know the future. There's just no "during" — only "before the frame commits" and "after the frame commits."

##### Figure: fig-07

**ID:** fig-07
**Label:** Figure 8 — Mario Never Gets Half His World
**Description:** Left: a clean, complete frame (smiley face, platforms) with solid green border, labeled "WHAT MARIO SEES — Frame N — Clean. Complete. Committed." Right: a half-drawn frame with construction lines and dashed red border, labeled "BEING COMPUTED — Frame N+1 — Messy. In progress. Mario can't see this." Between them: "you are always one frame behind."
**Caption:** Mario sees Frame N while the engine computes Frame N+1. He never sees work in progress. He's always one frame behind. Reality works the same way.

##### The Smart Kitchen (Lazy Evaluation)

> **AUTHOR NOTE (SECTION):** Compress this from its old standalone chapter. It's now a subsection. The reader needs: (1) smart chef has all recipes but only cooks orders, (2) customer = strict consumer, (3) basketball vs photon — dense thing = everything committed, lone thing = nothing committed. The bridge to quantum should be one sentence.

**Content direction:** "One more engine rule. The engine is smart — it doesn't compute answers nobody needs." Restaurant analogy: dumb chef pre-cooks everything (wasteful, insane), smart chef has recipe book but only cooks what's ordered. Customer = strict consumer. No customer, no dish — just a recipe.

Quick application: basketball = 10²⁶ atoms, every one demanding values, everything committed. Photon in empty space = nobody asking, stays as a recipe. "This is going to explain all of quantum mechanics."

##### Figure: fig-08

**ID:** fig-08
**Label:** Figure 9 — Dumb Kitchen vs. Smart Kitchen
**Description:** Left panel (red, "DUMB KITCHEN"): overwhelmed chef stick figure surrounded by dishes everywhere, trash can nearby, "Cooks everything. Most goes in the trash." Right panel (green, "SMART KITCHEN"): calm chef with recipe book, only 2 dishes being cooked, "Knows all recipes. Only cooks what's ordered."
**Caption:** A smart engine only produces finished answers when something needs them. This is called lazy evaluation, and it's going to explain quantum mechanics.

##### What This Means (Insight)

The engine ticks. Each tick has a budget. Loops consume budget forever — that's mass. C is the engine's clock speed — the maximum rate change can propagate. You always see the last committed frame, never work in progress. And the engine only produces definite answers when something demands one. You now have every tool you need. Let's explain the universe.

---

#### THE FIVE AXIOMS (Interlude)

> **AUTHOR NOTE (SECTION):** This appears AFTER the toolkit chapters, not before. The reader now understands every concept. Restate each axiom with a callback to what they learned. Use the principle-box CSS class (black border, blue badges). This should feel like "oh, these are the gears inside what I just learned."

**Principle box title:** "The Five Axioms — Now That You Speak the Language"

```
1. ONE GRAPH — The engine layer is a graph. Dots and lines. Space is the large-scale shape of the connections. Stuff is the local structure — loops, clusters, edges.
2. ONE RULE — Each tick, everything updates. One clock. One pass. Like your CPU — one cycle, process the whole instruction queue.
3. GRAPH OPERATIONS — Things interact by connecting their dots. Mirror graphs cancel on contact. Connections can be committed (definite) or uncommitted (possible).
4. BUDGET — Fixed work per tick. Loops eat it forever. C is the ceiling — the maximum work rate. You can't exceed it because it IS the tick rate.
5. LAZY EVALUATION — No definite answer until something demands one. The engine knows all recipes. It only cooks what's ordered.
```

**Muted center text:** "Five ideas. That's the whole framework. Now let's use them to explain the universe."

---

### PART TWO: THE UNIVERSE THROUGH THE FRAMEWORK

**Part header:** "Part Two — The Universe Through the Framework"

> **AUTHOR NOTE (PART):** This is where we pay off all the setup. EVERY chapter opens with a mystery block — the weird observation, the tension — then resolves it with the framework. The tone should escalate. The reader should feel the framework gaining explanatory power with each chapter. Chapter order: Mass/Energy → Gravity → Space → Time → Quantum → Entanglement → Expansion. This order is deliberate: Mass pays off loops immediately, Gravity pays off budget drains, Space needs mass/gravity context, Time needs all three, Quantum needs lazy eval + double buffering, Entanglement is graph structure, Expansion is the victory lap.

---

#### Chapter 3 — What Is Mass? And What Is Energy?

**Section number:** 03
**Section title:** What Is Mass? And What Is Energy?

> **AUTHOR NOTE (CHAPTER):** This is the FIRST physics payoff. The reader just learned about loops and budgets. Now they see it explain E=mc². The mystery opening should make the reader feel the strangeness of mass-energy equivalence. The c² explanation is the key new addition — C is clock speed, c² = work × propagation rate. The hamster wheel metaphor is perfect for mass. Three destinations for return values. Annihilation ties to mirror graphs from Ch 1.

##### Mystery Block

**Mystery content:** Here's something that should bother you: mass and energy are the same thing. Einstein proved it in 1905. A paperclip contains enough energy to flatten a city. But WHY? Why would stuff contain astronomical amounts of trapped energy? And why is the conversion factor the speed of LIGHT, squared? What does light have to do with a paperclip?

Physicists can use the equation. But "why c²" has never had a satisfying intuitive answer.

##### Tension

**Content direction:** Think about it. Mass just sits there. A rock on a table. Not moving, not glowing. Where is all that energy hiding? And when you release it — nuclear bomb, annihilation — where does it come FROM?

##### Framework Answer

**Content direction:** The energy isn't hiding. It's active. Being consumed and regenerated every tick. If mass is a loop — a computation that runs every tick, consuming budget, feeding results back in — then the rock on your table is running a permanent computation. A hamster wheel that never stops. You can't see it because you're Mario — you see the render, not the engine.

##### Mass: The Hamster Wheel

**Content direction:** Loop from Ch1 + budget from Ch2. Every tick, engine processes the cycle, produces a return value, result feeds back in. Round and round. Forever. Heavier thing = bigger loop = more budget consumed per tick.

##### Figure: fig-14

**ID:** fig-14
**Label:** Figure 10 — Every Computation Produces a Result. It Goes One of Three Places.
**Description:** Three panels side by side. Left (blue, "ENERGY"): arrows propagating outward from a node, "Result goes OUT. Work finished." Center (red, "MASS"): stick figure running in a hamster wheel, "Result loops BACK IN. Round and round." Right (green, "EXPANSION"): nodes building new connections (dashed lines to new node), "Result BUILDS new graph."
**Caption:** Every tick, the engine produces results. They go one of three places: out (energy), back in (mass), or into building new graph (expansion). These are the only three options.

##### E=mc²: When the Loop Breaks — WITH the c² Explained

> **AUTHOR NOTE (SECTION):** This is the most dramatic moment so far. Break the loop → everything escapes → as energy. But ALSO explain c². C = clock speed = budget per tick. Loop consumes C-worth of budget. When it breaks, work escapes at C propagation rate. Work × propagation = C × C = c². It's the engine's processing capacity squared. THAT is why tiny mass = astronomical energy. The engine is fast as hell.

**Content direction:** When the loop breaks, trapped results escape. All at once. As energy. That's a nuclear bomb.

But unpack c². C is the engine's clock speed. The budget per tick. The loop consumes C-worth of budget. When it breaks, work escapes and propagates at C. Work × propagation = C × C = c². Not a magic number. It's the engine's processing capacity squared. That clock speed is enormous — ~300 million m/s. Squared: ~9 × 10¹⁶. THAT is why a paperclip could power a city.

When a particle meets its antiparticle (mirror graph from Ch 1), they cancel completely. Total conversion. 100% efficiency.

##### Figure: fig-16

**ID:** fig-16
**Label:** Figure 11 — Break the Loop and Mass Becomes Energy
**Description:** Left: intact 3-node loop in red, labeled "BEFORE: LOOP INTACT — Mass. Stable. Trapped." Center: scissors icon with "BREAK!" Right: scattered nodes with energy arrows and lightning bolts radiating outward, labeled "AFTER: ENERGY ESCAPES — Everything trapped escapes. All at once. E = mc²."
**Caption:** Break the loop and everything trapped inside escapes as energy. The c² isn't mysterious — it's the engine's clock speed squared. Work × propagation rate.

##### Physics Card: E = mc²

Einstein showed in 1905 that mass and energy are interchangeable. The c² factor (~9 × 10¹⁶) is why tiny mass = astronomical energy. Nuclear weapons exploit partial conversion. Antimatter annihilation achieves total conversion.

##### Physics Card: Matter-Antimatter Annihilation

When an electron meets a positron (its antimatter mirror), they annihilate completely — 100% mass to energy as photons. In this framework: mirror graphs cancel, loops vanish, all trapped work escapes.

##### What This Means (Insight)

Mass is stuck energy. It's work that loops forever, consuming budget every tick, feeding its own results back into itself. Energy is work that finished and went somewhere. They're the same thing — return values from computation — just going to different destinations. Break the loop and mass becomes energy. c² is the engine's clock speed squared — work times propagation. That's why tiny mass equals city-leveling energy.

---

#### Chapter 4 — What Is Gravity?

**Section number:** 04
**Section title:** What Is Gravity? And Why Can't You Block It?

> **AUTHOR NOTE (CHAPTER):** This is the longest and most important chapter in Part Two. THREE mysteries in the opening: (1) can't shield it, (2) indistinguishable from acceleration, (3) no graviton. These should feel genuinely weird before the framework resolves them. Three major beats after the mystery: Activity Monitor as gravity, Spacetime as routing table, Why you can't block it. The fish-in-water analogy is the crown jewel. Three physics cards: lensing, black holes, gravitational waves.

##### Mystery Block

**Mystery content:** Gravity is weird. Not "quantum mechanics weird" — a different kind. A suspicious kind.

Four forces: electromagnetic, strong nuclear, weak nuclear, gravity. First three can be shielded. Radiation → lead. EM fields → Faraday cage. Strong force → doesn't even reach past the nucleus. But gravity? Never found a way to shield it. Not with any material, any field, any clever arrangement. Nothing blocks it.

Einstein's equivalence principle: NO experiment, from inside a sealed room, can tell you if you're in a gravitational field or accelerating. None. Elevator on Earth vs. rocket in space — identical experience. Why would a "force" be perfectly identical to acceleration?

Physicists spent decades hunting the graviton — the hypothetical carrier particle. Never found one. Every other force has a carrier. Gravity? Nothing.

Three clues: can't shield, identical to acceleration, no carrier particle. Three ways gravity is fundamentally different. Maybe it's not a force at all.

##### Beat 1: How Budget Drains Work in Real Machines

> **AUTHOR NOTE (SECTION):** Walk through this concretely with Activity Monitor / Task Manager. The reader should realize their computer does this every day. Chrome eating CPU = heavy process = everything else slows. Closer to the heavy process = more affected. This IS gravity.

**Content direction:** Open Activity Monitor. Find Chrome with 47 tabs eating 78% CPU. Everything else slows down. Not because Chrome sent a "go slow" message. They share hardware. Chrome is eating the shared budget. Closer processes (same core, same cache lines) = more affected. Farther processes (different core) = barely notice. That's gravity. Mass (a loop) drains budget. Closer in graph = more affected. Farther = less. That falloff = inverse-square law. Not magic — resource contention in a shared system.

##### Figure: fig-activity-monitor

**ID:** fig-activity-monitor
**Label:** Figure 12 — Your Computer Already Does This
**Description:** Left: "YOUR COMPUTER" — Activity Monitor window showing Chrome at 78% CPU, Mail/Spotify/Notes at tiny percentages. Text: "Chrome didn't send a 'go slow' message. They share hardware." Right: "THE UNIVERSE" — A massive star node (gold) with nearby nodes (red, "slow" labels, thin budget bars) and far nodes (green, "fast" labels, full budget bars). Text: "Mass eats shared budget. Nearby = slow. Far = fine."
**Caption:** Same effect. Same reason. A massive object doesn't "pull" things toward it. It drains the shared budget. Everything nearby gets less. That's gravity.

##### Beat 2: Spacetime IS the Routing Table

> **AUTHOR NOTE (SECTION):** This is the key new conceptual contribution. Spacetime isn't just "curved" — it IS the routing table for the engine's computation. When mass changes the edge costs, the routing table updates, and paths curve. Einstein described this perfectly — he called it curved spacetime. We're saying WHY it curves: because mass changes the routing costs.

**Content direction:** Your computer has routing tables — maps saying "to get data from A to B, go through these nodes, here's the cost." Network routers have them too. The engine needs the same thing — which nodes to update, in what order, cheapest paths.

That routing table — connections, costs, cheapest paths between every pair of nodes — is what we experience as spacetime.

No mass nearby: all edges cost the same, cheapest path is straight, flat spacetime. Mass present (loop eating budget): edges near it cost more (less budget, more congestion), cheapest paths curve around mass. That curve is gravity. Einstein described it perfectly, called it curved spacetime. He didn't say WHY mass curves spacetime. This framework answers: because mass drains budget, the routing table updates every tick with new costs. Spacetime IS the routing table, not a thing that gets curved — a computational structure that gets rewritten.

##### Figure: fig-routing

**ID:** fig-routing
**Label:** Figure 13 — Spacetime Is a Routing Table
**Description:** Left (green, "FLAT ROUTING TABLE — NO MASS"): uniform grid with all edge costs labeled "1", straight green path from A to B, text "All edges cost 1. Cheapest path is straight. Flat spacetime." Right (red, "WARPED ROUTING TABLE — NEAR MASS"): same grid but with a massive node M in center, nearby edges labeled "5" and "8" (high cost), far edges still "1". A→B path curves around M. Text: "Edges near mass cost more. Cheapest path curves. That's curved spacetime."
**Caption:** Left: no mass, flat routing table, straight paths. Right: mass increases local costs, routing table warps, paths curve. Gravity isn't a force. It's a routing distortion.

##### Beat 3: Why You Can't Block It

**Content direction:** Now the three clues dissolve:

**Can't shield it** — gravity isn't traveling through connections, it IS the connections. Other forces send signals along edges (photons, gluons). Break the edges, block the force. But gravity is the edge weights. The budget drain is in the graph structure. Your shield is made of graph. The drain flows through your shield.

##### Figure: fig-22

**ID:** fig-22
**Label:** Figure 14 — Why You Can't Build a Gravity Shield
**Description:** A fish in water holding a sign that says "NO CURRENT." Current lines (wavy) flow right through the fish and the sign. Label: "The shield is made of the same stuff the drain flows through. You can't block the current when you ARE the current."
**Caption:** A fish holding a "NO CURRENT" sign. The current flows right through. A gravity shield is made of graph — the medium the drain flows through. You can't block it.

**Indistinguishable from acceleration** — same thing at engine level. Acceleration = connections rewired, costs budget. Gravity = nearby loop drains budget. Either way, from render layer: less budget, fewer transitions, identical experience. No difference in the engine.

**No graviton** — nothing being transmitted. Gravity is a property of the routing table, not a signal. "What particle carries gravity?" is like "what particle carries network congestion?" Nothing. Congestion is a system property.

##### Physics Card: Gravitational Lensing

1919, Eddington photographed stars during eclipse. Stars near sun appeared shifted — light bending, following cheapest path through warped routing table. Einstein predicted this exactly.

##### Physics Card: Black Holes

A black hole = budget drain at 100%. Zero budget remaining. Zero state changes. Time stops. Event horizon = where budget hits zero. Not "gravity so strong light can't escape" but "no budget left for anything to happen."

##### Physics Card: Gravitational Waves

2015, LIGO detected ripples from black holes merging 1.3 billion light-years away. Mass changes → routing table updates → changing edge weights propagate at C.

##### What This Means (Insight)

Gravity isn't a force pulling things together. It's a budget drain that distorts the routing table. Everything follows the cheapest path through the distorted network — and those paths curve toward mass. You can't block it because the routing table IS the medium. You can't tell it from acceleration because they cost the same budget. There's no graviton because there's nothing being sent — the routing table itself is warped. Einstein's curved spacetime is a routing table updated by a congested node. Every tick.

---

#### Chapter 5 — What Is Space?

**Section number:** 05
**Section title:** What Is Space?

> **AUTHOR NOTE (CHAPTER):** Space comes AFTER mass and gravity because the reader now understands graph weights and routing distortion. The mystery opening: space has a minimum size (granular, not continuous) and the holographic principle (3D info encoded on 2D surface). The holographic principle section uses Mario 64 as the analogy — 3D game on a 2D screen. Position (committed vs uncommitted edges) bridges to quantum.

##### Mystery Block

**Mystery content:** Space has a minimum size. Below ~10⁻³⁵ meters (Planck length), equations break. Not "need better instruments" — the math itself breaks. Space appears granular. Like zooming into a photo and finding pixels.

And: physicists proved all information in a 3D volume can be described by its 2D surface. Not approximately — FULLY. Information in a room scales with wall area, not volume. This is the holographic principle. Makes no sense if space is a container.

##### Framework Answer

**Content direction:** Space isn't a box. It's the large-scale pattern of connections. Distance = hops between nodes. Zoom out far enough, hops look smooth. That smoothness is "space."

##### Figure: fig-11

**ID:** fig-11
**Label:** Figure 15 — Space Is the Graph's Shape, Seen From Different Distances
**Description:** Three panels at increasing zoom. Left (ZOOMED IN): individual dots and lines. Center (MEDIUM ZOOM): dense mesh of tiny dots, pattern emerges. Right (ZOOMED OUT): smooth flowing shape, labeled "Space — smooth curves."
**Caption:** Up close: dots and lines. Zoom out: a mesh. Zoom out more: smooth curves. That's "space." The connections ARE the space.

##### Distance Is Hops

**Content direction:** Two nodes connected by 3 intermediate nodes? Close. Separated by a billion? Far. No invisible "space" the graph sits in. The connections ARE the distance.

##### Position = Committed Connections

**Content direction:** Being "somewhere" = committed (solid) connections to specific neighbors. Not being anywhere definite = uncommitted (dotted) connections to many possible neighbors. That's superposition.

##### The Holographic Principle: Mario 64 on a 2D Screen

> **AUTHOR NOTE (SECTION):** This is a NEW section. Use the Mario 64 analogy. 3D castles, depth, volume — but the screen is flat. 2D surface contains ALL information for the 3D experience. Physicists found the same thing: Bekenstein showed black hole info scales with surface area. The engine doesn't need to "fill" 3D space — it encodes info however it wants, renders it as 3D.

**Content direction:** Super Mario 64: Mario moves in 3D, depth, volume, castles, mountains. But the screen is flat. 2D. Everything in Mario 64's 3D world is encoded on a 2D surface.

Physicists discovered the same about our universe. Bekenstein: black hole information scales with surface AREA, not volume. 't Hooft and Susskind formalized: all info in 3D volume can be encoded on 2D boundary. Like a hologram.

In this framework: not surprising. The engine (graph) doesn't need to be 3D. It stores info however is efficient. The 3D world is the render. The engine's storage might be a 2D boundary. You are Mario 64 — 3D experience, 2D information.

##### Physics Card: The Holographic Principle

1993, 't Hooft proposed information in any volume is encoded on its boundary. Bekenstein showed black hole entropy scales with surface area. AdS/CFT correspondence (Maldacena, 1997) provides mathematical realization. In this framework: engine encodes info however it wants; 3D experience is the render.

##### What This Means (Insight)

Space isn't a box. It's the graph's shape — connections between everything. Distance is hops. Minimum size is one node (one pixel). The 3D world might be a rendering of 2D-encoded information — like Mario 64 on a flat screen. No space "under" the graph. The graph is all there is.

---

#### Chapter 6 — What Is Time?

**Section number:** 06
**Section title:** What Is Time? (And Why Does It Run Differently in Different Places?)

> **AUTHOR NOTE (CHAPTER):** The mystery opening has TWO parts: (1) equations work backwards — where's the arrow? (2) time dilation — clocks genuinely age differently. Use "Mario's Time" as the primary framing — Mario's time is change, not ticks. When you pause the game, Mario doesn't wait. C as speed of change (reinforced from Ch 2). Three levels of time. The arrow of time section is crucial — arrow lives in the engine (computation direction), not the render (snapshot). Equations describe the render (snapshot) = time-symmetric. NO TIME TRAVEL — computation is irreversible. Motion eats budget too → velocity dilation.

##### Mystery Block

**Mystery content:** Every fundamental equation works perfectly backwards. Newton, Maxwell, Einstein, Schrödinger — run them in reverse, valid solutions. Drop a ball: falls. Run backwards: rises. Both valid.

But reality has a direction. Eggs break, don't unbreak. You age. Universe started with Big Bang. There CLEARLY is an arrow of time.

Where is it? Where in the laws of physics does it say "time goes this way"? Nowhere. No equation contains the arrow. Century-long argument.

And: time runs at different speeds. Clocks near Earth tick slower than orbital clocks. Not broken — genuinely fewer ticks. Fewer electron transitions. They AGE less.

##### Framework Answer

**Content direction:** Time isn't a thing. Time is change. How many state transitions happened in your region since the last engine tick.

##### Mario's Time

> **AUTHOR NOTE (SECTION):** Use Mario as the vehicle. Mario's time = number of updates his region gets. Pause the game = nothing happens for Mario, because nothing DID happen. No state changes, no time. Time IS change.

**Content direction:** Does Mario experience time? Things change — Goombas move, coins spin. Mario's time = updates his region gets per frame. More budget → more changes → "faster time." When you pause the game, Mario doesn't wait — nothing DID happen. No state changes. No time. Time IS change.

##### Figure: fig-17

**ID:** fig-17
**Label:** Figure 16 — Same Tick, Different Budgets, Different Time
**Description:** Left (green, "CLOCK IN EMPTY SPACE"): clock face, budget bar showing tiny tasks (5 units) and large "clock ticking" portion (95 units). "Clock ticks: 95." Right (red, "CLOCK NEAR A STAR"): clock face, star nearby eating 45 units, only 55 left. "Clock ticks: 55." Caption: "Same engine tick. Same total budget. But the star ate the budget."
**Caption:** Same engine tick. Same total budget. But the clock near the star had less budget — the star's loop ate it. Fewer state transitions. That's time dilation. Not a trick. The clock genuinely aged less.

##### GPS — This Is Real

**Content direction:** GPS satellites orbit high, less mass nearby, more budget, faster clocks. Difference: ~45 μs/day. Without correction, GPS drifts 10km/day. Every satellite adjusts. Your phone's blue dot depends on time dilation being real.

##### The Arrow Lives in the Engine

> **AUTHOR NOTE (SECTION):** This is the resolution to the time-symmetry mystery. Equations describe the RENDER (committed frame) = static snapshot = no direction = time-symmetric. The arrow is in the ENGINE (computation direction) = Frame N before Frame N+1. The arrow isn't in the equations because they describe the output, not the process. Then: NO TIME TRAVEL. Computation is irreversible. Can't un-compute a frame.

**Content direction:** Equations work backwards because they describe the render — committed frames. A photograph has no arrow. Static snapshot. Equations describe the photograph → time-symmetric.

Arrow of time is in the ENGINE — computation direction. Engine computes Frame N before N+1. That's the arrow. Not in equations because equations describe output, not process. Arrow lives one layer deeper.

No time travel. Arrow is in engine's computation direction. Can't un-compute. Can't rewind. Render is time-symmetric but engine isn't. Computation is irreversible. Function ran. Output committed. No undo.

##### Motion Eats Budget Too

**Content direction:** Moving fast = rewiring connections (dropping old, forming new). Rewiring costs budget. Faster = more rewiring = more budget consumed = less for internal state = less time. At light speed, ALL budget → motion, zero internal changes, zero time. "Speed limit" isn't a rule — it's a budget cap. C is the maximum. Can't spend more than exists.

##### Physics Card: The Muon

Cosmic muons: created ~15km up, decay in 2.2μs, should travel ~660m. But reach the ground at 99.5% C. Clocks run ~10× slower. Budget consumed by motion, almost none for internal decay.

##### Physics Card: The Twin Paradox

Twin A home, Twin B near-light-speed travel. B is genuinely younger — fewer heartbeats, cell divisions, state transitions. Confirmed by atomic clocks on aircraft and GPS.

##### What This Means (Insight)

Time is not a river. Time is change — how many state transitions happened in your region. Near mass, fewer (mass ate budget). Moving fast, fewer (motion ate budget). At light speed, NONE. Equations work backwards because they describe the committed frame — a static snapshot with no arrow. The arrow lives in the engine's computation direction. No time travel — computation is irreversible.

---

#### Chapter 7 — The Quantum World

**Section number:** 07
**Section title:** The Quantum World: Why Small Things Act So Strange

> **AUTHOR NOTE (CHAPTER):** This is the longest chapter and the payoff for lazy evaluation (Ch 2) and double buffering ("Mario never gets half his world"). The mystery opening is the DOUBLE-SLIT + QUANTUM ERASER — present it as genuinely mind-bending before resolving it. Key insight: the engine computes the whole frame before committing. The quantum eraser isn't time travel — you can't fool the engine after the frame is committed because the frame was computed all at once. The detector-ruins-it explanation: the camera demanded an answer, not "disturbed" the particle. The basketball callback (Ch 2): why big things don't do this.

##### Mystery Block

**Mystery content:** The experiment that broke physics. Double-slit: fire particles at wall with two slits. Thousands of dots form interference pattern (wave behavior, particle goes through BOTH slits). Put detector at slit → pattern vanishes. Looking changed the outcome.

Then the quantum eraser makes it INSANE: run with detector, AFTER particle hits screen, erase which-path info. Sort results. Interference pattern COMES BACK for erased subset. The particle already hit the screen. The dot is already there. How can erasing info AFTER THE FACT change a pattern already recorded? As if the universe reached back in time.

Confirmed hundreds of times. Real. Works. Seems to violate causality.

##### Tension

**Content direction:** Four options: (1) particles are magic, (2) universe knows the future, (3) reality doesn't exist until you look, (4) we're misunderstanding "before" and "after." Let's talk about option 4.

##### Smart Kitchen Revisited

**Content direction:** Callback to Ch 2 chef. Particle in flight — nobody needs definite position. No strict consumer. Engine walks the recipe (all possible paths) but doesn't commit. Particle has potential positions — possible connections, none committed.

##### Figure: fig-23

**ID:** fig-23
**Label:** Figure 17 — Before Anyone Asks vs. After Someone Asks
**Description:** Left (purple, "WAVE FUNCTION — BEFORE"): central node with dotted lines fanning out to ~7 possible positions. "Many possible connections. None committed." Right (green, "MEASURED — AFTER"): same node with ONE thick solid line to ONE neighbor, all others faded. "One definite connection. One definite position."
**Caption:** Left: nobody's asking — many possible connections (wave function). Right: someone asks — one connection commits (collapse). That's quantum mechanics.

##### The Double-Slit

**Content direction:** Four steps: (1) particle approaches, nobody asking. (2) Engine computes paths through BOTH slits — neither committed. (3) Paths overlap on screen — where they line up: bright, where they cancel: dark. (4) Screen is strict consumer (dense material, 10²⁶ atoms demanding). Forces commitment → one dot. Over thousands → interference bands.

##### Why a Detector Ruins the Pattern

**Content direction:** Camera at slit = strict consumer that NEEDS to know "did you come through here?" Forces definite answer. Once answered, only one path committed. No overlap. No interference. Camera didn't "disturb" the particle. It demanded an answer.

##### The Off-By-One: Why the Quantum Eraser Isn't Time Travel

> **AUTHOR NOTE (SECTION):** THIS IS THE KEY INSIGHT for resolving quantum eraser weirdness. Callback to "Mario never gets half his world." The engine computes the ENTIRE frame before committing. There is no "during." The engine computed source + slits + detectors + erasers + screen ALL AT ONCE. The eraser is part of the INPUT, not "after." You're changing inputs to an uncommitted computation, like editing a spreadsheet formula before hitting Enter.

**Content direction:** Remember: Mario never gets half his world. Engine computes ENTIRE frame before committing. No "during." No "particle went through slit THEN hit screen THEN someone erased data." Engine computed the entire setup — source, slits, detectors, erasers, screen — in one pass. Then committed.

Quantum eraser doesn't change the past. There is no "past" during computation — only the uncommitted frame. Engine sees whole setup: slits, detectors, the eraser that will be applied. Computes result of complete configuration. Eraser is part of INPUT, not "after."

Not retroactively changing a result. Changing inputs to an uncommitted computation. Like editing a spreadsheet formula before hitting Enter. Not changing history — result hasn't committed yet.

##### Why Basketballs Don't Do This

**Content direction:** Callback to Ch 2. Basketball: 10²⁶ atoms, every one a strict consumer. Everything committed instantly. No uncommitted edges survive. No wave function lasts. Too many customers in the kitchen.

##### Physics Card: Decoherence

Isolated particles maintain superposition. Warm, dense environments: quantum behavior vanishes instantly. More neighbors = more strict consumers = faster commitment. Main quantum computing challenge: keeping qubits isolated.

##### Physics Card: The Quantum Eraser (Detailed)

Kim et al. (1999) confirmed delayed-choice quantum eraser. Entangled pairs: one hits screen, other goes through path that preserves or erases which-slit info. When erased (even after partner hit screen), interference reappears in sorted subset. Not time travel — engine computed whole setup as single frame. Sorting data = applying filter to committed spreadsheet.

##### What This Means (Insight)

Quantum behavior isn't strange. It's lazy evaluation. The engine computes every possibility but doesn't commit until something demands one. Small isolated things: nobody asking, stay as possibilities. Big dense things: everything asking, committed immediately. "Observation" isn't magic — it's a strict consumer forcing resolution. The quantum eraser isn't time travel — the frame was computed all at once.

---

#### Chapter 8 — Entanglement

**Section number:** 08
**Section title:** Entanglement: The Universe's Shortcut

> **AUTHOR NOTE (CHAPTER):** Mystery opening: Einstein's "spooky action," Bell's theorem proving correlations too strong for hidden info, 2022 Nobel Prize. Framework answer: a direct edge (shortcut) that persists. Three-panel story. Then: why not FTL communication. Keep this chapter tight — the concept is simple once you see it.

##### Mystery Block

**Mystery content:** Einstein called it "spooky action at a distance." Two particles interact, separate, fly to opposite sides. Measure one — the other INSTANTLY has correlated value. Not light-speed fast. Instantly.

Bell (1964) proved correlations too strong for hidden information (particles can't carry pre-agreed answers). Something connects them. 2022 Nobel Prize confirmed experimentally.

How can two things on opposite sides of the universe be instantly correlated with no signal?

##### Framework Answer

**Content direction:** A direct edge. A shortcut. When particles interact, they form a direct connection — 1 hop. They separate, neighborhood path grows (thousands, millions of hops). But direct edge persists. Still 1 hop. Resolution travels through the shortcut regardless of scenic route length.

##### Figure: fig-27

**ID:** fig-27
**Label:** Figure 18 — Entanglement Is a Shortcut That Persists
**Description:** Three panels. ① "THEY MEET": two nodes close together with thick orange direct edge. ② "THEY SEPARATE": same nodes far apart, gray intermediate nodes between them (scenic route: many hops), but thick orange direct edge still connects them — "still 1 hop." ③ "ONE IS MEASURED": scientist measures one node, resolution arrow travels the direct edge to other node — "Both get definite values. Instantly."
**Caption:** Direct edge persists regardless of separation. Resolution travels the shortcut. One hop. That's entanglement.

##### Why Not FTL Communication

**Content direction:** Neither scientist learns what question the other was asked. Just correlated answers. Can't control outcomes (random). Can't encode messages. Must compare results via regular signal at light speed. Like two people opening envelopes from the same deck — if you get the ace, you know the other didn't, but you can't send a message by opening your envelope.

##### Physics Card: Bell's Theorem

1964, Bell: correlations too strong for local hidden variables. Something nonlocal connects them. Decades of experiments confirmed. 2022 Nobel Prize (Aspect, Clauser, Zeilinger). In framework: direct edge IS the nonlocal connection.

##### What This Means (Insight)

Two particles that interact form a direct edge — a shortcut. Resolution travels through it, not the scenic route. One hop, regardless of distance. Not spooky. Not action at a distance. Graph structure that doesn't care about the long way around.

---

#### Chapter 9 — Why Is the Universe Expanding?

**Section number:** 09
**Section title:** Why Is the Universe Expanding? (And Getting Bigger Faster?)

> **AUTHOR NOTE (CHAPTER):** Victory lap chapter. Mystery: accelerating expansion, "dark energy" = 68% of universe, never detected. Framework: graph grows itself through computation. Positive feedback = acceleration. No mysterious substance needed. The snowball analogy. Keep it short — the elegance should speak for itself.

##### Mystery Block

**Mystery content:** Hubble (1929): galaxies flying apart. 1998: expansion accelerating. Getting faster. Physicists called it "dark energy" — 68% of the universe. Nobody detected it. Nobody knows what it is. Biggest component, completely invisible. Suspicious.

##### Framework Answer

**Content direction:** What if nothing is pushing? What if the graph grows itself? Every tick: engine runs → computations produce return values → some create new connections (new edges, nodes) → more graph → more computation next tick → more return values → more connections. Positive feedback. Snowball.

##### Figure: fig-29

**ID:** fig-29
**Label:** Figure 19 — The Graph Grows Itself
**Description:** Three graphs increasing in size left to right with "compute →" arrows between. Left (EARLY): 5 nodes. Center (LATER): ~12 nodes. Right (EVEN LATER): ~40 nodes. Bottom text: "More graph → more computation → more new connections → more graph. Growth proportional to size = acceleration."
**Caption:** Computation creates connections. More connections = more computation = more connections. Growth proportional to current size = exponential acceleration.

##### Physics Card: The Expanding Universe

Hubble (1929): galaxies receding. Perlmutter, Schmidt, Riess (1998, Nobel 2011): expansion accelerating. Standard physics requires "dark energy" — 68%, never detected. In this framework: no separate substance. Acceleration IS the graph growing through computation.

##### What This Means (Insight)

The universe is expanding because computation creates connections. Every tick: more structure → more computation → more structure. Snowball. Acceleration isn't a mysterious force. The graph is computing itself into existence, getting better at it every tick. No "dark energy" needed.

---

### PART THREE: WHAT WE DON'T KNOW

**Part header:** "Part Three — What We Don't Know"

#### Chapter 10 — Honest Gaps

**Section number:** 10
**Section title:** Honest Gaps

> **AUTHOR NOTE (CHAPTER):** Critical for credibility. No overselling. List what the framework CAN'T do. Honest, undefensive. "A framework that claims to explain everything is a story, not a theory." Use the gap-box CSS class.

**Content direction:** Use a gap-box block. List these honest gaps:

1. **Can't derive Einstein's exact equations from graph structure** — the #1 problem. Qualitative match but no mathematical derivation from first principles. Without the math, it's an analogy, not a derivation.
2. **Can't explain why space is 3D** — graph could produce any number of dimensions. Why three?
3. **Can't explain specific particles** — electrons, quarks, neutrinos have specific masses and charges. What determines which loops map to which particles?
4. **Can't prove the Born rule** — why probability = amplitude squared?
5. **Can't explain spin** — electron needs 720° rotation to return. No graph operation produces this.
6. **Can't explain charge quantization** — every proton has exactly the same charge. Why such precision?
7. **Can't explain the hierarchy problem** — gravity 10³⁶ times weaker than electromagnetism. Why?
8. **No unique experimental prediction** — framework makes same predictions as standard physics. Necessary but not sufficient. Indistinguishable from current theory by experiment = not yet physics. A lens, not a theory, until it predicts something new.

Close with: "These are genuine obstacles. Any one could invalidate the whole picture. That's how science works — you lay out what you think, lay out where it breaks, and hope someone smarter can do what you couldn't."

---

### PART FOUR: REFERENCE TABLE

**Part header:** "Part Four — Everything Mapped"

#### Chapter REF — The Complete Reference Table

**Section number:** REF
**Section title:** The Complete Reference Table

> **AUTHOR NOTE (CHAPTER):** Quick-reference lookup. Every phenomenon in one table. Three columns: Physics Concept / In This Framework / Computer Analogy. Use the summary-table CSS class.

**Content direction:** Summary table covering:

| Physics Concept          | In This Framework                                        | Computer Analogy                                         |
| ------------------------ | -------------------------------------------------------- | -------------------------------------------------------- |
| Space                    | Large-scale graph shape, connectivity pattern            | Network topology, hop count = distance                   |
| Position                 | Committed edges to specific neighbors                    | Pointer to specific memory address                       |
| Mass                     | Cyclic subgraph, loop consuming budget per tick          | Infinite loop consuming CPU per cycle                    |
| Energy                   | Return value of completed computation                    | Function output that exits and passes forward            |
| E = mc²                  | Breaking loop releases trapped work at clock speed²      | Terminating infinite loop, flushing stack as output      |
| Antimatter               | Inverse (mirror) graph                                   | Function whose output negates another's                  |
| Annihilation             | Graph meets inverse, loops cancel, energy escapes        | Composed opposite functions = zero residue               |
| Time (engine)            | Global tick counter, never dilates                       | CPU clock cycles                                         |
| Time (experienced)       | State transitions per tick, depends on budget            | Instructions per cycle, varies with load                 |
| Arrow of time            | Computation direction in engine layer                    | Program execution order — can't un-run code              |
| Time dilation (gravity)  | Mass drains budget → fewer transitions nearby            | Heavy process consuming CPU → less throughput            |
| Time dilation (velocity) | Motion rewiring costs budget                             | Data transfer consuming bandwidth                        |
| Speed of light (C)       | Engine clock speed — max propagation rate per tick       | CPU clock speed — max operations per cycle               |
| Gravity                  | Budget drain warps routing table → curved cheapest paths | Congested node warps routing costs → curved paths        |
| Can't shield gravity     | Drain flows through graph itself; shield IS graph        | Can't block congestion with more network                 |
| Equivalence principle    | Acceleration and gravity both cost budget the same way   | CPU load from motion vs. load from processes: same       |
| Spacetime                | Engine's routing table, updated per tick                 | Network routing table, updated with topology changes     |
| Black hole               | Budget drain = 100%, zero state changes, time stops      | CPU at 100% by one process, everything else freezes      |
| Gravitational waves      | Changing edge weights propagating outward at C           | Routing table updates propagating through network        |
| Wave function            | Uncommitted edges, potential connections                 | Lazy thunk — defined but not forced                      |
| Collapse                 | Strict consumer demands value, engine commits            | Forcing a lazy thunk, evaluating and caching             |
| Superposition            | Node with uncommitted edges to multiple neighbors        | Unevaluated expression with multiple possible results    |
| Interference             | Multiple graph walks overlap, amplitudes add/cancel      | Multiple path evaluations combining or canceling         |
| Decoherence              | More strict consumers → faster resolution                | More consumers of lazy value → higher chance of forcing  |
| Quantum eraser           | Whole frame computed before commit — no "after the fact" | Editing spreadsheet formula before pressing Enter        |
| Entanglement             | Direct edge (shortcut) persists regardless of distance   | Shared pointer — same data regardless of memory distance |
| Double buffering         | See Frame N while N+1 computes — always one behind       | GPU renders next frame while displaying current          |
| Holographic principle    | Graph info encoded on boundaries, rendered as 3D         | Mario 64: 3D game on 2D screen                           |
| Expansion                | Return values create new edges/nodes                     | Self-writing code, expanding codebase                    |
| Accelerating expansion   | Growth proportional to current size, positive feedback   | Exponential growth — more code → more output → more code |
| Planck length            | Minimum graph spacing — one node                         | One pixel — minimum addressable unit                     |
| Planck time              | One tick of the engine                                   | One clock cycle                                          |

---

### FOOTER

```
GL Theory v20: A Guide to the Universe for People Who Build Things — Version 20.0 — March 2026
Framework developed by Greg. Plain English Edition.
"The delusions are my own."
```

---

## END OF SOURCE DOCUMENT
