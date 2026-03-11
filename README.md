# GL Theory

Greg's Computational Guide to the Universe. Published at [averyseriousperson.com](https://averyseriousperson.com).

## File Structure

```
content.md    Greg's writing. Token markup (@hook, @fig:slug, etc.) and // AI instructions.
build.md      Build manual. Design system, token reference, figure registry, CSS specs.
theorem.md    Formal theory. Axioms A1-A5, derived mechanics D1-D44, open problems O1-O6.
index.html    Generated output. Self-contained HTML with inline CSS.
images/       SVG figures. Whiteboard aesthetic, DM Sans font, cached builds.
tests.md      Physics test suite. 75 tests evaluating theorem.md against known physics.
```

## How to Build

Give an AI (Claude, etc.) this prompt:

```
Read build.md and content.md. Generate index.html following the build manual.
For each figure, check if images/{slug}.svg exists — if the DESCRIPTION comment
matches the figure registry in build.md, keep it. Only regenerate changed figures.
```

That's it. `build.md` contains everything the AI needs: token-to-HTML mappings, full CSS specs, figure descriptions, voice guidelines, and output format.

## How to Edit Content

Edit `content.md`. It uses a simple token system:

- `@hook ... @/hook` — opening hook block
- `@mystery ... @/mystery` — purple mystery block
- `@insight ... @/insight` — teal insight block
- `@physics-card: Title ... @/physics-card` — green physics card (skippable)
- `@technical-card: Title ... @/technical-card` — blue technical card (skippable)
- `@fig:slug` + next line caption — figure reference
- `@code ... @/code` — pseudocode block
- `// ...` — AI instruction (never appears in output)

Standard markdown headings (`##`, `###`) work as-is.

## How to Run Tests

Give an AI both `theorem.md` and `tests.md`:

```
Read theorem.md (the framework) and tests.md (the test cases).
For each test case, evaluate whether the axioms and derived mechanics
explain the observed physics. Follow the scoring rubric in tests.md.
```

## How to Add a Figure

1. Add `@fig:your-slug` + caption line in `content.md`
2. Add the full figure entry (label, description, caption) to the Figure Registry in `build.md` section 8
3. Rebuild — the AI will generate `images/your-slug.svg` from the description

Existing SVGs are cached. The AI compares the `<!-- DESCRIPTION: ... -->` comment at the top of each SVG against the registry. Matching descriptions are skipped.

## Key Design Decisions

- **Single HTML output.** No build tools, no JS, no external CSS. One file.
- **Token markup.** Greg edits content.md without touching HTML. Tokens are obvious and greppable.
- **Separate theory.** theorem.md lives apart from the prose so it can be tested independently.
- **Technical cards.** Blue callouts referencing formal axiom/mechanic IDs (D1, D9, etc.) for readers who want rigor. Skippable — the main text works without them.
- **Incremental SVGs.** Figures only regenerate when their description changes.
