# Runs

One line per Pickle run that still proves something about the current `Mod/`.

- 2026-10-10, ticket 1de2, `11-def-values`, tree `bedb34a` (Art/ and Mod/About/Preview.png dirty, irrelevant): exitReason passed, 9 discovered, 9 played, 9 passed. First run of the feature; the author's numbers (scenarios A, D, E, F, G, H, J, L) now read after load. Evidence: `Tests/Pickle/Evidence/20261010-def-values` (summary, junit, Player.log).
- 2026-10-02, tickets min-en/min-fr/textures/original/animals reruns (evidence `20261002-*-rerun`), tree `cefade3` plus local-step fixes: all green (min EN 4 wildness + 2 EN labels, min FR 4 wildness + 2 FR labels, textures 3, original collision 1, ADS 2 + Dogs mate 2). Animal Gear present (`08`) passed in pass ad6a; `04-animal-gear-absent` is red by construction when Animal Gear is mounted (filtered out). No `@wip`.
- 2026-10-13 p17-beefeaters-01-wildness-defs: RimWorld 1.7 EN, ticket 88c2, 2 of 2 passed, exitReason passed (wildness of both animals survives the load); validated by Audit. `<li>1.7</li>` not added: waits for Virginie.
- 2026-10-12, `10-gallery-animals` v6b (evidence `20261012-gallery-v6b`), tree after `bedb34a`: exitReason passed, 5 played, 5 passed; captures opened 2026-10-13, workshop 1 (barn) and 3 (cow + calf) kept, 2 and 4 refused as too small.
- 2026-10-13, `10-gallery-animals` workshop 4 reframed (evidence `20261013-gallery-v7`, ticket 8a7d): exit 3, NO REPORT, game killed at startup, no scenario played; replayed as ticket ea15.
- 2026-10-15, `10-gallery-animals` workshops 2 and 4 recomposed (evidence `20261015-gallery-v8`, ticket dd46): exitReason passed, 2 played, 2 passed; captures opened, both kept as candidates. Earlier v7b (ea15, workshop 4 only, 1 of 1) refused: beefalo lost in bare earth.
- 2026-10-15 ticket d361: gallery v9 (story rewritten, Nelim carries hay, 5 scenarios in day order 7/12/15/17/19 h), submitted, result pending.
- 2026-10-15 ticket b885: gallery props variant (12-gallery-animals-props.feature, wsl-deps.sanctuary-props.map: Mlie.AnimalFeedTrough 2071757940 trough, VanillaExpanded.VFEPropsandDecor 2102143149 hay bale, plus Harmony, VEF, VGP), submitted, result pending. HayRack (2717707382) skipped: it is a production building of Vanilla-like wheat, not a prop.
