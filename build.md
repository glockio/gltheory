# GL Theory — Build Manual

---

## 1. Overview

### File Structure

```
gltheory/
  content.md      ← Greg's writing. His voice. What he edits.
  build.md        ← This file. Build instructions, design system, token reference, figure registry.
  theorem.md      ← Formal axioms (A1-A5), derived mechanics (D1-D44), open problems.
  index.html      ← Generated output (self-contained, inline CSS, <img> refs to SVGs).
  images/         ← SVG figures (whiteboard aesthetic, cached builds).
  tests.md        ← Physics test suite for evaluating theorem.md.
  CNAME           ← GitHub Pages domain config.
```

### How To Build

1. Read this file (`build.md`) completely.
2. Read `content.md` completely.
3. Optionally read `theorem.md` for formal definitions (technical cards reference it).
4. Generate a single `index.html` — all CSS inline in `<style>`, SVGs referenced via `<img>` tags.
5. For each figure, check if `images/{slug}.svg` exists and matches the description. Only regenerate if changed.

### Output

One self-contained `index.html` file. All CSS in an inline `<style>` block. All figures referenced as `<img src="images/{slug}.svg">`. No external CSS files. No JavaScript.

---

## 2. Token Reference

Greg writes in markdown with `@`-prefixed tokens for block types and `//` for AI instructions.

### Block Tokens

Block tokens appear on their own line. Each has an explicit open and close tag.

| Token | HTML Class | Description |
|-------|-----------|-------------|
| `@hook ... @/hook` | `.hook` | Opening hook block. Cream bg, 5px left border. |
| `@mystery ... @/mystery` | `.mystery-block` | Purple mystery block. Label: 🔍 The Mystery |
| `@insight ... @/insight` | `.insight` | Teal insight block. Label: ✦ What This Means |
| `@physics-card: Title ... @/physics-card` | `.physics-card` | Green physics card. Label: ⚛ Physics Card — {Title} |
| `@technical-card: Title ... @/technical-card` | `.technical-card` | Blue technical card. Label: TECHNICAL DETAIL — {Title} |
| `@callout-blue ... @/callout` | `.callout .callout-blue` | Blue callout |
| `@callout-gold ... @/callout` | `.callout .callout-gold` | Gold callout |
| `@callout-green ... @/callout` | `.callout .callout-green` | Green callout |
| `@callout-neutral ... @/callout` | `.callout .callout-neutral` | Neutral callout |
| `@verbatim ... @/verbatim` | (none — copy exactly) | Content copied verbatim, no AI rewriting |
| `@code ... @/code` | `<pre>` | Pseudocode block |
| `@gap-box ... @/gap-box` | `.gap-box` | Honest gaps container |
| `@gap: Title` | `.gap-item` | Individual gap item inside gap-box |
| `@table ... @/table` | `.summary-table` | Reference table (markdown table inside) |

### Figure Token

Self-closing. Next line is the caption.

```
@fig:slug-name
Caption text goes here.
```

Maps to:
```html
<div class="figure" id="slug-name">
  <span class="scene-label">Figure N — Title</span>
  <img src="images/slug-name.svg" alt="...">
  <div class="figure-caption">Caption text</div>
</div>
```

Figure numbering is sequential. The label/title comes from the Figure Registry (section 8).

### AI Instructions

Lines starting with `//` are instructions for the AI builder. They never appear in output.

```
// Write ~350 words here. Excited voice. Reference the demo.
// VERBATIM: Do not edit the following block.
```

### Metadata Block

At the top of `content.md`:

```
// Title: GL Theory
// Subtitle: Greg's Computational Guide to the Universe
// Byline: MARCH 2026 · PLAIN ENGLISH EDITION
```

---

## 3. Design System

### Fonts

```
@import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,600;1,400&family=JetBrains+Mono:wght@400;600&family=DM+Sans:wght@300;400;600;700&display=swap');
```

| Role | Font | Usage |
|------|------|-------|
| Body text | `Lora, Georgia, serif` | Paragraph text, h1/h2 headings, insight blocks |
| UI / Labels | `DM Sans, sans-serif` | Callout text, figure captions, table text, h3 headings |
| Monospace | `JetBrains Mono, monospace` | Block labels, section numbers, tags, code blocks |
| SVG text | `DM Sans, sans-serif` | All text inside SVG figures |

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

