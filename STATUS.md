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
  - unverified: French translations added for 21 fields; in-game French display and optional armour still to verify
session:      local_c1f0d325-e5cd-4552-abce-8d77af2f363d
updated:      2026-09-13, preview illustration replaced
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
  line 1.6 required. The icon was made on 2026-09-12; the preview illustration was replaced on 2026-09-13. Nothing is left but the game, and then
  the Workshop, which is what `preTest` means here.
- **`tested_on`** — empty, and that is accurate rather than an omission. Neither animal has ever
  been seen in a running game. No calf spawned, no information card read, no pen filled.
- **`licence`** — `silent`. The original states nothing in any of the four places `ATTRIBUTION.md`
  lists, and it stopped at 1.4 in March 2023. Published on the Workshop's custom for abandoned
  mods: named credit, takedown on request.
- **`remaining`** — manual game scenarios and French display remain unverified. The previous preview defect was fixed on 2026-09-13: the new illustration clearly contrasts a large pale muscular Belgian blue with a small horned shaggy beefalo.

The `remaining` categories: `feature` for something missing from a first release, `defect` for a
known fault left unfixed, `unverified` for what could not be checked.

The `session` field was not touched: it comes from the sweep and names the session group, not this
conversation.

The `licence` vocabulary: `open` an explicit licence, `silent` no licence and a dead source,
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.

## Verification on 2026-09-12

- **French translation:** added 21 DefInjected fields in
  `Mod/Languages/French/DefInjected/ThingDef/BeefEaters.xml` and
  `Mod/Languages/French/DefInjected/PawnKindDef/BeefEaters.xml`: animal descriptions and names,
  bull/calf labels and plurals, named attacks, and optional armour. The external
  `Check-DefInjected.ps1 -TransMod ./Mod` checked 21 keys with zero errors, using the installed
  game types. `Tools/Check-Mod.ps1` also passed, including all six XML files. In-game language
  switching and armour-present/absent cases remain unplayed; scenario P now covers them.
- **About links:** the description now has an explicit links section for GitHub source, issues,
  changelog, attribution/licence review and the original Workshop item. No port Workshop URL
  was invented: this port has not been published there.

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

Illustration replaced and overlay recomposed on 2026-09-13 according to `../STYLE_RIMWORLD.md`.

- **Source:** new unlettered illustration generated with built-in ImageGen, saved in `Art/Preview.png` and visually checked before composition. The pale short-coated muscular cow and much smaller horned shaggy beefalo resolve the old subject mismatch. The previous source was archived before generation at `Art/Preview-archive-2026-09-12.png`; `Art/Preview-source.png` also remains untouched. The exact generation prompt is saved in `Art/PROMPT_Preview.md`.
- **Composition:** `Art/preview.html`, at 896 x 504. Name and summary preserved. The tag is
  separate from the title. Strong title words and summary share the same primary ink. Renew
  remains in the title at 65% (29.9 px), weight 600, in secondary ink. Placement, typography,
  rule and triangular version badge follow the guide. Version is read from the delivered
  `Mod/About/About.xml`, choosing the highest stable declared version (currently 1.6).
- **Palette:** `Art/preview-palette.json` is the sole colour reference, loaded by the HTML.
  The veil comes from the broad brown plank floor. The secondary ink is a lightened, coloured
  ochre from the dominant wood/straw family, not an average of the pixels. The vivid accent
  comes from the blue-green water visible in the trough, lightened and saturated into turquoise.
  This cool family clearly separates the rule and badge from the warm ochre secondary ink and
  dominant wooden scene. The darker veil is held across the text area to protect contrast.
- **Rendering:** `Art/render-preview.cjs` serves the local composition, waits for
  `document.fonts.ready` and image decoding, then captures at device scale 1. Run with Node.js,
  Playwright and sharp available through NODE_PATH. Actual Chrome platform fonts were verified:
  Segoe UI Semibold for the title, Segoe UI regular for tag/summary, Segoe UI Bold for the badge.
  No fallback font was used.
- **QA:** `Art/preview-qa.json` records font evidence, bounds, dimensions, size and contrast.
  `Art/preview-background.png` is the rendered background with lettering hidden. Minimum
  contrasts across the entire text rectangles, including corners and all interior pixels:
  primary title ink 8.76:1, Renew 6.78:1, summary 7.19:1, tag 5.87:1.
  Badge digits on the opaque accent: 8.88:1.
  Shadows were not credited in these measurements.
- **Visual checks:** inspected `Mod/About/Preview.png` at 896 x 504 and
  `Art/preview-268.png` at 268 px wide. No clipped text or overlap; title and version identifiable,
  reduced title suffix readable, rule visible, cool accent distinct from the warm secondary ink.
  Output: 448,124 bytes, below 900 KB. No publication performed.

The icon is unchanged: `Mod/About/ModIcon.png`, 128 x 128.
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
