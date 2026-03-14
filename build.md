# GL Theory — Build Manual

---

## 1. Overview

### File Structure

```
gltheory/
  content.md      ← Greg's writing. His voice. What he edits.
  build.md        ← This file. Build instructions, design system.
  index.html      ← Generated output (self-contained, inline CSS, <img> refs to SVGs).
  images/         ← SVG figures (whiteboard aesthetic, cached builds).
  CNAME           ← GitHub Pages domain config.
```

### How To Build

1. Read this file (`build.md`) completely.
2. Read `content.md` completely.
3. Generate a single `index.html` — all CSS inline in `<style>`, SVGs referenced via `<img>` tags.
4. For each `@fig`, check if `images/{slug}.svg` exists and matches the description. Only regenerate if changed.

### Output

One self-contained `index.html` file. All CSS in an inline `<style>` block. All figures referenced as `<img src="images/{slug}.svg">`. No external CSS files. No JavaScript.

---

## 2. Token Reference

Greg writes in standard markdown. Only three special tokens exist.

### @fig — Figure

A figure block. Contains a slug, a description for SVG generation, and a caption.

```
@fig:slug-name
Description of what the SVG should show. This is used by the builder
to generate or cache the SVG image. It can be multiple lines.
---
Caption text that appears below the figure in the rendered output.
@/fig
```

The `---` inside the fig block separates the description (for the builder) from the caption (for the reader). The description never appears in the rendered output.

Maps to:

```html
<div class="figure" id="slug-name">
  <span class="scene-label">Figure N — {Title from registry}</span>
  <img src="images/slug-name.svg" alt="{description}" width="100%" />
  <div class="figure-caption">{caption}</div>
</div>
```

Figure numbering is sequential based on order of appearance.

**SVG caching:** Compare the description text to the `<!-- DESCRIPTION: ... -->` comment at the top of the existing SVG. If they match, skip regeneration.

### @style — Styled Block

A block of content with a named style applied. The style name maps to a CSS class.

```
@style:hook
Content goes here. Standard markdown inside.
@/style
```

Available styles:

| Style Name             | CSS Class                   | What It Looks Like                                                       |
| ---------------------- | --------------------------- | ------------------------------------------------------------------------ |
| `hook`                 | `.hook`                     | Cream bg, 5px dark left border. Opening hook.                            |
| `mystery`              | `.mystery-block`            | Purple gradient bg, purple left border. Label: 🔍 The Mystery            |
| `insight`              | `.insight`                  | Teal top border, teal bg. Label: ✦ What This Means. Italic body.         |
| `physics-card:{Title}` | `.physics-card`             | Green left border, green bg. Label: ⚛ Physics Card — {Title}. Skippable. |
| `callout-blue`         | `.callout .callout-blue`    | Blue left border, blue bg.                                               |
| `callout-gold`         | `.callout .callout-gold`    | Gold left border, warm bg.                                               |
| `callout-neutral`      | `.callout .callout-neutral` | Gray left border, neutral bg.                                            |
| `gap-box`              | `.gap-box`                  | Bordered box for honest gaps. Contains `**Gap title.**` paragraphs.      |
| `verbatim`             | (none)                      | Copy content exactly. No AI rewriting. No formatting changes.            |

Styles can be nested: a `verbatim` inside a `callout-neutral` means the callout content is copied exactly.

```
@style:callout-neutral
@style:verbatim
This text is copied exactly as Greg wrote it.
@/style
@/style
```

### @ai — AI Instructions

Instructions for the builder that never appear in the rendered output. Can be inline (single line) or block.

Inline:

```
@ai: Write ~350 words here. Excited voice.
```

Block:

```
@ai
This entire block is instructions for the builder.
It can span multiple lines.
None of this appears in the output.
@/ai
```

### Everything Else

Standard markdown. Headers (`##`, `###`), bold (`**`), italic (`_`), lists (`-`), links (`[text](url)`), blockquotes (`>`). No special tokens needed.