| Meaning | Color | Use for |
|---------|-------|---------|
| Positive / completes / resolves | `--green` (#1e8449) | Things that finish, definite positions |
| Negative / loops / stuck | `--red` (#c0392b) | Cycles, overflow, things that don't resolve |
| Neutral / informational | `--blue` (#2471a3) | Graphs, nodes, informational elements |
| Warning / energy / motion | `--orange` (#d35400) | Energy release, motion, change, edges |
| Quantum / uncommitted | `--purple` (#7d3c98) | Wave functions, superposition, pending |
| Special / gold accents | `--gold` (#d4a017) | Stars, mass labels, special callouts |

---

## 4. Block Type CSS Specs

### `.doc-header`
Dark hero banner. Background: `var(--dark)`. White title (Lora, 3.2rem), teal subtitle (DM Sans, 1.25rem), gray monospace byline.

### `.hook`
Left border 5px solid `var(--ink)`. Background: `var(--block-bg-warm)`. Padding: 32px 36px. Font-size: 1.1rem. Line-height: 1.9.

### `.callout` / `.callout-{color}`
4px left border. Padding: 28px 32px. Border-radius: 0 6px 6px 0.
- `.callout-neutral` — border: `var(--muted)`, bg: `var(--block-bg)`
- `.callout-blue` — border: `var(--blue)`, bg: `var(--block-bg-blue)`
- `.callout-green` — border: `var(--green)`, bg: `var(--block-bg-green)`
- `.callout-gold` — border: `var(--gold)`, bg: `var(--block-bg-warm)`

### `.mystery-block`
4px left border `var(--purple)`. Background: `linear-gradient(135deg, #f9f5fd, #f5f0fa)`. Label: `🔍 The Mystery` in purple.

### `.physics-card`
4px left border `var(--green)`. Background: `var(--block-bg-green)`. Padding: 24px 28px. Label: `⚛ Physics Card — {Title}` in green. Skippable — main text must make sense without reading it.

### `.technical-card` (NEW)
4px left border `var(--blue)`. Background: `var(--block-bg-blue)`. Padding: 24px 28px. Margin: 28px 0. Border-radius: 0 6px 6px 0. Label: `TECHNICAL DETAIL — {Title}` in `var(--blue)`, JetBrains Mono, 0.75rem, uppercase, 1.5px letter-spacing. Body text: DM Sans. References axiom/mechanic IDs from theorem.md. Skippable — main text must make sense without it.

### `.insight`
Background: `var(--block-bg-teal)`. Padding: 32px 36px. Border-radius: 6px. Border-top: 4px solid `var(--teal)`. Label: `✦ What This Means` in blue. Body: italic Lora. One paragraph only.

### `.figure`
Background: white. Border: 1px solid `var(--border)`. Border-radius: 8px. Padding: 24px. Box-shadow: `0 2px 8px rgba(0,0,0,.05)`.
Contains: `.scene-label` (JetBrains Mono, 0.7rem, uppercase, muted), `<img>`, `.figure-caption` (DM Sans, 0.9rem, italic, muted, top border).

### `.gap-box`
Border: 2px solid `var(--border)`. Background: `var(--block-bg)`. Padding: 32px 36px.
`.gap-item`: padding-left 20px, 3px left border muted. Bold DM Sans title.

### `.summary-table`
DM Sans, 0.85rem. Dark header row (`var(--dark)`, white text). Alternating rows (white/block-bg). Padding: 12-14px 16px.

### `.doc-footer`
Background: `var(--dark)`. Color: #888. Teal `<strong>`. DM Sans, 0.85rem. Centered.

### `pre` (code blocks)
Background: `var(--block-bg-code)`. Border: 1px solid `var(--border)`. JetBrains Mono, 0.85rem, line-height 1.7.

---

## 5. Voice Guidelines

- **"Smart friend at a bar."** Excited, plain English, occasional profanity.
- **Bar test:** If a sentence sounds like a textbook, rewrite it. "Would I say this to a smart friend after two beers?" If no, rewrite.
- **Not academic, not condescending.** The reader is smart but not a physicist.
- **Greg's raw input** (in `content.md` via `//` notes and `@verbatim` blocks) captures his voice — preserve tone, fix only spelling/grammar in surrounding prose.
- **The Author's Note is VERBATIM.** Copy it exactly. Typos and all. It's Greg's personal voice.

---

## 6. Narrative Rules

- **Mystery blocks open physics chapters** (gravity, quantum). Present the weird observation, build tension, THEN resolve it with the framework.
- **Insight blocks close every chapter.** One paragraph, plain English, no jargon.
- **Physics cards are skippable.** Main text must make sense without them.
- **Technical cards are skippable.** They provide formal axiom/mechanic references for readers who want rigor. Main text must make sense without them.
- **Never use a concept before explaining it.** Every term is built from prior chapters.
- **Images do heavy lifting.** Text supports images, not the other way around.
- **Lead with the mystery.** Let the reader sit in the strangeness before resolving it.
- Target reading time: ~18 minutes.
- Target word count: ~4,500–5,500 words (prose only, excluding cards).

### Narrative Arc

```
Ch 1: You Are Mario (hook, two layers, graph basics, rules, recursion)
  ↓
Ch 2: Run It (pseudocode, evaluation walkthrough, "Did You Notice?" seedlings, primes PoC)
  ↓
★ Ch 3: THE REVEAL — "Wait. This IS Spacetime." ★
  (You Already Use This Model → subgraph stacks → pyramid → flip → spacetime)
  (THE PUNCH: "This IS spacetime." → THE RANT: Greg processes the realization)
  ↓
PART 2: GR CONFIRMATION
  ├── Mass & Energy (stable topology, E=mc², antimatter)
  ├── Gravity (routing pressure, 3 mysteries dissolved, black holes, dark matter card)
  └── Time, Space & C (hop count, leaf commit rate, dilation, arrow, GPS, muon, expansion)
  ↓
PART 3: QM CONFIRMATION
  ├── Superposition & Collapse (lazy evaluation)
  ├── Double-Slit & Quantum Eraser (4 steps, upstream dependency)
  └── Entanglement (shared node, no FTL)
  ↓
Honest Gaps (earned credibility)
  ↓
Quick Reference Table
```

### The Core Insight

**Nodes store nothing. Values, forces, and observable properties all emerge from graph topology alone.** The universe is a recursive function walking a graph. The walking IS reality.

The structural pivot is Chapter 3 — the revelation that the call stack topology IS spacetime. Everything before builds to it. Everything after confirms it.

Thread three ideas throughout:
1. Topology generates values (prime demo proof-of-concept)
2. Topological ordering gives you relativity
3. Call stack depth gives you gravity and time dilation

---

## 7. SVG Build Rules

### Aesthetic
- Whiteboard / stick-figure style
- Dots and lines. Simple shapes.
- DM Sans font for all text
- Use color tokens from the design system (section 3)

### Technical Requirements
- Each SVG uses `viewBox` for responsiveness
- Reasonable default `width` attribute
- First line must be: `<!-- DESCRIPTION: {description text} -->`
- In `index.html`, reference as: `<img src="images/{slug}.svg" alt="{alt text}" width="100%">`

### Incremental Builds
1. For each figure in content.md, check if `images/{slug}.svg` exists
2. Compare the figure description in the Figure Registry (section 8) to the `<!-- DESCRIPTION: ... -->` comment at the top of the existing SVG
3. If they match → **skip regeneration, use existing file**
4. If description changed, slug changed, or file missing → **generate fresh SVG**

---

## 8. Figure Registry

All figures, their slugs, labels, and full descriptions for SVG generation.

### two-layers-of-reality
- **Label:** Figure 0 — Two Layers of Reality
- **Description:** Left: a TV screen showing Mario's world (stick-figure Mario, platforms, a question block) labeled "RENDER LAYER — What Mario experiences. His 'reality.'" Right: a Nintendo console with circuit board showing graph nodes and edges inside, labeled "ENGINE LAYER — Dots and lines. The actual computation." Arrow goes FROM the console TO the TV screen, labeled "produces."
- **Caption:** Two layers. The engine computes the graph. The screen shows the output — Mario's world. Mario can't see the engine. He only sees the output. Sound familiar?

### you-already-know-what-a-graph-is
- **Label:** Figure 1 — You Already Know What a Graph Is
- **Description:** Three simple graphs side by side: a family tree (5 people, parent-child lines), a social network (6 people, friend connections), and a recipe (4 steps with directional arrows: Mix → Bake → Cool → Frost).
- **Caption:** These are all graphs. Dots connected by lines. That's the whole idea. We call the dots "nodes" and the connections between them "edges" — but lines and dots. And the lines/edges can have values too, so for the family tree example the line would show "mom" on the relationship between you and your mother.

### graph-evaluation-walkthrough
- **Label:** Figure 2 — Watch What Emerges From Recursive Evaluation
- **Description:** A 2-3 panel visual showing a small graph (root with two children, each with a leaf) being evaluated step by step. Panel 1: "BEFORE" — all nodes show "?" (pending). Annotation: "Nothing demanded yet. All nodes pending. → That's superposition." Panel 2: "EVALUATING" — leaves evaluate first (they have no children, return immediately at rate C). Call stack shown building as parent waits for children. Annotations: "Leaves go first — can't evaluate parent before children. → That's causal ordering." / "Stack builds while parent waits. → That's the gravity mechanism." / "Leaf commits instantly — no subgraph to recurse. → That's C, the speed of light." Panel 3: "COMPLETE" — all nodes committed, revision counters ticked. Parent reads children's LAST committed values. Annotations: "Each node ticked its revision counter. → That's time." / "Parent read the LAST committed result, not the in-progress one. → That's the speed-of-information limit."
- **Caption:** One recursive function. No physics. No special rules. Just: evaluate the graph. And look what fell out.

### evaluating-a-graph-step-by-step
- **Label:** Figure 2b — Topology Generates Primes
- **Description:** Three columns showing graphs at different depths. Left column "DEPTH 2": a simple parent-child pair. Child returns 1, parent gets 1. Label: "Depth 2 → 1. Base case." Center column "DEPTH 3": parent with two children (one at depth 2, one leaf). Result: 2. Label: "Depth 3 → 2. Prime. New irreducible structure." Right column "DEPTH 5": a tree that can't be decomposed into smaller sub-trees. Result: 3. Label: "Depth 5 → 3. Prime. Another irreducible structure." Between columns 2 and 3, a small "DEPTH 4" annotation showing 2 × 1 = 2 with label: "Depth 4 → 2. Composite. Just sub-structures re-combined." Bottom label: "Primes aren't stored. They emerge from irreducible topology. The structure IS the value."
- **Caption:** Primes emerge from topology. Depths with irreducible structure produce primes. Composite depths just re-combine existing sub-structures. No values stored anywhere.

### spreadsheet-is-a-graph
- **Label:** Figure 3 — A Spreadsheet Is a Graph Being Evaluated
- **Description:** Three panels showing spreadsheet cell dependency graph changing state. Panel 1 "STATE 0": four cells. A1=5 (blue, just changed), B1="=A1×2" (gray, stale), C1="=A1+1" (gray, stale), D1="=B1+C1" (gray, stale). Panel 2 "STATE 1": B1 and C1 both evaluate (they both depend only on A1, no dependency between each other — they can go in any order or simultaneously). B1=10 (green, committed), C1=6 (green, committed), D1 still stale. Panel 3 "STATE 2": D1 now evaluates (depends on both B1 and C1, which are both committed). D1=16 (green, committed). Arrow below: "A1 changed → B1 and C1 in parallel → D1 last. Topological order."
- **Caption:** Change A1 and the update cascades forward through the dependency graph. B1 and C1 can update in parallel — no dependency between them. D1 waits for both. That's topological ordering.

### mass-is-stable-topology
- **Label:** Figure 5 — Mass Is Stable Topology
- **Description:** Three panels. Left panel (blue, "STABLE TOPOLOGY — MASS"): a subgraph with fixed edges shown twice (Walk 1 and Walk 2), both producing the same result. Label: "Same walk. Same result. Every time. That's mass." Center panel (orange, "DISRUPTION — ENERGY INPUT"): new edge being added to the subgraph, labeled "Energy arrives. Topology changes." Right panel (green, "PROPAGATION — RELEASED ENERGY"): the subgraph with new structure, delta arrows radiating outward, labeled "New walk. Different result. Delta propagates outward. That's released energy."
- **Caption:** Mass is a stable subgraph — same walk, same result. Energy is the delta that propagates when the topology changes.

### the-bidirectional-walk
- **Label:** Figure 6 — The Bidirectional Walk
- **Description:** One subgraph of depth m shown with two sets of arrows. Blue arrows going DOWN from root to leaves labeled "DOWN LEG — m hops at rate C." Orange arrows going UP from leaves to root labeled "UP LEG — m hops at rate C." Below: equation "E = m × C (down) × C (up) = mc²." Caption note: "Same rate. Two independent directions. The graph is symmetric. No preferred direction. That's why c² appears."
- **Caption:** The walk down to leaves and the walk back up are both at rate C. Same rate, two independent directions. That's c² — not a magic constant, a topological fact.

### call-stack-pyramid
- **Label:** Figure 7a — Call Stack Depth Forms a Pyramid
- **Description:** A horizontal row of nodes across the top of the figure (connected as a graph, with a clearly deeper/more complex subgraph in the center, labeled "MASS"). Below each node, a vertical bar whose height represents that node's call stack depth when evaluated. The bars form a pyramid/mountain shape — tallest in the center over the mass, tapering to height 1 at the far edges (leaf nodes). The whole shape is amber/orange. Labels: "height 1" at edges (pointing to leaf nodes), "height 8" at peak (pointing to the mass node's bar), "MASS HERE" with an arrow at the peak. Below the figure: "Stack depth across the graph. Tall where mass is. Flat everywhere else."
- **Caption:** Plot call stack depth across the graph and you get a mountain. Tallest where mass is. Height 1 at the leaves — those are your photons, traveling at C.

### invert-pyramid-spacetime
- **Label:** Figure 7b — Invert the Pyramid. That's Spacetime.
- **Description:** Same data as call-stack-pyramid but inverted. The mountain shape is now flipped to a well shape. Over the top of it, a grid of lines (the "spacetime fabric") is draped, curving downward into the well at the center and flat at the edges — exactly like the classic spacetime curvature diagrams from physics textbooks. The mass node is at the bottom of the well. Label: "INVERT THE CALL STACK TOPOLOGY." Second label on the fabric: "THIS IS SPACETIME CURVATURE." Third label: "Same shape. Different perspective. The call stack IS the curvature."
- **Caption:** Flip the pyramid and drape a fabric over it. That's the spacetime diagram from your physics textbook. The call stack topology is spacetime curvature.

### routing-pressure
- **Label:** Figure 7c — Routing Pressure
- **Description:** Two panels. Left panel "BEFORE — no mass, flat routing table": a uniform grid of nodes. A straight path from A (top left) to B (bottom right) drawn as a straight diagonal line. All nodes the same color. Label: "Uniform routing costs. Straight path is cheapest." Right panel "AFTER — mass present, routing table updated": same grid. A cluster of nodes in the center colored amber/orange, labeled "DEEP STACK — high routing cost." The path from A to B is now curved around the mass cluster, avoiding the high-cost center. Label: "Routing table updated. Cheapest path now bends around the mass. That bend is gravity."
- **Caption:** Deep call stacks create routing pressure. Cheapest paths bend around the pressure zone. That bend is gravity.

### spacetime-is-a-routing-table
- **Label:** Figure 7d — Same Thing. Different Notation.
- **Description:** Side-by-side comparison. Left panel: the inverted call stack from figure 7b, with curving cheapest-path lines drawn through it, labeled "GRAPH MODEL — Inverted call stack. Paths curve around depth." Right panel: a classic General Relativity spacetime curvature diagram — the rubber-sheet analogy with a mass in the center and grid lines curving around it, labeled "GENERAL RELATIVITY — Spacetime fabric. Paths curve around mass." A large equals sign or double-headed arrow between the two panels. Below both: "Same thing. Different notation. 110 years of research. Our map."
- **Caption:** Same thing. Different notation. 110 years of research. Our map.

### pending-vs-committed
- **Label:** Figure 8 — Pending vs. Committed
- **Description:** Two panels. Left panel (purple border, "WAVE FUNCTION — PENDING"): central node (the particle) with six dotted lines connecting to six possible position nodes around it. None are committed. Label: "No consumer. All paths pending. Nothing committed. This is superposition." Right panel (green border, "MEASURED — COMMITTED"): same central node with ONE thick solid line to ONE position node. All other connections gone. Label: "Consumer demands a result. One path commits. One definite position."
- **Caption:** Superposition is pending evaluation. Collapse is when a consumer demands a result. One path commits.

### double-slit-as-graph
- **Label:** Figure 9 — Double-Slit as a Dependency Graph
- **Description:** A dependency graph showing the double-slit experiment. Left: a SOURCE node (blue). Center: two SLIT nodes (slit A and slit B) connected to the source with dotted purple lines labeled "PENDING — both paths alive." Right: a SCREEN node connected to both slit nodes. Below: a second version of the same graph with a DETECTOR node attached to slit A. The detector's edge is solid green (committed), forcing slit A's path to commit. Slit B's path disappears (grayed out). Labels: Top version: "No detector — both paths pending. Interference at screen." Bottom version: "Detector present — one path committed. No interference."
- **Caption:** The double-slit experiment as a dependency graph. Pending edges (purple, dotted) show both paths alive. The detector node, when present, forces commitment — killing the interference.

### entanglement-shared-subgraph
- **Label:** Figure 10 — Entanglement Is a Shared Node
- **Description:** Two particles (labeled A and B) shown far apart on opposite sides of the figure. Each has its own local subgraph. But both connect to ONE shared node in the center, drawn with a gold border and labeled "SHARED NODE." Dotted lines show A and B can be any distance apart. When either particle is evaluated, the shared node commits ONCE. Both A and B read the same committed value. Labels: "Distance doesn't matter. The shared node commits once. Both sides get the same answer. No signal needed."
- **Caption:** Two particles, one shared node. Doesn't matter how far apart. When either side evaluates, the shared node commits once. Same value, both sides. No signal needed.

### time-is-revision-rate
- **Label:** Figure 11 — Time Is the Revision Counter
- **Description:** Two horizontal timelines side by side. Top timeline labeled "FAR FROM MASS — shallow stack" shows nodes committing rapidly with many tick marks closely spaced, revision counter advancing quickly (rev 1, 2, 3, 4, 5...). Bottom timeline labeled "NEAR MASS — deep stack" shows the same span but with fewer, wider-spaced tick marks, revision counter advancing slowly (rev 1... 2... 3...). Both timelines span the same horizontal distance but the top has more commits. Label: "Same span. More commits far from mass. Fewer near mass. That's time dilation."
- **Caption:** Time is the revision counter. Each commit is one tick. Near mass: deeper stack, slower commits, fewer ticks. That's time dilation.

### the-graph-grows-itself
- **Label:** Figure 12 — The Graph Grows Itself
- **Description:** Three panels showing a graph at three stages. Panel 1 "PASS 1": a small graph with ~6 nodes and ~8 edges. Panel 2 "PASS 2": same graph but now ~10 nodes and ~14 edges — new nodes sprouted from evaluations. Panel 3 "PASS 3": ~16 nodes, ~24 edges. Each panel is labeled with its node count. Arrow below: "More graph → more evaluations → more new nodes. Growth proportional to size = accelerating expansion."
- **Caption:** The graph grows itself. Evaluations add nodes. More nodes = more evaluations = more new nodes. Growth proportional to size = accelerating expansion.

---

## 9. Layout

- Max content width: **860px**, centered
- Body: `font-size: 17px`, `line-height: 1.85`
- Mobile breakpoint: **640px**
- Container padding: 24px (16px on mobile)
- Heading margins: h2 = 48px top / 16px bottom, h3 = 36px top / 12px bottom

---

## 10. Output Spec

- Single self-contained HTML file: `index.html`
- All CSS inline in `<style>` block in `<head>`
- Fonts loaded via Google Fonts `<link>` tags
- Figures referenced as `<img src="images/{slug}.svg" alt="..." width="100%">`
- No external CSS, no JavaScript
- Footer: dark background, teal title, centered
- HTML entities for special characters (mdash, times, sup2, etc.)
