---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: not_applicable
mod:          Beef Eaters Renew (unofficial)
packageId:    nelim.beefeaters
repo:         Rimworld-Beef-Eaters-Renew
remote:       https://github.com/vbardales/Rimworld-Beef-Eaters-Renew.git
visibility:   public
detached:     yes
workflow_stage: writeShotlist[1.0.0]
code_review_sha: e0d2feecb5063792779fe6bc3a4f3bb3bc65fde0
licence:      silent
licence_at:   browser-verified 2026-09-12; original files, live description, all 29 comments, 9 changelog entries and author profile; no reuse terms; last mod update 2023-03-11
upstream_mod_remotes: N/A
dependencies: none
workshop_required_items: n/a, no mandatory Workshop dependency (About.xml has no modDependencies)
ecosystem_line: 1.0
showcase:     complete
tested_on:     2026-10-02 cefade3 (min EN/FR, textures, original, Animal Gear, ADS 2 + Dogs mate, green after rerun) and 2026-10-10 bedb34a (11-def-values 9/9), RimWorld 1.6 (WSL); gallery pending; and 2026-10-13 (p17-beefeaters-01-wildness-defs, ticket 88c2, 2/2) RimWorld 1.7 (WSL, validated by Audit); and 2026-11-16 036c22b (476e, 06-labels-french 2/2) and 2026-11-17 ab966fd (ca9d, 15-reskin-compat 2/2), RimWorld 1.6 (WSL)
tested_1_7:   yes
workshop:     3811290251
remaining:
  - REPLAY 2026-11-23 (9.0): write the gallery shotlist (skill write-shotlist) and score it with score-gallery (5 per scene) before any capture change; 9.e gallery table in STATUS; 9.f gallery_validated_sha needs Virginie oui on the gallery.
  - REPLAY 2026-11-22 (5.f, 8.h): unverified, no in-game scenario confirms the absence of a settings page; source checks only (Check-SettingsContract PASS).
  - CLEANUP 2026-11-18 (14.c to 14.e): STATUS.md, PUBLICATION.md, TESTING.md and Docs/CLAUDE.md cleaned (removed text in Docs/runs/status-journal-2026-11c.md and Docs/runs/publication-testing-history-2026-11-18.md; Docs/PROTOCOLS-READ.md deleted, replaced by protocols_read_sha). 14.d: no branch but `main`, nothing to delete. WSL cleanup DONE 2026-11-18 under the machine lock: Animal Gear 1541438907 removed from ~/workshop-cache (the original 1988048034 was not in the WSL cache); kept Dogs mate 2441132298, ADS 2 3238353862 and the 32 gallery ids; PiI scan of 727 wsl-deps maps: no other mod names 1541438907 or 1988048034. Both Steam items unsubscribed by PiI 2026-11-18 (kept protected: maps animalgear and incompat-original serve scenarios 08 and 05 of the next non-regression). Stage moved to dormant[1.0.0] (14.e).
  - RESKIN STUDY 2026-11-19: Cow Variety 2905859638, Cows Retexture 3202197467 and [HB] Pygmy Muffalo Reskin 2943377809 do not apply to BelgianBlueCow or PygmyBeefalo (vanilla Cow, or dismarzero Pygmy muffalo). Red cross set in `docs/inventory/ecosystem-steam/BeefEatersRenew.md` (protocols root). PiI told to unprotect the 3 ids; no answer needed. Nothing to capture.
  - HANNAHBUG: permission request for her HD reskin (Workshop 2943088425) posted by Virginie 2026-10-14, still unanswered; her textures are not bundled. Yes: drop her 21 same-named PNGs into `Mod/Textures/` with credit (description, THANKS, ATTRIBUTION.md). No answer or no: nothing changes.
session:      local_31dd62a7-7e6f-466f-9966-b470033a5a45
updated:      2026-11-23 (replay code.., stage writeShotlist[1.0.0]; older history in git)
publication_changelog_review_sha: c9243f50f02778107ad0324859c0816ee09caed1
thanks_drafted_line: 1.0
echo_review_sha: 696818791f049767c05025f77988f70042be3385
social_preview_sha256: b37b9090bde9d351414dcbdf05a3134dd586ff75eab7a51e44dbf809d0798744
protocols_read_sha: b2bd7dae81e381b1e70c71de105fd625702ab286
---
# Beef Eaters Renew — status

Published 1.0.0 on 2026-11-18 (tag `v1.0.0` on `50785f3`, Workshop 3811290251, public), non-regression green 29/29 (`Docs/runs/nonreg-1.0.0-2026-11-18.md`). Older dated sections are in `Docs/runs/status-journal-2026-11c.md` (2026-11-17 to 2026-11-18), `status-journal-2026-11b.md` (2026-11-12 to 2026-11-17), `status-journal-2026-11.md` (2026-11-06 to 2026-11-09), `status-journal-2026-10b.md`, `status-journal-2026-10.md`.

Code review 2026-11-23: diff of Mod since ecd49e2 read, French texts only (Languages, two description sentences), Check-Translations green: revue du diff : images et texte seuls, no new playTests pass.

## NSB

Rules (owner, 2026-11-05): everything in NSB is free; a colonist or domestic animal outside NSB needs express validation (mod animals authorized by default, 2026-11-07); a colonist's properties change only with express validation; every outfit is free; every animal the mod includes is shown in the gallery (2026-11-06).

Since the last sync (gallery done 2026-11-17), NSB changed only in registers and one plan: `VALIDE.md` (bridge railings, Jiro wardrobe photos, 2026-11-22), `RECONSTRUCTION-SAUVEGARDE.md` (plan to rebuild the save as `Nelims-tribe-v2`, 2026-11-18, not started: gates first), Iori profile (2026-11-17). None touches Nelim, the pen or the river bank used here. NPT: `steps.md` gained roster steps for Miel and Soren (2026-11-22) and the face-parts catalogue a vanilla-face section (2026-11-17): none serves a shot. Nothing updated in the shotlist or scenarios, nothing left to relaunch. Watch: if the save is rebuilt, every cell below (pen 140-155 x 217-222, river bank, lily field) must be re-read before the gallery scenarios are played again.

Places read: 2026-11-23 Tribe read: 2026-11-23 Steps read: 2026-11-23

| Place | Shots that use it | Changes made for the gallery | Last read |
|---|---|---|---|
| river bank, near `river-bridge` (135, 124) and `left-bank` (112, 111); cells (146, 133) and (148, 126) | 1 (dawn, cow leaves the trader's wagon), 4 (beefalo and calf come down) | dense decor grouped around the subject: wagon, logs, bales, torches, flowers, tall grass, food box (scenario `12-gallery-animals-props`) | 2026-11-23 |
| lily field, cell (154, 107), not a named NSB place | 2 (milking, calf looks on) | daylilies, hay | 2026-11-23 |
| pen, `enclosure-south` (149, 214), cells 140-155 x 217-222 | 3 (bull at the trough), 6 (reskin herd) | trough, hay bales, daylilies, torch lamp | 2026-11-23 |
| clearing, trough with hay bales and fires | 5 (evening, whole herd) | bales, fires, trough | 2026-11-23 |

| Colonist | Shots | Outfit per shot | Last read of profile | Exceptions |
|---|---|---|---|---|
| Nelim | 1 to 6 | farm kit: `Apparel_Pants` (110, 85, 60), `Apparel_Corset` (232, 224, 208), `Apparel_CowboyHat` (205, 175, 105), duster in 1 only; every outfit is free | 2026-11-23 (`NELIM-PROFIL.md`: hair `Roo_Royal_LongHD` under a closed hat, owner 2026-10-21, matches the scenarios) | none declared; mouth and lid expressions are scene expressions, to confirm against rule 3 at write-shotlist |

| Animal | Shots | Outfit | Last read of its sheet | Exceptions |
|---|---|---|---|---|
| BelgianBlueCow (cow Rosa, bull Taureau, calf Petite), the mod's own | 1, 2, 3, 5, 6 | none | mod defs, 2026-11-23 | none (mod animal, authorized by default) |
| PygmyBeefalo (adult Pip and calf), the mod's own | 4, 5, 6 | none | mod defs, 2026-11-23 | none (mod animal, authorized by default) |

Included animals (rule 5): BelgianBlueCow adult female: shots 1, 2, 5. Adult male: shots 3, 5. Calf: shot 2. PygmyBeefalo adult: shots 4, 5. Calf: shot 4. No row MISSING.

## Ecosystem, 2026-11-12 (AUDIT 8.0, scan of 2026-11-12)

Ecosystem (Steam, 2026-11-22, delta): parent Beef Eaters 1988048034; no new fork, patch or translation. Source: PiI, `docs/inventory/ecosystem-steam/BeefEatersRenew.md`, section "Delta 2026-11-22".

| packageId | type | relation |
|---|---|---|
| `Mlie.NoVersionWarning` | link | its `1.5/ModIdsToFix.xml` lists the original id (matched_on original-id): version-warning helper, nothing to play or patch. |


## Dependencies and integrations, 2026-11-22 (AUDIT 4.f, 4.g; revision ecd49e2, Mod last changed 2026-11-18)

Hard dependencies: none (`modDependencies` absent, `dependencies: none`). DLC required: none; `loadAfter` lists Core and the five DLCs for ordering only. Incompatible: `TheGoofyOne.BeefEaters` (the original, same defNames). `loadBefore`: `SamBucher.ADogSaidAnimalProsthetics2`.

Optional integrations, from `Mod/About/OptionalCompat.xml` (Animal Gear, Dogs mate) plus ADS 2 declared by `loadBefore`:

| Mod | Workshop | Status | Reason |
|---|---|---|---|
| A Dog Said... Animal Prosthetics 2 (`SamBucher.ADogSaidAnimalProsthetics2`) | 3238353862 | patched, `Patches/ADS2.xml` | vanilla Cow is in ADS_Cat2 and ADS_Cat1, Muffalo in all three: BelgianBlueCow gets Cat1 and Cat2, PygmyBeefalo Cat1, Cat2 and Cat3 |
| Dogs mate (Continued) (`Mlie.DogsMate`) | 2441132298 | patched, `Patches/DogsMate.xml` | BelgianBlueCow into group `Cow`, PygmyBeefalo into group `Bison` (bull and muffalo cross) |
| [XND] Nocturnal Animals (Continued) (`Mlie.XNDNocturnalAnimals`) | 2269731409 | not applicable, no patch | its Core patches name neither Cow nor Muffalo: both analogues stay diurnal, so do these animals |
| Better Crossbreeding (`DizzyEevee.BetterCrossbreeding`) | 3520675842 | not applicable, no patch | no vanilla analogue crosses: a crossbreed would be new design, not porting; revisit on Virginie's call (decided 2026-10-01) |
| Animal Gear (`Dylan.AnimalGear`) | 1541438907 | patched, `Patches/Armor.xml` | armour patch carried over from the original, guarded by `PatchOperationFindMod` |

Check: `Check-OptionalCompat.ps1` OK (2 declared, 1 patched target ordered by metadata).

## Settings audit, 2026-11-22 (AUDIT 5.a to 5.g; revision ecd49e2, Mod last changed 2026-11-18)

Result: `settings_audit: not_applicable`.

Inventory: the mod ships two race ThingDefs and their PawnKindDefs (`Mod/Defs/Race_BelgianBlueCows.xml`, `Race_PygmyBeefalo.xml`), three guarded XML patches (`Mod/Patches/ADS2.xml`, `DogsMate.xml`, `Armor.xml`) and DefInjected French texts. No assembly, no C# in `Mod/` (`git ls-files Mod` holds no `.dll` and no `.cs`; the only C# in the repository is the Pickle test steps under `Tests/Pickle/Source/`, never shipped). No behaviour is configurable at runtime: every value (wildness, body size, move speed, trader tags) is a Def field the player edits through the game's own mod tools, not a mod option.

Decision: no setting would have a concrete use. A body size or wildness slider would change balance values the update deliberately left untouched (PUBLICATION.md: "No balance value was changed"), and a toggle for the optional integrations is redundant, since each patch is already guarded and does nothing without its mod.

Access and shortcut: no Mod options page exists and none is registered; the mod defines no `MainButtonDef` and carries no settings API text (grep of `Mod/` for `MainButtonDef`, `ModSettings`, `SettingsCategory` finds nothing). No empty page, no MainButtons shortcut, so nothing to hide and nothing for RIMMSQOL to reveal.

Application timing and scope: not applicable, nothing is configurable. Game versions: 1.6 and 1.7 declared. Integrations: none touch settings (ADS 2, Dogs mate, Animal Gear are patched at load).

Evidence: in-game absence of a settings page was not observed by a dedicated scenario; the source checks above are the proof, and the load-time logs of the Pickle runs listed in `tested_on` show no settings-related error. Recorded as `unverified` in `remaining` for `playTests` (8.h).

## Translation audit, 2026-11-22 (AUDIT 6.a to 6.h; revision ecd49e2)

Where the text lives: English is the source side, written in the Defs (`Mod/Defs/Race_BelgianBlueCows.xml`, `Race_PygmyBeefalo.xml`; the Animal Gear armour label and description included). French is `Mod/Languages/French/DefInjected/PawnKindDef/BeefEaters.xml` and `ThingDef/BeefEaters.xml`: 19 keys, 0 missing against English (`TRANSLATION_REVIEW.md`, regenerated today). No C#, no Keyed key, no Strings file. Other languages: none; no translation of the original exists (PiI delta 2026-11-22).

Checks: `Check-Translations.ps1` PASS (9 source texts plus 10 nested, French coverage, duplicates, formatting tokens), 2 French paths flagged as nested or inherited texts (NOTE). French read in full today: no tu, vous, nous or `(e)`, no gendered text.

Proper names decided by the owner: `Docs/review-names.md` (Belgian Blue becomes `Blanc Bleu Belge`, pygmy beefalo becomes `bœufalo pygmée`, `muffalo` kept). ChatGPT review (`/review-translation`) run 2026-11-12 and applied (commits 1cf25b1, 558eaf3, b351785); refused proposals in `Docs/review-refusals.md`. French labels checked in game by Pickle `06-labels-french` (2/2 on 2026-11-16, run 476e).

Doubtful texts: none flagged (no `Docs/translation-review-flags.json`).

Virginie's French review: validated 2026-11-22 (reviewer Virginie, chat of this session), revision `6baf2e6` (French texts as of that commit, 19 keys: "éons d'élevage" and "ne cherchent jamais à se venger" applied from the ChatGPT rounds of 2026-11-22). Corrections: none from her. ChatGPT `/review-translation` page 1: three rounds on 2026-11-22, the last with nothing applied (1/1 pages clean). Her decisions on proper names stay in `Docs/review-names.md`.
