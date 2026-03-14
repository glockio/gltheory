# Update Plan v2

## CHANGE 1: Drop E=mc² Sidebar

**What:** Remove lines 225–255 (the entire "### Sidebar, wanna see something cool: E = mc²" section including all figures, insight boxes, and physics cards).

**Why:** Greg says it's a sidebar that takes away from the main arc. The gravity/routing section is the real star of Ch2.

**Where it goes:** Nowhere for now — we keep it in a backup file in case we want it as a standalone appendix later.

---

## CHANGE 2: Expand Gravity Section with Callstack/Routing + Field Analogy

**What:** After the current gravity explanation (lines 169–177), add a new section that makes the computer analogy more explicit and introduces the field/grass analogy for "mass warps spacetime."

**New content to add (after line 177, before propagation-at-c figure):**

The key idea Greg wants to convey:
- We say "mass warps spacetime." What REALLY happens is the areas around the mass change faster — they're getting new layers of reality while the dense region is still computing.
- **Field analogy:** Imagine a field growing grass. In regions with rocks, the grass underneath doesn't grow as fast. It LOOKS like the rocks are creating holes/dips in the field, but really it's just that the stuff under the rocks never changed while the areas with sun grew 3-4x as fast.
- **Computer analogy (expand what's there):** Our computers have this exact same thing. Call stack depth = the deeper your function calls nest, the longer it takes to return. Routing tables = the system maintains the most efficient path through the network to avoid congestion. The graph does this too.

**Proposed text:**

```
Think about what "mass warps spacetime" actually means in our graph. It's not that mass is pushing spacetime down like a bowling ball on a trampoline. That's the textbook picture but it's backwards.

Imagine a field of grass growing. In the open, with sunlight, the grass grows fast — three, four new inches a week. But there are rocks scattered across the field. Under the rocks, the grass barely grows at all. Now zoom out and look at the field from above after a month. The open areas are tall and lush. The areas around the rocks are short. It LOOKS like the rocks created dips — like the field is warped around them. But the rocks didn't push anything down. The grass under them just never grew. The "warping" is really just uneven growth.

That's what mass does to the graph. The dense region — the mass — takes longer to compute the next "now." Meanwhile the sparse regions around it are flying through their ticks, growing new layers, racing ahead. The difference in growth rate between the dense region and the space around it IS the curvature. Mass doesn't warp spacetime. Mass is slow spacetime. Everything else just grew faster.

Our computers deal with this exact problem. When you call a function that calls a function that calls a function, your program builds up a call stack — each layer waiting for the one below it to finish. The deeper the stack, the longer it takes to get an answer back to the top. Mass in the graph is like a deep call stack. Lots of operations that need to resolve before the next layer can be built.

And just like your computer maintains a routing table — the most efficient path through the network to avoid congestion — the graph does the same thing. Dense regions are congested. The cheapest path curves around them. That curve is gravity. The routing table is the force.
```

**New figure to add (replacing propagation-at-c which feels less relevant here):**

Use `density-across-graph.svg` and `invert-pyramid-spacetime.svg` as a sequence:

```
@fig:density-across-graph
(use existing SVG — shows causal density mountain shape, dense at mass, sparse at edges)
Mass creates a mountain of causal density. Dense regions take more steps to resolve — like navigating a crowded room vs. an empty hallway. In computers, this is called a call stack.
@/fig

@fig:invert-pyramid-spacetime
(use existing SVG — inverts the density profile to show the classic spacetime curvature well)
Now invert the density profile. The mountain becomes a well. Drape the spacetime fabric over it. THIS is the classic spacetime curvature diagram from every physics textbook. Same shape. Different perspective. Causal density IS the curvature.
@/fig
```

This is much stronger than the current propagation-at-c figure for this section. The propagation figure could move to earlier (after the speed limit section) or be cut.

---

## CHANGE 3: Replace/Reorganize Images

**Drop:** `@fig:propagation-at-c` (the ripple/tick image) — feels out of place in the gravity section. Could optionally move up to the speed limit section.

**Drop:** `@fig:graph-is-spacetime` (lines 129–133) — the simple committed/pending graph. Let `reality-at-the-edge` be the hero figure for that section.

**Add/Replace in gravity section:**
- `@fig:density-across-graph` — the causal density mountain (already exists as SVG)
- `@fig:invert-pyramid-spacetime` — the inverted well with spacetime fabric draped over it (already exists as SVG, this is the money shot)

**Keep:** `@fig:gravity-routing` — the path-bending figure, it's good

**Sequence in gravity section would be:**
1. Explain mass as stable topology ✓ (already there)
2. Explain time dilation from density ✓ (already there)
3. **NEW:** Field/grass analogy + computer callstack explanation
4. `@fig:density-across-graph` — show the density mountain
5. `@fig:invert-pyramid-spacetime` — invert it to show spacetime curvature (the "holy shit" moment)
6. `@fig:gravity-routing` — show how paths curve (already there)
7. Three "why" explanations (shield, acceleration, graviton) ✓ (already there)

---

## CHANGE 4: Fix Typos in New Raw Content

### Lines 285–291 (90s rap / Bell / Eminem section)

| Location | Issue | Fix |
|----------|-------|-----|
| 285 | "heres" → "here's" | typo |
| 285 | "dose" → "does" | typo |
| 285 | "physicis" → "physics" | typo |
| 285 | "equlivent" → "equivalent" | typo |
| 285 | "tupca" → "Tupac" | typo |
| 285 | "than" → "then" | typo |
| 285 | "a Bell" → "Bell" | typo |
| 285 | "anyother" → "another" | typo |
| 285 | "commecial aclaim" → "commercial acclaim" | typo |
| 287 | "phyysics" → "physics" | typo |
| 289 | "Enimen" → "Eminem" | typo |
| 289 | "perpstive" → "perspective" | typo |
| 289 | "carreer" → "career" | typo |
| 291 | "Thats" → "That's" | typo |
| 291 | "its" → "it's" | typo |

### Line 299 (Event Cone section)
| Location | Issue | Fix |
|----------|-------|-----|
| 299 | "contirbtuion" → "contribution" | typo |
| 305 | "Of this whole article" — the self-deprecating note. Tone is good, just needs the typo fix. | — |

### Line 43 (Chapter 1)
Greg changed the strikethrough direction: "It WAS ALL a ~~Dream~~ screen" (was ~~screen~~ Dream). This is intentional — keep it.

### Line 78
"Now lets go" → "Now let's go" | typo

### Line 251
"## Chapter 3" — Greg renumbered from Chapter 4. This is intentional — keep it.

---

## CHANGE 5: Flow & Structure Notes

### What's working great:
1. **The rap analogy for Bell's theorem** (lines 285–291) is fantastic. Einstein as Tupac, Bell as Biggie, Eminem as GL Theory offering a fresh perspective that revives the whole scene. This is peak Greg voice.
2. **Chapter renumbering** to 3 makes sense — there was never a Chapter 3 before.
3. **The event cone self-deprecating note** (line 299) is honest and endearing.
4. **The quantum eraser clarification** (line 444) about filtering is important and accurate.
5. **The tightened outro** (line 594) is much better — one paragraph, punchy, ends with the free will line.
6. **"Now let's go make some graphic content and create the freaking universe!"** (line 78) — great transition line.

### Structural flow after changes:
```
Intro → Ch1 (Mario, two layers, graphs)
→ Ch2 (Spacetime is a graph, 110 years cheat sheet, Rules)
  → Rules (4 rules)
  → Reality at the edge (hero figure)
  → Gravity section:
    - What is mass (stable topology, poverty analogy)
    - Time dilation (more edges = slower growth)
    - Field/grass analogy (NEW)
    - Callstack depth + routing tables (EXPANDED)
    - Density figure → Inverted pyramid figure (EXISTING SVGs)
    - Gravity routing figure
    - Three "why" explanations
    - Physics cards
    - Rest of the Lineup table
→ Ch3 (There is no random)
  - Uncle analogy → Rap analogy for Bell/Einstein → Event cone
  - Double slit → Delayed choice → Quantum eraser (escalation)
  - Two neighbourhoods → Rest of weird stuff → Is anything random?
→ Wild Guesses
→ Technical Summary
→ Outro
```

### One consideration:
The `@fig:propagation-at-c` (tick 0/1/2 ripple) is a nice standalone concept. Rather than cutting it entirely, consider moving it up to right after the "Speed limit" section (line 98) where it naturally fits — that's where we explain c = 1 hop per tick.

---

## EXECUTION ORDER

1. Drop E=mc² sidebar (lines 225–255) → save to `emc2_sidebar_backup.md`
2. Drop `@fig:graph-is-spacetime` (lines 129–133)
3. Move `@fig:propagation-at-c` up to after speed limit section (optional)
4. Add field/grass analogy + expanded callstack text after line 177
5. Replace propagation figure area with density-across-graph + invert-pyramid-spacetime figures
6. Fix all typos in new raw content
7. Final read-through
