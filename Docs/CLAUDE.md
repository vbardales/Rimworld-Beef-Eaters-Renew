# BeefEatersRenew — notes de travail

Dépôt **autonome**, un seul mod. Il n'appartient plus au monorepo
`C:\Users\nelim\Documents\rimworld`, qui l'exclut par son `.gitignore` et n'en suit aucun fichier.
Un seul remote : `origin` → https://github.com/vbardales/Rimworld-Beef-Eaters-Renew, **public**.

| | |
|---|---|
| Mod | Beef Eaters Renew |
| packageId | `nelim.beefeaters` |
| Version cible | RimWorld 1.6, et elle seule |
| Auteur d'origine | TheGoofyOne — [Workshop 1988048034](https://steamcommunity.com/sharedfiles/filedetails/?id=1988048034), resté en 1.4 |
| Licence de la source | aucune, nulle part — voir `ATTRIBUTION.md` |
| Contenu | `BelgianBlueCow`, `PygmyBeefalo`, plus un patch Animal Gear |
| Code | aucun dans `Mod/` : pas de C#, pas de Harmony, pas de DLC, aucune dépendance. Un seul step C# local, côté tests (`Tests/Pickle/Source/`) |

## Disposition

Le mod est dans **`Mod/`**, pas à la racine. C'est `Mod/` que RimWorld charge :
`Mod/About/About.xml`, `Mod/Defs/`, `Mod/Patches/`, `Mod/Textures/`.

`ATTRIBUTION.md` existe en double, à la racine et dans `Mod/`, volontairement : l'un sert le dépôt,
l'autre part avec le mod. **Les deux doivent rester identiques** (`diff ATTRIBUTION.md Mod/ATTRIBUTION.md`).

## La règle du portage

Le contenu est celui de TheGoofyOne. Ce dépôt ne contient que le passage en 1.6.

- **Diff minimal.** Le portage proprement dit tient en deux lignes : `wildness` a cessé d'être un champ de
  `RaceProperties` en 1.6 pour devenir une StatDef, donc `<Wildness>` sous `statBases`, sur les deux
  animaux. L'ancienne forme n'est pas une erreur, elle n'est simplement jamais lue, et le stat
  retombe à `-1`.
- **Aucune valeur d'équilibrage ne se touche.** La vache à 0.8 de vitesse pour 6.0 de corpulence est
  une blague d'auteur, pas un oubli.
- **Ne pas reformater les fichiers de l'auteur.** `Mod/Patches/Armor.xml` est indenté à la tabulation
  et de travers ; il reste tel quel. Aucun `.editorconfig` (retiré le 2026-10-13, règle de racine propre) : on écrit proprement ce qu'on écrit, pas ce qu'on
  hérite.
- **Le patch Animal Gear reste tel que l'auteur l'a écrit.** Il est gardé derrière son
  `PatchOperationFindMod` (qui cherche le **nom** « Animal Gear ») et n'est pas à nous à réécrire.
  Animal Gear n'est pas encore installé ici : seule sa moitié « absent » est couverte.
- **Ajouts de contenu assumés, et rien d'autre** : `AnimalFarm` sur le beefalo pygmée, `Patches/ADS2.xml` et `Patches/DogsMate.xml` (décision du 2026-10-01, règle « mods d'animaux » de PUBLISHING.md), et
  `incompatibleWith` l'original. Tout le reste est du portage ou de la documentation.
- Le crédit nommé et la promesse de retrait sur demande sont la seule base de ce portage. Ils
  figurent dans `About.xml`, `README.md` et `ATTRIBUTION.md` : ils ne s'allègent pas.

## Tester

Le mod n'a pas de build. Deux contrôles hors jeu, à passer après toute modification :

```
powershell -ExecutionPolicy Bypass -File Tools\Check-Mod.ps1
powershell -ExecutionPolicy Bypass -File ..\scripts\Check-Steps.ps1 -Mod BeefEatersRenew
```

Le premier, après toute modification des defs ou de l'About, vérifie le XML, la réparation de
`wildness`, les `texPath`, et les décisions que ce portage a prises exprès et qu'une refusion avec
l'original perdrait sans bruit. Son code de sortie est le nombre d'échecs. Il ne connaît pas les
noms de champs de 1.6 : ça, c'est l'outillage du monorepo.

Le second, après toute modification de `Tests/Pickle/`, compile les patterns de steps locaux avec
le moteur de Pickle et vérifie que chaque ligne de chaque `.feature` résout vers exactement un
step. Le step local (`Tests/Pickle/Source/TradeSteps.cs`) se recompile avec
`dotnet build -c Release` depuis ce dossier, DLL livré sous `Tests/Pickle/Mod/Pickle/Assemblies/`.

**Aucun test en jeu ne se lance depuis une session** : les sept features de `Tests/Pickle/` se
déposent avec `Submit-PickleRun.ps1` (voir `..\AUDIT.md`), jamais en lançant RimWorld. Détail des
passes et des commandes : `Tests/Pickle/README.md`.

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

## État de publication

Le mod est publié en `1.0.0` depuis le 2026-11-18 (tag `v1.0.0` sur `50785f3`, item Workshop 3811290251, public, non-régression verte 29/29). Les essais Pickle sont joués (`STATUS.md`, `Docs/runs/`). Reste à suivre : la permission de HannahBug (reskin, rien d'inclus avant sa réponse). `About/Preview.png` (896x504) et `About/ModIcon.png` (128x128) sont composées depuis `Art/` par le moteur partagé de Preview (`Art/Preview.config.json`, `Art/Preview-source.png`, `Art/echo-source.png`) ; les sources restent dans `Art/`, jamais dans `About/`.

Les guides qui commandent ces étapes vivent hors du dépôt, dans le monorepo : `../docs/STYLE_RIMWORLD.md` pour la vitrine et l'icône, `../docs/PUBLISHING.md` pour l'envoi.

## Langue

`About.xml`, `README.md`, `CHANGELOG.md` et `ATTRIBUTION.md` sont **en anglais**, mod public oblige.
Ce fichier et nos échanges sont en français.
