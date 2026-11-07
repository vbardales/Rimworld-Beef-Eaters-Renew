# THE DAY THE HERD MOVED IN, fourteenth version (2026-11-07, v13 played as ticket cbad: 5/5 passed, all five captures REDO under the GALLERY.md rules of 2026-11-07), written against GALLERY.md "Shotlist : criteres d'une scene a 4/5" (a to k)
# and SanctuaryBacklot/docs/GALERIE.md. Director passes by an Opus sub-agent: v10 (2026-10-23), v11, v12, v13 (2026-11-06), v14 (2026-11-07, one call each), remarks kept below.
# THE SCENARIOS BELOW FOLLOW IT (not played; every cell marked NEW is unverified until the first run).
#
# WHAT cbad TAUGHT (captures opened 2026-11-07): 1 Nelim small and sideways, face unreadable, cow facing away, one torch and one daylily on plain grass; 2 lily field superb but the Milk job turned Nelim to the cow,
# seen from behind, no milking read; 3 face and smile read, bull face on, but bare dirt and no gesture; 4 beefalo blue in river fog, Nelim far on the grass, calf cut at the left edge; 5 herd lined up at the left edge on bare earth,
# two torches and a bale only. v14 answer: DENSE decor grouped around the subject (wagon, logs, bales, troughs, braziers, torches, flowers, tall grass, food box, apple tree), every scene readable from objects and poses alone,
# Nelim walks SOUTH toward the camera so her face shows, frames rebuilt on the heads of the two subjects, every named animal inside its frame.
#
# STORY (k). Nelim buys a small herd at the trader's (a Belgian blue cow and her calf, a Belgian blue bull, a pygmy beefalo and its calf) and settles it on her farm in the Sanctuary in one day:
# 07, 11, 13, 15, 17 h, one start hour per picture, 2,500 ticks per game hour, same day, clear sky.
#  1 dawn  OPENER: the trader's wagon is still on the river bank, she walks down to meet the cow who has just left it;
#  2 late morning  CLOSE: in the lily field she milks the cow, the calf looks on, the jug of milk at her feet;
#  3 early afternoon  MEDIUM: feeding time, she and the bull reach the trough, hay on the ground;
#  4 mid-afternoon  MEDIUM: the pygmy beefalo and her calf cross the bridge toward her and the hay she put out;
#  5 late afternoon  WIDE, closing: the whole herd is home around the trough, the wagon and the fires.
# Variety: close N 2.8 (2), medium N 3.0, 3.8, 3.6 (4, 1, 3), wide rectangle 15 x 8 (5).
#
# NELIM (d), ONE OUTFIT FOR THE WHOLE DAY (continuity rule 2026-10-23). Fixture kit (Apparel_Pants made of Cloth, Apparel_Corset), Apparel_CowboyHat dyed rgb (205, 175, 105) on all five pictures,
# hair Roo_Royal_LongHD under it (Hat Hair Control). Apparel_Duster dyed rgb (112, 96, 78) in 1, 4, 5 (morning and afternoon wind), off in 2 and 3 (warm hours). Expression (owner, 2026-11-06, quoted in STATUS.md):
# she smiles by default: her own face, then `mouth is "MouthLipsSmirk"` and `lids are "LidCheerful"`, capture, no tick between. Map at 20 degrees. Nothing carried (a carried item hid her face).
# ANIMALS: the mod's own, validated by the owner 2026-11-06 ("Les animaux du mod DOIVENT etre dans la gallery"). None dressed.
#
# HOW THE GESTURE IS OBTAINED (e): spawn and place everything, give Nelim her kit; `I let 60 ticks pass` then `time is paused`; give the forced walks or the Milk job;
# then `I advance the paused game by exactly N ticks`; then the camera, her face, the screenshot.
#
# PLAN, one line per picture (a time, b decor, c living, d look, e action and instant, f composition, g what it says and what makes it readable without a caption, j the mod at 268 px).
#  1. DAWN 7h, Clear, `right-bank`, OPENER. a: 7h, clear, 60 ticks set-up then 60 of walk. b: TorchLamp lit (146, 134), Brazier lit (143, 135) NEW, Plant_Daylily fully grown (145, 131), VFEPD_WoodenWagon (146, 136) NEW,
#        VFEPD_WoodenLogs (139, 134) NEW, VFEPD_HayBaleMedium (147, 130) NEW, Plant_YellowTallGrass fully grown (142, 130), (139, 131), (150, 131) NEW; the existing tree on the bank stays as natural decor. c: Belgian blue cow "Rosa" spawned (149, 133)
#        facing West, forced to walk to (143, 133), in profile toward Nelim. d: duster + hat, smile. e: Nelim at (141, 135) NEW facing South is forced to walk to (141, 132), so she faces the camera; INSTANT: the cow has just left the wagon,
#        the farmer comes down the bank to meet her, two cells apart, both mid-stride; advance 60 ticks. f: the camera frames the head of "Nelim" and "Rosa" at root size 3.8 (about 12 x 7 cells), wagon and the two fires behind them.
#        g: a farmer welcomes her big new cow at dawn; readable by the wagon (she just arrived), the cow walking toward Nelim, her face to the camera, the lit fires. j: about 22 px per cell, the cow about 68 px.
#        RISK: (141, 135) may not be standable (fallback: the v13 walk West from (147, 132)); the wagon may overlap the cow cell; 07 h may tint the coat (then 08 h).
#  2. LATE MORNING 11h, Clear, `flower-garden`, CLOSE. a: 11h, clear, 60 ticks set-up then 150 of milking. b: the lily and rose field behind (vanilla), Plant_Rose fully grown (152, 106) and (158, 106), Milk item (156, 106) NEW (reads as a jug),
#        Stool (156, 108) NEW, VFEPD_HayBaleSmall (151, 109) NEW, TorchLamp lit (158, 108) NEW. c: cow "Rosa" (154, 107) facing South (the face-on animal of the series), made full of milk; calf "Petite" (life stage 0) (151, 107) facing East, looking at her mother.
#        d: hat only, duster off, smile. e: Nelim at (157, 107) NEW facing West, forced job `Milk` on Rosa (she milks from the side, in profile); INSTANT: milking half done, the calf waits; advance 150 ticks.
#        f: the camera frames the head of "Nelim" and "Rosa" at root size 2.8 (statues and the building ghost stay out). g: she milks the new cow while the calf waits; readable by her side pose at the flank, the jug, the stool, the calf looking on.
#        j: the cow head about 90 px. RISK: the Milk job may pick another cell (behind the cow): request to NPT for `"Nelim" milks "Rosa" from (x, z)`; the Milk item may not place as decor.
#  3. EARLY AFTERNOON 13h, Clear, `enclosure-south`, MEDIUM. a: 13h, clear, area (132, 206)-(166, 222) cleared, 60 ticks set-up then 30 of walk. b: AnimalFeedTroughSmall (148, 218), VFEPD_HayBaleLarge (144, 221), VFEPD_HayBaleSmall (146, 218) NEW,
#        Hay item (150, 218) NEW, VFEPD_FoodBox (152, 219) NEW, VFEPD_WoodenLogs (151, 221) NEW, TorchLamp lit (142, 221) NEW, Plant_YellowTallGrass fully grown (142, 217), (143, 219), (153, 217), (154, 220) NEW,
#        Plant_Daylily fully grown (145, 216) and (151, 216) NEW to cover the bare dirt. c: bull "Taureau" spawned (149, 221) facing South, forced to walk to (149, 219), face on toward the hay. d: hat only, duster off, smile.
#        e: Nelim at (147, 221) facing South is forced to walk to (147, 218); INSTANT: she and the bull reach the trough together, about to eat; advance 30 ticks. f: the camera frames the head of "Nelim" and "Taureau" at root size 3.6, fence on top.
#        g: feeding time, the huge bull comes to the trough beside her; readable by the trough, hay on the ground, bales, two faces toward the camera. j: the bull about 47 px.
#        RISK: new cells may be occupied; dense layout may hide her legs (accepted).
#  4. MID-AFTERNOON 15h, Clear, `river-bridge`, MEDIUM. a: 15h, clear, wind, 60 ticks set-up then 40 of walk. b: Plant_YellowTallGrass fully grown (143, 123) and (143, 126), VFEPD_HayBaleSmall (142, 124) NEW (the hay she put out to draw them),
#        TorchLamp lit (142, 126) NEW, VFEPD_WoodenLogs (144, 125) NEW, Plant_Daylily fully grown (142, 122) NEW. c: pygmy beefalo "Pip" (adult female) at (137, 124) facing East, forced to walk to (139, 124); calf "Minus" (male, life stage 0)
#        at (135, 124) facing East, forced to walk to (138, 124), trailing. d: duster + hat, smile. e: Nelim at (141, 127) facing South is forced to walk to (141, 125), she waits by the hay at the bridge end; INSTANT: the beefalo cross toward her,
#        the calf a step behind, gap about 2.5 cells; advance 40 ticks. f: the camera frames the head of "Minus" and "Nelim" at root size 3.0 (calf and Nelim at the two edges, frame east of the water).
#        g: the little beefalo and her calf cross toward the farmer and the hay; readable by the bridge, the line of animals heading for the bale, her face to the camera. j: Pip about 30 px, Minus about 18 px.
#        RISK: blue river fog (request B to NPT: can it be hidden for a capture); (141, 125) NEW.
#  5. LATE AFTERNOON 17h, Clear, `bare-clearing`, WIDE, closing. a: 17h, clear, 60 ticks set-up then 40 of walk. b: TorchLamp lit (195, 151) and (198, 151), Plant_YellowTallGrass fully grown (193, 151) and (201, 153), VFEPD_HayBaleLarge (201, 151),
#        VFEPD_WoodenWagon (189, 155) NEW, AnimalFeedTroughSmall (195, 155) NEW, VFEPD_HayBaleSmall (199, 151) NEW, Brazier lit (191, 152) NEW, PlantAppletree fully grown (202, 156) NEW, VFEPD_WoodenLogs (194, 157) NEW,
#        Plant_Daylily fully grown (190, 150) and (203, 150) NEW, Plant_YellowTallGrass fully grown (192, 150) NEW. c: cow "Rosa" (191, 154) facing East, forced to walk to (194, 154); calf "Petite" (life stage 0) (191, 156) facing East, forced to walk to (193, 156) NEW;
#        bull "Taureau" (192, 152) facing East, forced to walk to (194, 152) NEW; pygmy beefalo "Pip" (200, 154) facing West, forced to walk to (198, 154). d: duster + hat, smile. e: Nelim at (197, 156) facing South is forced to walk to (197, 153) beside Pip;
#        INSTANT: the herd settles at the fires and the trough as evening comes; advance 40 ticks. f: rectangle (188, 149)-(203, 157), 15 x 8 cells, so x 191 is no longer at the edge. g: the whole herd is home for the night; readable by the four animals
#        and Nelim gathered around trough, wagon and lit fires. j: about 18 px per cell, the cow about 63 px, Pip about 27 px. RISK: crowded; v13 did not show the bull (check the spawn log).
#
# DIRECTOR PASS ON v13 (Opus, 2026-11-07), KEPT: all of it (dense decor, Clear at dawn, head frames on both subjects, Nelim walking South, Rosa face on in 2, Nelim at the cow's flank in 2, hay beside the bridge in 4, widened rectangle in 5).
# REQUESTS TO NPT (not sent, only if the first run needs them): A milk-from-a-cell step; B hide river fog on `river-bridge`; C a step filling the trough with Hay.
# NOT verified by anyone: every cell marked NEW, the Milk and Hay items as placed decor, the Brazier and PlantAppletree defNames, the wagon footprint.
#
# Ground, plants, fences, torches, braziers, stools are vanilla Core; trough (Mlie.AnimalFeedTroughSmall), bales, wagon, logs, food box (VanillaExpanded.VFEPropsandDecor) and the apple tree (VGP) are staged props from the props map, never shipped.
# Pass: Submit-PickleRun.ps1 -Mod BeefEatersRenew -DepMap wsl-deps.sanctuary-props.map -Filter 12-gallery-animals-props
# Each scenario is @review: open every capture, drop one that shows the launcher, a dev bar, another mod's animal or an empty frame.
@review @en-only @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor @requires:nelim.pickletools.camerazoom
Feature: Beef Eaters Renew Workshop gallery, the day the herd moved in (props variant)

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: the eclipse of the map is ended
    And Nelim's Pickle Tools: all filth is cleaned
    And Nelim's Pickle Tools: all humans but "Nelim" are removed

  Scenario: workshop 1 - dawn on the river bank, the farmer walks down to meet the Belgian blue cow that just left the trader's wagon
    Given I set the hour to 7
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "right-bank"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (146, 134)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (146, 134) is lit
    And Nelim's Pickle Tools: I place the decor "Brazier" at (143, 135)
    And Nelim's Pickle Tools: the decor "Brazier" at (143, 135) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (145, 131) fully grown
    And Nelim's Pickle Tools: I place the decor "VFEPD_WoodenWagon" at (146, 136)
    And Nelim's Pickle Tools: I place the decor "VFEPD_WoodenLogs" at (139, 134)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleMedium" at (147, 130)
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (142, 130) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (139, 131) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (150, 131) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (149, 133) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (141, 135) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" made of "Cloth"
    And Nelim's Pickle Tools: "Nelim" also wears "Apparel_Corset"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: "Rosa" is forced to walk to (143, 133)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (141, 132)
    And Nelim's Pickle Tools: I advance the paused game by exactly 60 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Rosa" at root size 3.8
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-dawn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - late morning in the lily field, the farmer milks the cow while the calf looks on
    Given I set the hour to 11
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "flower-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (152, 106) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Rose" at (158, 106) fully grown
    And Nelim's Pickle Tools: I place the decor "Milk" at (156, 106)
    And Nelim's Pickle Tools: I place the decor "Stool" at (156, 108)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleSmall" at (151, 109)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (158, 108)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (158, 108) is lit
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (154, 107) facing South
    And Nelim's Pickle Tools: the animal "Rosa" is full of milk
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female named "Petite" in life stage 0 at (151, 107) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (157, 107) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" made of "Cloth"
    And Nelim's Pickle Tools: "Nelim" also wears "Apparel_Corset"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Nelim" is forced into the job "Milk" on "Rosa"
    And Nelim's Pickle Tools: I advance the paused game by exactly 150 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Rosa" at root size 2.8
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-2-the-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 3 - early afternoon in the pen, feeding time, the bull and the farmer reach the trough together
    Given I set the hour to 13
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (148, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (144, 221)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleSmall" at (146, 218)
    And Nelim's Pickle Tools: I place the decor "Hay" at (150, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_FoodBox" at (152, 219)
    And Nelim's Pickle Tools: I place the decor "VFEPD_WoodenLogs" at (151, 221)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (142, 221)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (142, 221) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (142, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 219) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (153, 217) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (154, 220) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (145, 216) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (151, 216) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male named "Taureau" at (149, 221) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (147, 221) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" made of "Cloth"
    And Nelim's Pickle Tools: "Nelim" also wears "Apparel_Corset"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Taureau" is forced to walk to (149, 219)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (147, 218)
    And Nelim's Pickle Tools: I advance the paused game by exactly 30 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Nelim" and "Taureau" at root size 3.6
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - mid-afternoon on the bridge, the pygmy beefalo and her calf cross toward the farmer and the hay
    Given I set the hour to 15
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "river-bridge"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 123) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (143, 126) fully grown
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleSmall" at (142, 124)
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (142, 126)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (142, 126) is lit
    And Nelim's Pickle Tools: I place the decor "VFEPD_WoodenLogs" at (144, 125)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (142, 122) fully grown
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female named "Pip" at (137, 124) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male named "Minus" in life stage 0 at (135, 124) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (141, 127) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" made of "Cloth"
    And Nelim's Pickle Tools: "Nelim" also wears "Apparel_Corset"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Pip" is forced to walk to (139, 124)
    And Nelim's Pickle Tools: "Minus" is forced to walk to (138, 124)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (141, 125)
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    And Nelim's Pickle Tools: the camera frames the head of "Minus" and "Nelim" at root size 3.0
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-4-the-beefalo"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 5 - late afternoon on the clearing, the whole herd is home around the trough, the wagon and the fires
    Given I set the hour to 17
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "bare-clearing"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (195, 151)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (195, 151) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (198, 151)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (198, 151) is lit
    And Nelim's Pickle Tools: I place the decor "Brazier" at (191, 152)
    And Nelim's Pickle Tools: the decor "Brazier" at (191, 152) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (193, 151) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (201, 153) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (192, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (201, 151)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleSmall" at (199, 151)
    And Nelim's Pickle Tools: I place the decor "VFEPD_WoodenWagon" at (189, 155)
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (195, 155)
    And Nelim's Pickle Tools: I place the decor "PlantAppletree" at (202, 156) fully grown
    And Nelim's Pickle Tools: I place the decor "VFEPD_WoodenLogs" at (194, 157)
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (190, 150) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (203, 150) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female named "Rosa" at (191, 154) facing East
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female named "Pip" at (200, 154) facing West
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female named "Petite" in life stage 0 at (191, 156) facing East
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male named "Taureau" at (192, 152) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (197, 156) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Pants" made of "Cloth"
    And Nelim's Pickle Tools: "Nelim" also wears "Apparel_Corset"
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Roo_Royal_LongHD"
    And Nelim's Pickle Tools: "Rosa" is forced to walk to (194, 154)
    And Nelim's Pickle Tools: "Petite" is forced to walk to (193, 156)
    And Nelim's Pickle Tools: "Taureau" is forced to walk to (194, 152)
    And Nelim's Pickle Tools: "Pip" is forced to walk to (198, 154)
    And Nelim's Pickle Tools: "Nelim" is forced to walk to (197, 153)
    And Nelim's Pickle Tools: I advance the paused game by exactly 40 ticks
    And Nelim's Pickle Tools: I frame the rectangle from (188, 149) to (203, 157)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" mouth is "MouthLipsSmirk"
    And Nelim's Pickle Tools: "Nelim" lids are "LidCheerful"
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-evening"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed
