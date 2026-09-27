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
| `PickleTools/README.md` | 2026-09-27 | tel quel sur disque | Oui — table des dix-sept outils, pour repérer `TextureOwner` |
| `PickleTools/Authoring/README.md` | 2026-09-27 | idem | Oui, en entier — pass matrix, `@requires`, règle « on ne teste pas le jeu », conventions de fichiers |
| `PickleTools/docs/steps.md` | 2026-09-27 | idem | Oui, en entier — catalogue des 91 steps des outils PickleTools |
| `PickleTools/Headless/README.md` | non lu | — | Rien à lancer soi-même : les runs se déposent via `Submit-PickleRun.ps1`, jamais lancés par une session |
| Pickle `Docs/steps.md` (`vbardales/Rimworld-Pickle`, fork de RimWorks) | 2026-09-27 | `main`, décodé via `gh api ... --jq .content \| base64 -d` | Oui, en entier — le catalogue natif : `def raw stat`, `def stat`, `def field`, `mod ... is loaded`, `the save round trips`, `a warning matching ... was logged`, etc. |
| `Rimworld-Release-Admin/docs/OPERATIONS.md` | non lu | — | Aucun envoi CI n'a encore eu lieu pour ce mod |
| `Rimworld-Ticket-Dispatcher/docs/WELCOME.md` | non lu | — | Aucun run Pickle déposé pour ce mod à ce jour ; à lire avant le premier dépôt |
| `Rimworld-Ticket-Dispatcher/docs/SUBMIT.md` | non lu | — | Idem — à lire avant d'appeler `Submit-PickleRun.ps1` pour ce mod |

## Mise à jour du 2026-09-27

Une suite Pickle a finalement été écrite pour ce mod le jour même, une fois la question posée à
la propriétaire (via TicketDispatcher) et sa réponse obtenue : scripter B, K, N, O, P et la moitié
« absent » de M, laisser I en prose faute d'outillage, et laisser le reste en prose parce que
c'est soit déjà prouvé hors jeu, soit le moteur qui réagit à une valeur déclarée. Voir
`Tests/Pickle/README.md` pour le détail, et `TESTING.md` pour le compte-rendu.

Les guides Pickle et PickleTools ci-dessus ont donc été lus **avant d'écrire un seul step**, pas
après coup : `PickleTools/docs/steps.md` et le catalogue natif de Pickle d'abord, pour savoir ce
qui existe réellement, `Authoring/README.md` ensuite pour la disposition des fichiers et la
matrice de passes. Le premier essai de proposition (B, I, N) s'est révélé faux sur les deux
tableaux une fois le catalogue réellement lu : trop court (K, O, P manquaient) et trop long (I
n'a tout simplement aucun step qui lui corresponde nulle part).

`Headless/README.md` et les deux guides de Ticket Dispatcher restent non lus : rien n'a encore
été lancé ni déposé pour ce mod.

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
