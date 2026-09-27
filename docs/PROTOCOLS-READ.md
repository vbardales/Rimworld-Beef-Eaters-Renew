# Protocoles lus pour ce mod

Ce que cette session a lu dans le monorepo pour auditer BeefEatersRenew, avec la révision
(commit court) au moment de la lecture, pour éviter de relire ce qui n'a pas bougé.

| Document | Lu le | Révision monorepo | Utile ici ? |
|---|---|---|---|
| `AUDIT.md` | 2026-09-27 | tel quel sur disque, pas de dépôt Git séparé | Oui, en entier — c'est le texte qui commande cet audit |
| `AGENTS.md` | 2026-09-27 | idem | Oui — publication CI uniquement, pas de bouton Steam |
| `MOD_SETTINGS.md` | 2026-09-27 | idem | Oui, en entier — confirme `settings_audit: not_applicable` |
| `TRANSLATIONS.md` | 2026-09-27 | idem | Oui, en entier — confirme les trois champs `complete` |
| `PUBLISHING.md` | 2026-09-27 | idem | Partiel — sections « Au moment d'envoyer », « Juste après », « Publier par la CI ». Pas relu : « Description », « Images », « Licence », « Mentions », « Dépôt », « Topics » (déjà appliquées lors du premier envoi, rien n'a changé côté mod depuis) |
| `STYLE_RIMWORLD.md` | non relu cette session | — | La vitrine et l'icône existent déjà et ont été validées par l'audit du 2026-09-13 ; rien ne les a changées depuis |
| `WORKSHOP_COMMENTS.md` | non lu | — | Inutile tant que le mod n'est pas public : les remerciements se postent après bascule en public |
| `scripts/SEARCHING.md` | non lu | — | Aucune recherche de mod à faire pour ce port |
| `PickleTools/README.md` | non lu | — | Ce mod n'a aucune suite Pickle ; voir le constat plus bas |
| `PickleTools/Headless/README.md` | non lu | — | Idem, rien à lancer dans le WSL pour ce mod à ce jour |
| `PickleTools/docs/steps.md` | non lu | — | Idem — à lire seulement si une suite Pickle est un jour écrite ici |
| `Rimworld-Release-Admin/docs/OPERATIONS.md` | non lu | — | Aucun envoi CI n'a encore eu lieu pour ce mod |
| `Rimworld-Ticket-Dispatcher/docs/WELCOME.md` | non lu | — | Aucun run Pickle déposé pour ce mod, donc aucun ticket |
| `Rimworld-Ticket-Dispatcher/docs/SUBMIT.md` | non lu | — | Idem |

## Ce qui n'a pas servi, et pourquoi

Les cinq derniers de la liste (Pickle et Ticket Dispatcher) ne concernent que les mods qui ont
une suite de tests joués en jeu. **Ce mod n'en a pas** : `TESTING.md` porte seize scénarios en
prose (A à P), jamais traduits en Gherkin, jamais joués. Voir plus bas — c'est le vrai manque que
cet audit remonte, pas un oubli de lecture.

## Fichiers de doc que ce dépôt ne porte pas, et pourquoi

La liste demandée contenait plusieurs noms qu'on cherche parfois à la racine d'un mod. Ici :

| Fichier | État |
|---|---|
| `LICENSE` | Absent, à dessein — le contenu original n'a aucune licence déclarée (`licence: silent`), et `ATTRIBUTION.md` explique pourquoi en inventer une serait faux |
| `PUBLICATION.md` | Absent — c'est le fichier de la transition `tested -> prepublished` d'AUDIT.md ; ce mod n'y est pas |
| `BACKLOG.md` | Absent — rien n'attend au-delà de ce que `STATUS.md` liste déjà en `remaining` |
| `docs/runs/` | Absent — aucun run Pickle n'a jamais tourné pour ce mod, donc aucun résumé à y ranger |
| `Tests/Pickle/` | Absent — aucune suite Gherkin écrite, voir plus haut |
| `NOTES.md`, `BUGS.md` | Absents — `STATUS.md.remaining` et `TESTING.md` couvrent ce rôle pour ce mod |
