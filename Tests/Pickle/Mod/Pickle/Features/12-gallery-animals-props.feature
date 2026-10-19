# THE FARM DAY, eighth version (2026-10-18, rewritten against GALLERY.md "Shotlist : criteres d'une scene a 4/5", a to k).
#
# STORY (k). One day on Nelim's farm, dawn to evening, in the Sanctuary. Nelim, the only colonist, takes in two animals that are
# new to the farm, the big Belgian blue cow and the small horned pygmy beefalo, and by evening both are home. Time: one start of
# the day per picture, 07 h, 12 h, 15 h, 17 h, 19 h, every picture waits 60 ticks for the set-up (2,500 ticks make a game hour).
# Each picture is one place, one episode, one look; the story moves from the water, to the field, to the pen, to the road, to the barn.
#
# BASE LOOK (d). Nelim keeps her fixture kit, corset and trousers, grey and yellow (owner confirmed that look on nelim-fit, 2026-10-18);
# each picture adds a different coat, hat, hair and face on top of it (Shell and Overhead layers do not move the corset).
# Owner hat rule (GALLERY.md d, 2026-10-18): a pawn with a hat has long loose hair, never a ponytail or a bun; Show Hair (RaccoonCuddler.ShowHair, in the pass map) draws it under the hat; hair is Long in every picture. Faces by kit (smile, calm, neutral, smug,
# the kit sets brows, mouth and lids); the barn picture keeps her own face (smirk).
#
# PLAN, one line per picture (a time/place, b decor named and removed after the shot, c living, d look, e action, f composition,
# g what it says, h risk and plan, j what the mod shows):
#  1 DAWN 07 h, FOG, `right-bank`, 60 ticks. Decor: one lit TorchLamp (146,134) and a Plant_Daylily fully grown (145,131).
#    Living: the Belgian blue cow FACING THE CAMERA (South), Nelim beside her. Look: Apparel_Duster oat brown (112,96,78),
#    CowboyHat wheat (205,175,105), hair Long, face kit calm. Action: leads the cow down to the water, hay in her arms.
#    Composition: tight, rectangle (142,129)-(154,136), cow in the left third, fog behind, torch as the warm spot in the right third.
#    Says: the breed is big, and the day begins. Mod: the cow, white-blue and muscled, seen from the front.
#    RISK: the cow reads small and hunched in the grass (run 0556, note 3). PLAN: tight frame, cow facing South, cleaner grass patch.
#  2 NOON 12 h, Clear, `flower-garden`, 60 ticks. Decor: the lily field behind, and two
#    Plant_Daylily fully grown at (149,102) and (150,105) as foreground. Living: the cow, her calf (life stage 0), Nelim.
#    Look: no coat, CowboyHat sky blue (90,140,190) against the orange lilies, hair Long, face kit smile. Action: holds a jug,
#    the item "Milk", towards the calf. Composition: rectangle (147,100)-(159,106) narrowed on purpose to leave the statues (south)
#    and the wall bed (east) out of the frame, cow at (151,103), calf at (155,103), Nelim at (157,102), flowers behind.
#    Says: the calf has its own look, and the cow gives milk. Mod: the calf stage and the milk.
#    RISK: a green blueprint ghost sat under the cow and statues and a bed cluttered run 0556. PLAN: the narrowed frame; if the ghost
#    shows again, ask NPT for the cell and move the animals, no other fix.
#  3 AFTERNOON 15 h, Clear, `enclosure-south` (the pen, fence along the north), 60 ticks, area (132,206)-(166,222) cleared first.
#    Decor: AnimalFeedTroughSmall (148,218) and VFEPD_HayBaleLarge (146,220), props from the props map, nothing ships with the mod.
#    Living: the Belgian blue BULL FACING THE CAMERA (South) at (150,220), Nelim. Look: Apparel_Jacket denim blue (70,100,150),
#    CowboyHat leather brown (120,85,55), hair Long, face kit neutral. Action: pours hay into the trough.
#    Composition: rectangle (145,217)-(155,224), the bull centred and facing us, the fence as a straight line on top.
#    Says: this is the build, the point of the breed. Mod: the bull, from the front.
#    RISK: bare dirt behind the bull. PLAN: trough and bale as the two warm masses, fence in frame; accepted as 4 in run 0556.
#  4 LATE AFTERNOON 17 h, Clear, `river-bridge`, 60 ticks. Decor: two lit TorchLamp at (140,126) and (128,121), removed after.
#    Living: the pygmy beefalo (adult female) and its calf behind Nelim. Look: Apparel_Jacket moss green (92,112,82), Apparel_Beret
#    burgundy (130,40,60), hair Long (loose under the beret), face kit smug. Action: walks the two across the bridge.
#    Composition: rectangle (127,119)-(141,129), the bridge as a horizontal band, animals left, Nelim right, river above and below.
#    Says: the small horned pack animal is built for the road. Mod: the beefalo and its calf.
#    RISK: none big (run 0556, note 4). PLAN: keep the cells.
#  5 EVENING 19 h, Clear, `barn`, 60 ticks, area (196,232)-(206,243) cleared first so the fire pits and the yellow table stay out of
#    the picture. Decor: one lit TorchLamp (206,238), a hay bale VFEPD_HayBaleLarge (198,241). Living: the cow and the beefalo side by
#    side, the beefalo facing West, the cow facing East, Nelim. Look: Apparel_Cape plum (95,60,100), no hat, hair Long, her own face.
#    Action: sets down the last hay between the two animals. Composition: rectangle (197,233)-(205,242), the two animals as two
#    sizes in one frame, the torch as the single warm light.
#    Says: the day ends with both at home, one huge, one small. Mod: the size difference, body size 6.0 against 1.0.
#    RISK: run 0556 showed a hay floor, fire pits, a yellow table and an orange tint on the cow. PLAN: clear the area, one torch
#    only, tight frame; if the barn still reads as a campsite, move the scene to the pen at dusk and say so.
#
# Ground, plants, fences, torches are vanilla Core; trough (Mlie.AnimalFeedTroughSmall) and bale (VanillaExpanded.VFEPropsandDecor) are
# staged props from the props map, never shipped. Face kit names (smile, calm, neutral, smug) are those of ColonistRace docs.
# Pass: Submit-PickleRun.ps1 -Mod BeefEatersRenew -DepMap wsl-deps.sanctuary-props.map -Filter 12-gallery-animals-props
# Each scenario is @review: open every capture, drop one that shows the launcher, a dev bar, another mod's animal or an empty frame.
# All cell coordinates other than the pen are read on photographs and unverified until the run.
@review @en-only @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.stagedecor
Feature: Beef Eaters Renew Workshop gallery, the farm day (props variant)

  Background:
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: the eclipse of the map is ended
    And Nelim's Pickle Tools: all filth is cleaned
    And Nelim's Pickle Tools: all humans but "Nelim" are removed

  Scenario: workshop 1 - dawn fog on the river bank, the farmer leads the Belgian blue cow down to the water
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
    And Nelim's Pickle Tools: "Nelim" face kit is "calm"
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (142, 129) to (154, 136)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-1-dawn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 2 - noon at the lily field, the cow and her calf on the path
    Given I set the hour to 12
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "flower-garden"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (149, 102) fully grown
    And Nelim's Pickle Tools: I place the decor "Plant_Daylily" at (150, 105) fully grown
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (151, 103) facing East
    And Beef Eaters Renew: I spawn a "BelgianBlueCow" female in life stage 0 at (155, 103) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (157, 102) facing West
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_CowboyHat" dyed rgb (90, 140, 190)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" face kit is "smile"
    And Nelim's Pickle Tools: "Nelim" carries the item "Milk"
    And Nelim's Pickle Tools: I frame the rectangle from (147, 100) to (159, 106)
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
    And Nelim's Pickle Tools: "Nelim" face kit is "neutral"
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (145, 217) to (155, 224)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-3-the-bull"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 4 - late afternoon on the bridge, the pygmy beefalo and its calf follow the farmer
    Given I set the hour to 17
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "river-bridge"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (140, 126)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (140, 126) is lit
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (128, 121)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (128, 121) is lit
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (133, 124) facing East
    And Beef Eaters Renew: I spawn a "PygmyBeefalo" male in life stage 0 at (131, 124) facing East
    And Nelim's Pickle Tools: "Nelim" stands at (136, 124) facing East
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Jacket" dyed rgb (92, 112, 82)
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Beret" dyed rgb (130, 40, 60)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" face kit is "smug"
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (127, 119) to (141, 129)
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-4-the-beefalo"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed

  Scenario: workshop 5 - evening in the barn, the farmer brings the last hay to the cow and the beefalo
    Given I set the hour to 19
    And I set the weather to "Clear"
    And Nelim's Sanctuary: I am at the sanctuary "barn"
    And Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: all animals are removed
    And Nelim's Pickle Tools: I let 60 ticks pass
    And Nelim's Pickle Tools: the area from (196, 232) to (206, 243) is cleared
    And Beef Eaters Renew: time is paused
    And Nelim's Pickle Tools: I place the decor "TorchLamp" at (206, 238)
    And Nelim's Pickle Tools: the decor "TorchLamp" at (206, 238) is lit
    And Nelim's Pickle Tools: I place the decor "VFEPD_HayBaleLarge" at (198, 241)
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" female at (201, 237) facing East
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" female at (202, 235) facing West
    And Nelim's Pickle Tools: "Nelim" stands at (202, 239) facing South
    And Nelim's Pickle Tools: "Nelim" wears "Apparel_Cape" dyed rgb (95, 60, 100)
    And Nelim's Pickle Tools: "Nelim" hairstyle is "Long"
    And Nelim's Pickle Tools: "Nelim" carries the item "Hay"
    And Nelim's Pickle Tools: I frame the rectangle from (197, 233) to (205, 242)
    And Nelim's Sanctuary: Nelim has her own face
    And Beef Eaters Renew: the map is shown alone for a capture
    When I take a screenshot "workshop-5-the-barn"
    And Beef Eaters Renew: the interface is shown again
    And Nelim's Pickle Tools: the decor is removed
