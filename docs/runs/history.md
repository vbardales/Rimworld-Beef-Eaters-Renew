# Runs

One line per Pickle run that still proves something about the current `Mod/`.

- 2026-10-10, ticket 1de2, `11-def-values`, tree `bedb34a` (Art/ and Mod/About/Preview.png dirty, irrelevant): exitReason passed, 9 discovered, 9 played, 9 passed. First run of the feature; the author's numbers (scenarios A, D, E, F, G, H, J, L) now read after load. Evidence: `Tests/Pickle/Evidence/20261010-def-values` (summary, junit, Player.log).
- 2026-10-02, tickets min-en/min-fr/textures/original/animals reruns (evidence `20261002-*-rerun`), tree `cefade3` plus local-step fixes: all green (min EN 4 wildness + 2 EN labels, min FR 4 wildness + 2 FR labels, textures 3, original collision 1, ADS 2 + Dogs mate 2). Animal Gear present (`08`) passed in pass ad6a; `04-animal-gear-absent` is red by construction when Animal Gear is mounted (filtered out). No `@wip`.
