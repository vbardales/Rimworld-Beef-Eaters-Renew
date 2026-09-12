---
mod:          Beef Eaters Renew (unofficial)
packageId:    nelim.beefeatersrenew
repo:         Rimworld-Beef-Eaters-Renew
visibility:   public
detached:     yes
stage:        preTest
licence:      silent
licence_at:   browser-verified 2026-09-12; original files, live description, all 29 comments, 9 changelog entries and author profile; no reuse terms; last mod update 2023-03-11
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

## Verification on 2026-09-12

- **Title:** `Beef Eaters Renew (unofficial)` already identifies the continuation and its
  unofficial status. Keep the existing suffix; no additional suffix is needed.
- **Manual functional tests:** sixteen scenarios, A-P, exist in `TESTING.md`, with steps and
  expected outcomes covering loading, wildness, production, pens, caravans, training, spawning,
  trade, graphics, breeding, Animal Gear, conflicts and saves. They remain unplayed; `stage`
  stays `preTest` and `tested_on` stays empty. Scenario P now uses the full suffixed title.
- **Automated tests:** `powershell -NoProfile -ExecutionPolicy Bypass -File Tools/Check-Mod.ps1`
  passed with exit code 0. It checks XML parsing, the wildness migration, local texture paths,
  package metadata, trade tags and attribution consistency. Added checks protect the title,
  GitHub links and the Animal Gear patch guard. Malformed XML now stops the checker before
  dependent checks. Negative controls on a temporary copy detected all four introduced
  metadata/guard failures and returned one failure for malformed XML.
- **XML field validation:** `pwsh -NoProfile -File ../scripts/Check-XmlFields.ps1 -ModPath ./Mod`
  passed with exit code 0: four files checked, no unknown 1.6 fields. This external checker
  requires the installed game assemblies. Neither checker proves runtime behaviour or Animal
  Gear compatibility; scenario M remains outstanding.
- **GitHub:** the description and `<url>` in `Mod/About/About.xml` both contain
  `https://github.com/vbardales/Rimworld-Beef-Eaters-Renew`, matching the local Git remote.
- **Licence:** `silent`, the repository's classification for an upstream source with no stated
  licence and recorded as inactive. The follow-up below rechecks the evidence and its limits.
  No MIT, GPL or other explicit licence is present.
  The port's documented terms preserve credit, promise removal on the original author's
  request, and allow a continuation if the maintainer does not respond within a reasonable
  time. These terms do not establish an explicit upstream licence.

## Licence follow-up on 2026-09-12

`silent` is confirmed under this repository's classification after direct browser verification:

- The installed original Workshop item `1988048034` was inspected recursively. It contains
  no licence or copying file. Its XML and text files contain no licence, permission or
  redistribution restriction found by the search. Its `About.xml` has `<url>about:blank</url>`.
- The [original Workshop page](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034)
  was read live in the Codex browser, including all three pages containing its 29 comments.
  It lists support through 1.4 and a last update of 11 March 2023.
  Neither its description nor any of its comments states reuse terms. Author comments concern
  updates and discussion of the animals;
  a reader's August 2025 proposal to merge the mod is not permission from the author.
- No upstream GitHub repository or explicit Beef Eaters reuse policy was found by targeted
  searches. This is a search result, not proof that none exists elsewhere.
- All nine [changelog entries](https://steamcommunity.com/sharedfiles/filedetails/changelog/1988048034)
  were read live: only automatic update notices, with no licence or restriction.
- The public [author profile](https://steamcommunity.com/profiles/76561197964775630)
  shows no general mod reuse policy or linked source repository.
- Browser access succeeded after the earlier web and shell requests failed. The earlier
  cached-page and unread-comments limitations are resolved. The installed copy was not refreshed.

Here `silent` describes this mod's apparent inactivity and lack of stated terms; it does not
establish that the author is inactive everywhere, nor supply an explicit redistribution licence.

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
