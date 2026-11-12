# Protocoles lus pour ce mod

Ce que cette session a lu, à quelle version. Hash = 8 premiers caractères du sha256 du fichier,
date = mtime. **Si le hash n'a pas changé, ne pas relire.** Chemins relatifs au monorepo
`C:\Users\nelim\Documents\rimworld`.

| Document | Hash | mtime | Lu le | Utile ici ? |
|---|---|---|---|---|
| `AGENTS.md` | 7a236f03 | 2026-09-29 | 2026-10-01 | Oui. Règle des évidences, publication par la CI |
| `AUDIT.md` | 0fb60fdf | 2026-09-29 | 2026-10-01 | Oui, en entier : commande tout |
| `MOD_SETTINGS.md` | 404916bc | 2026-09-13 | 2026-10-01 | Partiel. Seulement pour justifier `settings_audit: not_applicable` |
| `TRANSLATIONS.md` | e5197820 | 2026-09-30 | 2026-10-01 | Oui, en entier. Revue FR par Virginie ; pas de genre dans les textes du mod |
| `PUBLISHING.md` | ba43a4d2 | 2026-10-01 | 2026-10-01 | Oui. « Juste après », mise en production, règle des animaux (4 intégrations), galerie |
| `STYLE_RIMWORLD.md` | b1f9b1be | 2026-10-01 | 2026-10-01 | Partiel. Contrôles d'icône et de Preview seulement ; propriétaire génère |
| `WORKSHOP_COMMENTS.md` | 3fb37586 | 2026-09-29 | 2026-10-01 | Oui, plus tard : registre sans ligne pour 1988048034 ni Animal Gear |
| `scripts/SEARCHING.md` | 013075b0 | 2026-09-27 | 2026-10-01 | **Non, ne pas relire.** Pas de recherche de corpus ; jamais de `find /` |
| `PickleTools/README.md` | 40e44a5d | 2026-10-01 | 2026-10-01 | Partiel. `TextureOwner` ; `LoadAudit` facultatif |
| `PickleTools/Headless/README.md` | 2310bb97 | 2026-09-26 | 2026-10-01 | Oui. Dépôt par `Submit-PickleRun.ps1`, `-DepMap`, `@requires` comptés ignorés |
| `PickleTools/docs/steps.md` | 6cb87154 | 2026-10-01 | 2026-10-01 | Oui. 126 steps ; `Check-PickleSteps.ps1` confirme que chaque ligne des features résout |
| `Rimworld-Release-Admin/docs/OPERATIONS.md` | 23fcf642 | 2026-09-26 | 2026-10-01 | Plus tard (envoi CI : dry-run, SHA complet, `PUBLICATION.md` requis) |
| `Rimworld-Ticket-Dispatcher/docs/WELCOME.md` | 08b440a0 | 2026-09-27 | 2026-10-01 | Oui. Un correctif = un test ; SHA dans `-Label` ; arbre figé |
| `Rimworld-Ticket-Dispatcher/docs/SUBMIT.md` | eaca3969 | 2026-09-26 | 2026-10-01 | Oui. `-Owner local_<id>`, `-EvidenceDir`, `-RunTimeoutMinutes 120` pour une passe complète |

Absents de ce dépôt, à dessein ou pas encore : `LICENSE` (licence `silent`), `PUBLICATION.md`
(requis dès `tested -> prepublished`), `BACKLOG.md`, `NOTES.md`, `BUGS.md` (`STATUS.md.remaining`
tient ce rôle), `docs/runs/` (aucun run n'a jamais eu lieu).

Aussi lus le 2026-09-27 et inchangés dans leur rôle : `PickleTools/Authoring/README.md` (pass
matrix, `@requires`) et le catalogue natif `Docs/steps.md` du fork Pickle de `vbardales`.
Le premier relevé (2026-09-27) disait de lire les guides Pickle avant d'écrire un step : fait,
puis `Check-PickleSteps.ps1` l'a confirmé.
