---
mod:          Beef Eaters Renew
packageId:    nelim.beefeatersrenew
repo:         Rimworld-Beef-Eaters-Renew
visibility:   public
detached:     yes
stage:        preTest
licence:      silent
licence_at:   four places, all searched for a refusal rather than a permission; source dead since 1.4, March 2023
dependencies: none
showcase:     complete
tested_on:
workshop:
remaining:
  - unverified: the sixteen scenarios of TESTING.md, none played - no animal spawned, no pen built, no milk taken
  - unverified: the Animal Gear patch, inert without that mod and never exercised (scenario M)
  - unverified: AnimalFarm added to the pygmy beefalo, so it can be traded at all; no trader has been forced yet (scenario I)
  - unverified: incompatibleWith TheGoofyOne.BeefEaters, never seen firing in the mod list (scenario N)
  - defect: the showcase shows two shaggy muffalo-like beasts of one size; the Belgian blue, pale and twice the other, is the mod's signature and is not in the picture
  - feature: no translations, so both animals keep their English labels in every language
session:      local_c1f0d325-e5cd-4552-abce-8d77af2f363d
updated:      2026-09-12, the mod's own session
---

# Beef Eaters Renew — status

Status card, read by a sweep over every mod rather than by asking each thread one at a time. It
lives at the root, never inside `Mod/`, so Steam never receives it.

This card is in English, like the repository around it: README, changelog, attribution and every
commit message.

The fields above were read off the disk on 2026-09-12 by the sweep, which left two of them
corrupted — `licence` read `licence_ou:` and `licence_at` had swallowed a `vitrine:` key. They are
repaired here, along with the four the sweep could not know:

- **`stage`** — `preTest`. The port itself is whole and has been since the first commit: wildness
  moved from a `RaceProperties` field to a stat under `statBases`, on both animals, which is the one
  line 1.6 required. Both pictures were made on 2026-09-12. Nothing is left but the game, and then
  the Workshop, which is what `preTest` means here.
- **`tested_on`** — empty, and that is accurate rather than an omission. Neither animal has ever
  been seen in a running game. No calf spawned, no information card read, no pen filled.
- **`licence`** — `silent`. The original states nothing in any of the four places `ATTRIBUTION.md`
  lists, and it stopped at 1.4 in March 2023. Published on the Workshop's custom for abandoned
  mods: named credit, takedown on request.
- **`remaining`** — the sweep's catch-all line is replaced by six real ones, now that `TESTING.md`
  exists and says precisely what has not been checked. Three faults were found while writing it,
  none of them the port's doing, and all three were fixed the same day: the description of the
  pygmy beefalo contradicted its own def, its only trade tag was one nothing in the game reads, and
  nothing declared the original incompatible. Two of the three are now `unverified` rather than
  `defect`, because the fix is in the files and has not been seen running. What is left as a defect
  is the showcase: the picture is good and it is not of this mod. It shows two shaggy
  brown beasts of about one size under a lantern, where the mod's subject is the contrast between
  a pale double-muscled cow of body size 6.0 and a muffalo shrunk to 1.0. Engraved and shipped as
  it stands, it sells an animal the mod does not contain.

The `remaining` categories: `feature` for something missing from a first release, `defect` for a
known fault left unfixed, `unverified` for what could not be checked.

The `session` field was not touched: it comes from the sweep and names the session group, not this
conversation.

The `licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.

## How the showcase was built

Both pictures were generated on 2026-09-12 and processed the same day, per `STYLE_RIMWORLD.md`.
The full-resolution originals are in `Art/`, never in `About/`.

`Art/preview.html` is the engraving page: headless Chrome rasterises it at 896 × 504, so the
glyphs are composed at final size and never resampled. The veil follows the rule of 2026-09-12 —
a colour taken from the picture rather than the old near-black — and here that colour is the plank
floor, `#4A3A2C`, sampled over the block the text occupies. Its luminance is 0.047, under the
0.18 line, so the ink is the pale one and the shadows stay.

Two departures from the standard, both measured rather than chosen: the wash holds its strength
further out, and the summary column is 290px rather than 430. The lamp pool climbs into the text
column lower down, where the standard wash was already dead, and the tail of the summary measured
2.9:1 against the 4.5:1 the guide requires. Worst point under a glyph is now 5.6:1, verified on
the rendered PNG with the text hidden.

| | |
|---|---|
| `About/Preview.png` | 896 × 504, 509 KB |
| `About/ModIcon.png` | 128 × 128, 21 KB |

## What was fixed on 2026-09-12, and what it cost

Three faults, none of them introduced by the port, all found while writing `TESTING.md`.

**The pygmy beefalo was described as the opposite of what it is.** The README and the `About.xml`
called it a pen animal rather than a caravan animal. It has no `roamMtbDays`, so it is not a roamer
and needs no pen, and it carries `packAnimal`, so it hauls in a caravan like the muffalo it comes
from. The same sentence compared it to a muffalo of body size 2.7, where Core says 2.4. **The
wording was corrected, not the def** — a documentation fix changes no balance, where making the
files match the sentence would have been a design change on someone else's animal.

**The pygmy beefalo could not be traded at all.** Its only tag was `StandardAnimal`, which no trader
def in Core or in any expansion reads and which nothing in the game data declares. `AnimalFarm` was
added beside it, the original's dead tag left in place. **This one is design rather than porting**,
the only such change in the mod, and `ATTRIBUTION.md` says so in those words.

**The original could be enabled alongside this port.** Both declare `BelgianBlueCow` and
`PygmyBeefalo`, so RimWorld loaded both and the last one won without a word in the log.
`About.xml` now declares `incompatibleWith` naming `TheGoofyOne.BeefEaters`, whose packageId was
read off the copy subscribed on this machine rather than guessed.

**The Animal Gear patch still cannot be tested here.** It is kept exactly as TheGoofyOne wrote it,
behind his `PatchOperationFindMod`, and Animal Gear is not installed. Inert and silent in its
absence, unknown in its presence.
