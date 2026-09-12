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

Pas de build. Le contrôle hors jeu tient en une commande, à passer après toute modification des
defs ou de l'About :

```
powershell -ExecutionPolicy Bypass -File Tools\Check-Mod.ps1
```

Il vérifie le XML, la réparation de `wildness`, les `texPath`, et les trois décisions que ce
portage a prises exprès et qu'une refusion avec l'original perdrait sans bruit. Son code de sortie
est le nombre d'échecs. Il ne connaît pas les noms de champs de 1.6 : ça, c'est l'outillage du
monorepo.

Puis charger le mod dans le jeu :
copier ou jonctionner `Mod/` vers `C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Mods\BeefEatersRenew`.
Le journal utile est `C:\Users\nelim\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

## `STATUS.md` — à moi de le tenir

`STATUS.md` vit à la racine, jamais dans `Mod/`, pour que Steam ne le reçoive pas. Il est lu par un
balayage qui passe sur tous les mods, donc **le frontmatter est un format, pas de la prose** : ne
pas renommer de champ, ne pas en retirer, garder le vocabulaire des autres fiches.

C'est moi qui le tiens à jour, sans qu'on me le redemande. Il se met à jour **quand l'état change**,
pas à la fin de chaque échange : une étape franchie, un défaut trouvé ou corrigé, une image posée,
un essai en jeu, la publication. `updated:` prend la date et `2026-09-12, the mod's own session`.
Le champ `session:` ne se touche pas, il vient du balayage.

Le balayage écrit parfois des champs cassés — `licence: licence_ou:`, une clé `vitrine:` avalée par
`licence_at:`. Les réparer au passage plutôt que les recopier.

## Reste à faire avant publication

Le mod est en `1.0.0` **non publié**. Manquent, et rien d'autre :

1. L'essai en jeu. Rien n'a jamais tourné. Les scénarios sont écrits dans `TESTING.md`, seize en
   tout ; trois d'entre eux (F, I, N) se terminent par une décision à prendre avant publication.
2. Le tag `v1.0.0` et la release GitHub.
3. La publication Workshop, puis `Mod/About/PublishedFileId.txt` renvoyé dans le dépôt.

Les deux images sont faites depuis le 2026-09-12 : `About/Preview.png` en 896x504 et
`About/ModIcon.png` en 128x128, gravées depuis `Art/` par `Art/preview.html`. **Les sources pleine
résolution restent dans `Art/`, jamais dans `About/`** — c'est de là qu'on regrave, et une source
laissée dans `About/` partirait vers Steam. La vitrine a un défaut connu, noté dans `STATUS.md` :
elle ne montre pas la vache blanc-bleu.

Les deux guides qui commandent ces étapes vivent hors du dépôt, dans le monorepo :
`..\STYLE_RIMWORLD.md` pour la vitrine et l'icône, `..\PUBLISHING.md` pour l'envoi. Les lire avant,
pas après : la description et le packageId ne se corrigent pas une fois envoyés.

## Langue

`About.xml`, `README.md`, `CHANGELOG.md` et `ATTRIBUTION.md` sont **en anglais**, mod public oblige.
Ce fichier et nos échanges sont en français.
