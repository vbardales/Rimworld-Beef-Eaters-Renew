# BeefEatersRenew — notes de travail

Dépôt **autonome**, un seul mod. Il n'appartient plus au monorepo
`C:\Users\nelim\Documents\rimworld`, qui l'exclut par son `.gitignore` et n'en suit aucun fichier.
Un seul remote : `origin` → https://github.com/vbardales/Rimworld-Beef-Eaters-Renew, **public**.

| | |
|---|---|
| Mod | Beef Eaters Renew |
| packageId | `nelim.beefeatersrenew` |
| Version cible | RimWorld 1.6, et elle seule |
| Auteur d'origine | TheGoofyOne — [Workshop 1988048034](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034), resté en 1.4 |
| Licence de la source | aucune, nulle part — voir `ATTRIBUTION.md` |
| Contenu | `BelgianBlueCow`, `PygmyBeefalo`, plus un patch Animal Gear |
| Code | aucun. Pas de C#, pas de Harmony, pas de DLC, aucune dépendance |

## Disposition

Le mod est dans **`Mod/`**, pas à la racine. C'est `Mod/` que RimWorld charge :
`Mod/About/About.xml`, `Mod/Defs/`, `Mod/Patches/`, `Mod/Textures/`.

`ATTRIBUTION.md` existe en double, à la racine et dans `Mod/`, volontairement : l'un sert le dépôt,
l'autre part avec le mod. **Les deux doivent rester identiques** (`diff ATTRIBUTION.md Mod/ATTRIBUTION.md`).

## La règle du portage

Le contenu est celui de TheGoofyOne. Ce dépôt ne contient que le passage en 1.6.

- **Diff minimal.** Le portage entier tient en deux lignes : `wildness` a cessé d'être un champ de
  `RaceProperties` en 1.6 pour devenir une StatDef, donc `<Wildness>` sous `statBases`, sur les deux
  animaux. L'ancienne forme n'est pas une erreur, elle n'est simplement jamais lue, et le stat
  retombe à `-1`.
- **Aucune valeur d'équilibrage ne se touche.** La vache à 0.8 de vitesse pour 6.0 de corpulence est
  une blague d'auteur, pas un oubli.
- **Ne pas reformater les fichiers de l'auteur.** `Mod/Patches/Armor.xml` est indenté à la tabulation
  et de travers ; il reste tel quel. L'`.editorconfig` vaut pour ce qu'on écrit, pas pour ce qu'on
  hérite.
- **Le patch Animal Gear reste inerte.** Il est gardé derrière son `PatchOperationFindMod` ; Animal
  Gear n'est pas installé ici, donc il n'est pas exerçable et n'est pas à nous à réécrire.
- Le crédit nommé et la promesse de retrait sur demande sont la seule base de ce portage. Ils
  figurent dans `About.xml`, `README.md` et `ATTRIBUTION.md` : ils ne s'allègent pas.

## Tester

Pas de build. Vérifier que le XML est bien formé, puis charger le mod dans le jeu :
copier ou jonctionner `Mod/` vers `C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Mods\BeefEatersRenew`.
Le journal utile est `C:\Users\nelim\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

## Reste à faire avant publication

Le mod est en `1.0.0` **non publié**. Manquent, et rien d'autre :

1. `Mod/About/ModIcon.png` (128x128, rendu à 32 px) et `Mod/About/Preview.png` (896x504, < 900 Ko).
   L'original pleine résolution va dans `Art/`, jamais dans `About/`.
2. Le tag `v1.0.0` et la release GitHub.
3. La publication Workshop, puis `Mod/About/PublishedFileId.txt` renvoyé dans le dépôt.

Les deux guides qui commandent ces étapes vivent hors du dépôt, dans le monorepo :
`..\STYLE_RIMWORLD.md` pour la vitrine et l'icône, `..\PUBLISHING.md` pour l'envoi. Les lire avant,
pas après : la description et le packageId ne se corrigent pas une fois envoyés.

## Langue

`About.xml`, `README.md`, `CHANGELOG.md` et `ATTRIBUTION.md` sont **en anglais**, mod public oblige.
Ce fichier et nos échanges sont en français.