### Metadata

First lines of `content.md`:

```
@ai: Title: GL Theory
@ai: Subtitle: Greg's Computational Guide to the Universe
@ai: Byline: MARCH 2026 · PLAIN ENGLISH EDITION
```

---

## 3. Design System

### Fonts

```
@import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,600;1,400&family=JetBrains+Mono:wght@400;600&family=DM+Sans:wght@300;400;600;700&display=swap');
```

| Role        | Font                        | Usage                             |
| ----------- | --------------------------- | --------------------------------- |
| Body text   | `Lora, Georgia, serif`      | Paragraphs, h1/h2, insight blocks |
| UI / Labels | `DM Sans, sans-serif`       | Callouts, captions, tables, h3    |
| Monospace   | `JetBrains Mono, monospace` | Labels, tags, code                |
| SVG text    | `DM Sans, sans-serif`       | All text inside SVG figures       |

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
  --block-bg-warm: #faf6e8;
  --block-bg-blue: #eef6fb;
  --block-bg-green: #edf8f1;
  --block-bg-teal: #edf5f6;
  --block-bg-code: #f4f2ed;
}
```

### Semantic Color Usage in SVGs

| Meaning                       | Color  | Hex     |
| ----------------------------- | ------ | ------- |
| Committed / resolved          | green  | #1e8449 |
| Stuck / error                 | red    | #c0392b |
| Informational / new           | blue   | #2471a3 |
| Change / energy / motion      | orange | #d35400 |
| Pending / quantum / in-flight | purple | #7d3c98 |
| Special / mass / shared       | gold   | #d4a017 |

---

## 4. CSS Specs

### Page

- `.doc-header`: dark banner (`--dark`), white Lora title (3.2rem), teal DM Sans subtitle (1.25rem), gray mono byline.
- `.container`: max-width 860px, centered, padding 24px (16px mobile).
- `.doc-footer`: dark bg, #888 text, teal strong, DM Sans 0.85rem, centered.
- Body: Lora 17px, line-height 1.85, `--text-primary` on `--paper`.

### Blocks

| Class              | Border               | Background                    | Padding      | Notes                                       |
| ------------------ | -------------------- | ----------------------------- | ------------ | ------------------------------------------- |
| `.hook`            | 5px left `--ink`     | `--block-bg-warm`             | 32px 36px    | 1.1rem, line-height 1.9                     |
| `.callout`         | 4px left (varies)    | varies                        | 28px 32px    | border-radius 0 6px 6px 0                   |
| `.callout-neutral` | `--muted`            | `--block-bg`                  |              |                                             |
| `.callout-blue`    | `--blue`             | `--block-bg-blue`             |              |                                             |
| `.callout-gold`    | `--gold`             | `--block-bg-warm`             |              |                                             |
| `.mystery-block`   | 4px left `--purple`  | gradient `#f9f5fd → #f5f0fa`  | 28px 32px    | Label: 🔍 The Mystery                       |
| `.physics-card`    | 4px left `--green`   | `--block-bg-green`            | 24px 28px    | Label: ⚛ Physics Card — {Title}. Skippable. |
| `.insight`         | 4px top `--teal`     | `--block-bg-teal`             | 32px 36px    | Label: ✦ What This Means. Italic Lora.      |
| `.gap-box`         | 2px solid `--border` | `--block-bg`                  | 32px 36px    | Contains gap items                          |
| `.gap-item`        | 3px left `--muted`   | none                          | left 20px    | Bold DM Sans title                          |
| `.figure`          | 1px solid `--border` | white                         | 24px         | border-radius 8px, box-shadow               |
| `.summary-table`   | —                    | dark header, alternating rows | 12-14px 16px | DM Sans 0.85rem                             |

### Labels

All labels: JetBrains Mono, 0.72-0.75rem, uppercase, 1.5-2px letter-spacing, bold.

- `.scene-label` (figures): `--muted`
- `.callout-label`: matches parent border color
- Physics card label: `--green`
- Mystery label: `--purple`
- Insight label: `--blue`

---

## 5. Voice Guidelines

- **"Smart friend at a bar."** Excited, plain English, occasional profanity.
- **Bar test:** "Would I say this to a smart friend after two beers?" If no, rewrite.
- **Not academic, not condescending.**
- `@style:verbatim` blocks are Greg's exact words. Copy them. Typos and all.
- The Author's Note is verbatim. Do not edit.

---

## 6. Narrative Rules

- Mystery blocks open physics sections. Present the weird, THEN resolve.
- Insight blocks close sections. One paragraph, plain English.
- Physics cards are skippable. Main text works without them.
- Never use a concept before explaining it.
- Images do heavy lifting. Text supports images.
- Target reading time: ~15 minutes.
- Target word count: ~4,500–5,500 words (prose only).

### Narrative Arc

```
Ch 1: You Are Mario (hook, two layers, GR/QM framing, graph basics)
  ↓
Ch 2: You Already Live in One (spacetime = graph, rules, gravity = routing pressure)
  ↓
Ch 3: There Is No Random (uncle analogy, event cone, quantum eraser = f(f⁻¹(x)) = x)
  ↓
Wild Guesses (Standard Model, dark matter, dark energy + "What Else" table)
  ↓
Technical Summary (core claim + 6 axioms)
  ↓
Outro
```

### Core Insight

The universe is a growing causal graph. Nodes are spacetime events. Growth is time. Dense regions force commitment. GR describes the committed structure. QM describes mid-propagation patterns. Same graph, different scales.

---

## 7. SVG Build Rules

### Aesthetic

- Whiteboard / stick-figure style
- Dots and lines. Simple shapes.
- DM Sans for all SVG text
- Use semantic colors from section 3

### Technical

- Each SVG uses `viewBox` for responsiveness
- First line: `<!-- DESCRIPTION: {description text} -->`
- Reference in HTML: `<img src="images/{slug}.svg" alt="..." width="100%">`

### Caching

1. For each `@fig` in content.md, read the description (text between `@fig:slug` and `---`)
2. Check if `images/{slug}.svg` exists
3. Compare description to the SVG's `<!-- DESCRIPTION: -->` comment
4. Match → skip. Changed or missing → regenerate.

### Figure Registry

All figures referenced in `content.md` via `@fig:slug`. Ordered by appearance:

| # | Slug | Chapter | Notes |
|---|------|---------|-------|
| 1 | `two-layers-of-reality` | Ch 1 | Mario + console two-layer metaphor |
| 2 | `you-already-know-graphs` | Ch 1 | Family tree / recipe / road map |
| 3 | `what-110-years-tells-us` | Ch 2 | 2×3 cheat sheet grid |
| 4 | `reality-at-the-edge` | Ch 2 | Coral reef, frontier, Mario on surface |
| 5 | `growth-rate-gravity` | Ch 2 | Cross-section: sparse tall growth vs dense stunted growth, spacetime dip |
| 6 | `gravity-routing` | Ch 2 | Empty space vs mass present, cheapest path |
| 7 | `event-cone` | Ch 3 | Pending node, event cone vs light cone, consumer approaching |
| 8 | `quantum-eraser-graph` | Ch 3 | Three stages: O, O⁻¹, cancellation = identity |

---

## 8. Layout

- Max content width: **860px**, centered
- Body: 17px, line-height 1.85
- Mobile breakpoint: **640px** (padding 16px, smaller headings)
- h2: 48px top / 16px bottom margin
- h3: 36px top / 12px bottom margin

---

## 9. Output Spec

- Single `index.html`
- All CSS inline in `<style>`
- Fonts via Google Fonts `<link>`
- Figures as `<img src="images/{slug}.svg">`
- No external CSS, no JavaScript
- HTML entities for special chars (mdash, times, sup2, etc.)
