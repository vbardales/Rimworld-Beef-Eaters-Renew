# THE DAY THE HERD MOVED IN, tenth version (2026-10-23), shotlist written against GALLERY.md "Shotlist : criteres d'une scene a 4/5" (a to k)
# and SanctuaryBacklot/docs/GALERIE.md. Director pass by an Opus sub-agent (one call), remarks kept below. THE SCENARIOS BELOW ARE STILL THE NINTH
# VERSION: rewrite them from this header (forced job, pause recipe, Hat Hair Control, names) before any ticket.
#
# STORY (k). Nelim buys a small herd at the trader's (a Belgian blue cow and her calf, a Belgian blue bull, a pygmy beefalo and its calf) and settles it
# on her farm in the Sanctuary in one day: 07, 12, 15, 17, 19 h, one start hour per picture, 2,500 ticks per game hour, same day, fog at dawn then clear.
#  1 dawn   WIDE opener: the cow is led down the river bank to drink, the herd has arrived;
#  2 noon   CLOSE: in the lily field Nelim milks the cow while the calf waits;
#  3 afternoon  MEDIUM: the bull, face on, at the trough in the pen;
#  4 late afternoon  MEDIUM: the pygmy beefalo and its calf cross the bridge with her, a tuft of wool in her hands;
#  5 evening  MEDIUM-WIDE closer: by the plant garden, torches lit, cow and beefalo side by side, one huge, one small.
# Variety: wide (1), close (2), medium (3, 4), medium-wide (5). Rhythm: the frames never repeat the same width twice in a row.
#
# NELIM (d), ONE OUTFIT FOR THE WHOLE DAY (continuity rule 2026-10-23). Fixture kit (corset, trousers); Apparel_CowboyHat wheat rgb (205, 175, 105) on all
# five pictures, hair Long and loose under it (Hat Hair Control, lordfelix.HatHairControl 3760821540, replaces Show Hair Under Stuff; seed copied from
# PickleTools Tests/Pickle/config/hat-hair-hhc with showHairDefs = Apparel_CowboyHat, hideHatsIndoors false); her own face held neutral
# (Nelim's Sanctuary: Nelim has her own face, then face is held neutral; map at 20 degrees). The one change is justified by the day: Apparel_Duster oat
# brown rgb (112, 96, 78) against the dawn fog (1), off while the day is warm (2, 3), back on in the late wind (4, 5).
#
# HOW THE GESTURE IS OBTAINED (e), for every picture: spawn and place everything, give Nelim her kit and face; then the forced job
# (`"Nelim" is forced into the job "<JobDef>" on "<animal>"`, or `is forced to walk to` / `is forced to haul N of the item "<def>" to (x, z)`); then
# `I let N ticks pass` (the N of the line); then `Beef Eaters Renew: time is paused`; then the frame, her face last, then the screenshot. The 60-tick
# set-up of the ninth version comes BEFORE the job and freezes nothing. Animals need a name for the job and follow steps: own steps
# `I spawn ... named "<name>"` (GallerySteps.cs, written 2026-10-23, not built or played).
#
# PLAN, one line per picture (a time, b decor, c living, d look, e action and instant, f composition, g what it says, j the mod at 268 px).
# Thumbnail arithmetic (j): a cell is 540 / N px at 1080p, N = max(height / 2, width / 3.56); the Steam thumbnail is 268 px wide, so x 0.14.
#  1 DAWN 07 h, Fog, `right-bank`, WIDE. a: 07 h, fog, 60 ticks set-up then 120 ticks of walk. b: TorchLamp lit (146,134), Plant_Daylily fully grown
#    (145,131), removed after. c: Belgian blue cow "Rosa" (female adult) walking West toward the river, Nelim beside her. d: duster + hat. e: Nelim
#    forced to walk to (141,132), the cow follows within 2 cells; INSTANT: the first steps toward the water, the herd has just come down from the road;
#    pause after 120 ticks. f: rectangle (136,128)-(154,138), 18 x 10, N 5.06, torch as the warm spot, fog behind. g: the herd has arrived, the breed is
#    big. j: the cow about 3 to 4 cells long, 107 px per cell, so 50 to 60 px in the thumbnail, the largest mass; Nelim a small dot, accepted (opener).
#  2 NOON 12 h, Clear, `flower-garden`, CLOSE. a: 12 h, clear, 60 ticks then 100 ticks of milking. b: the lily and rose field behind (vanilla Plant_Daylily
#    already there), nothing placed (no stool, no bucket: a forced job drops what she carries). c: cow "Rosa" facing East, calf "Petite" (life stage 0)
#    at her flank facing West. d: hat only, duster off. e: `Milk` job (Core JobDef, JobDriver_Milk) on the cow, forced; INSTANT: kneeling at the flank,
#    the calf waits its turn; pause 100 ticks after the job starts. f: rectangle (150,103)-(158,108), 8 x 5, N 2.5 (needs the Sanctuary frame step that lifts
#    the camera limit, GALERIE.md "Zoom minimum"), cow and calf left, Nelim right with her face. g: the milk the breed gives. j: 216 px per cell, 30 px in
#    the thumbnail, the cow about 100 px. RISK: the Milk job may refuse a cow whose milk is not full (not verified): fallback, the same pose with `is forced
#    into the job "Wait"` beside the cow and the Milk item stated in the subtitle only.
#  3 AFTERNOON 15 h, Clear, `enclosure-south`, MEDIUM. a: 15 h, clear, area (132,206)-(166,222) cleared, 60 ticks then 60 ticks of haul. b: AnimalFeedTroughSmall
#    (148,218), VFEPD_HayBaleLarge (146,220), props map, nothing ships. c: Belgian blue bull "Taureau" FACING THE CAMERA (South) at (150,220), the one face-on
#    animal of the series (c). d: hat only, duster off. e: forced to haul 1 of the item "Hay" to (149,218) from (154,219); INSTANT: she walks the hay over, the
#    bull has already come; pause 60 ticks after the start. f: rectangle (145,217)-(155,224), 10 x 7, N 3.5, fence on top, trough and bale as the two warm
#    masses. g: the build, the point of the breed. j: 154 px per cell, 21 px in the thumbnail, the bull about 65 px.
#  4 LATE AFTERNOON 17 h, Clear, `river-bridge`, MEDIUM (not wide: a body size 1.0 animal would be a dot, j). a: 17 h, clear, wind, 60 ticks then 80 of walk.
#    b: two Plant_YellowTallGrass fully grown at the bridge ends (140,126) and (128,121), no torch (torches belong to 1 and 5). c: pygmy beefalo "Pip" (adult
#    female) and its calf "Minus" (male, life stage 0) following Nelim. d: duster + hat. e: forced to haul 1 of the item "WoolMuffalo" to the east end of
#    the bridge, the beefalo follow; INSTANT: halfway over, the calf lags a step behind; pause when she is halfway. f: rectangle (132,121)-(140,127), 8 x 6,
#    N 3, the bridge as a horizontal band, animals left, Nelim right. g: the small horned pack animal and its wool. j: 180 px per cell, 25 px in the
#    thumbnail, the beefalo about 33 px, the calf about 20 px, white on brown planks. RISK: the calf may not follow (the follow step expects a colonist
#    leader, not verified): fallback, the calf spawned already ahead of its mother and not forced.
#  5 EVENING 19 h, Clear, `plant-garden`, MEDIUM-WIDE, closing. a: 19 h, clear, 60 ticks then 60 of haul. b: two TorchLamp lit (199,91) and (193,84), two
#    Plant_YellowTallGrass fully grown (193,86) and (199,89); the garden fence and the fixture's own torches to the left. c: cow "Rosa" facing East and
#    beefalo "Pip" facing West, both leaning toward the cell between them. d: duster + hat (kept on: outdoors). e: forced to haul 1 of the item "Hay" to
#    (196,88); INSTANT: the hay is one cell from the ground between the animals; pause one cell before she arrives. f: rectangle (190,82)-(204,92),
#    14 x 10, N 3.93, torch light on the white cow. g: both home, huge and small (body size 6.0 against 1.0). j: 108 px per cell, 15 px in the thumbnail,
#    the cow about 55 px, the beefalo about 20 px: the size gap is the picture. RISK: cow on grass at dusk loses contrast; plan: torches both sides, else
#    ask NPT for a darker backdrop place. Cells of 1, 4, 5 are read on photographs, unverified until the capture.
#
# DIRECTOR PASS (Opus), kept: forced walk and haul steps instead of Train (1), no stool and no bucket (2), haul with Hay and WoolMuffalo (3, 4, 5), the
# wide shot moved to 1 and the bridge made medium (4), 5 widened to 14 cells, pause recipe written, own naming steps, HHC with its seed, the pixel
# width of the subject written (j). Kept with a fallback: Milk job (2), calf following (4). Rewritten: "cold" is fog and wind, not temperature (the map
# stays at 20 degrees for her face); the hat stays on at 19 h. NOT verified by anyone: that the forced-job, walk, haul, follow steps and
# `the camera frames the head` were ever played (announced by NPT 2026-10-23); that the frame step reaches N 2.5; the milk fullness gate.
#
# Ground, plants, fences, torches are vanilla Core; trough (Mlie.AnimalFeedTroughSmall) and bale (VanillaExpanded.VFEPropsandDecor) are staged
# props from the props map, never shipped. The item names Milk and WoolMuffalo are those of Mod/Defs/Race_*.xml of this mod.
# Pass: Submit-PickleRun.ps1 -Mod BeefEatersRenew -DepMap wsl-deps.sanctuary-props.map (Hat Hair Control instead of Show Hair) -Filter 12-gallery-animals-props
# Each scenario is @review: open every capture, drop one that shows the launcher, a dev bar, another mod's animal or an empty frame.
@review @en-only @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor
Feature: Beef Eaters Renew Workshop gallery, the day the herd moved in (props variant)

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: the eclipse of the map is ended
    And Nelim's Pickle Tools: all filth is cleaned
    And Nelim's Pickle Tools: all humans but "Nelim" are removed

  Scenario: workshop 1 - dawn fog on the river bank, the farmer walks the Belgian blue cow down to the water
    Given I set the hour to 7
    And I set the weather to "Fog"
    And Nelim's Sanctuary: I am at the sanctuary "right-bank"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (146, 134)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (146, 134) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (145, 131) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (147, 133) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (150, 132) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Duster" dyed rgb (112, 96, 78)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (205, 175, 105)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: I frame the rectangle from (144, 129) to (153, 135)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-dawn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - noon in the lily field, the farmer milks the cow while the calf waits
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "flower-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "EggBox" at (156, 104)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (150, 105) facing East
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female in life stage 0 at (153, 105) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (155, 105) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (90, 140, 190)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" carries the item "Milk"
    And Nelim's Pickle Tools: I frame the rectangle from (147, 103) to (157, 108)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-2-the-calf"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 3 - mid-afternoon in the pen, the bull faces the camera at the trough
    Given I set the hour to 15
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "enclosure-south"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (132, 206) to (166, 222) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "AnimalFeedTroughSmall" at (148, 218)
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (146, 220)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" male at (150, 220) facing South
    And Nelim's Pickle Tools: "Nelim" stands at (154, 219) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (70, 100, 150)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (120, 85, 55)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (145, 217) to (155, 224)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - late afternoon on the bridge, the farmer walks the pygmy beefalo and its calf over, wool in hand
    Given I set the hour to 17
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "river-bridge"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (140, 126) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (128, 121) fully grown
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (133, 124) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male in life stage 0 at (131, 124) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (136, 124) facing East
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 112, 82)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Beret" dyed rgb (130, 40, 60)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" carries the item "WoolMuffalo"
    And Nelim's Pickle Tools: I frame the rectangle from (129, 121) to (139, 128)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-4-the-beefalo"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 5 - evening by the plant garden, the cow and the beefalo stand side by side
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "plant-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (199, 91)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (199, 91) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (193, 84)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (193, 84) is lit
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (193, 86) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_YellowTallGrass" at (199, 89) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (195, 88) facing East
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (197, 86) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (196, 90) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Cape" dyed rgb (95, 60, 100)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (192, 84) to (201, 91)
    And Nelim's Sanctuary: Nelim has her own face
    And Nelim's Pickle Tools: "Nelim" face is held neutral
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-evening"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed
