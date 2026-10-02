# Pictures for the Workshop gallery, not a test. Staged photographs, per the owner's rule of 2026-10-02: every
# gallery picture is a set-up photograph (menus excepted), nothing left at its default. The assertions only say
# the animals exist; the pictures are the point and are read by eye (@review).
#
# THE STORY OF THE SERIES: evening on a small cattle farm. One standing lamp has just been lit at the corner of
# the pen; the cows have come in from the pasture and stand in its warm light, a rose and a bush that someone
# planted by the fence behind them. The beefalo, half their size, is the farm's pack animal and stands at the
# same fence a little later. The ground is the studio meadow throughout, kept the same from one picture to the
# next: the decor is placed, photographed, removed, and the next subject gets the same lamp, rose and bush
# placed around it.
#
# Subjects (a photographer's choices, none of them left to a random spawn): an adult female cow, an adult bull
# (the animal whose build is the mod's whole point), an adult pygmy beefalo, and the cow and the beefalo side
# by side, which is the one picture that shows the difference in size (body size 2.4 against 1.0). All face
# the camera, on cleared meadow cells 10 to 58 east of Rina.
#
# First try (run 8ab8) was rejected: thumbnail-sized animals on the orange studio floor. Second try (run 743e)
# fixed the framing but had no set dressing; this one adds it.
@review @en-only @requires:nelim.pickletools.screenshotstudio
Feature: Gallery pictures of the animals

  Scenario: evening on the cattle farm: a cow, a bull, a pygmy beefalo, then a cow and a beefalo together
    Given the save "nelim-zen-meadow-studio" is loaded
    And game speed is paused
    And a colonist "Rina" exists
    When Beef Eaters Renew: I spawn an adult "BelgianBlueCow" "female" 10 cells east of "Rina"
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" "male" 25 cells east of "Rina"
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" "female" 40 cells east of "Rina"
    And Beef Eaters Renew: I spawn an adult "BelgianBlueCow" "female" 55 cells east of "Rina"
    And Beef Eaters Renew: I spawn an adult "PygmyBeefalo" "male" 58 cells east of "Rina"
    Then 3 "BelgianBlueCow" exist
    And 2 "PygmyBeefalo" exist
    When Nelim's Pickle Tools: studio presentation mode is enabled

    # picture 1: the cow in the lamplight
    And Beef Eaters Renew: I stage the decor "StandingLamp" 8 cells east and 3 cells north of "Rina"
    And Beef Eaters Renew: I stage the decor "Plant_Rose" 12 cells east and 3 cells north of "Rina"
    And Beef Eaters Renew: I stage the decor "Plant_Bush" 13 cells east and 2 cells north of "Rina"
    And Beef Eaters Renew: I bring the camera to 4 cells' height 10 cells east of "Rina"
    And I take a screenshot "gallery belgian blue cow"
    And Beef Eaters Renew: the staged decor is removed

    # picture 2: the bull, same lamp, same planting
    And Beef Eaters Renew: I stage the decor "StandingLamp" 23 cells east and 3 cells north of "Rina"
    And Beef Eaters Renew: I stage the decor "Plant_Rose" 27 cells east and 3 cells north of "Rina"
    And Beef Eaters Renew: I stage the decor "Plant_Bush" 28 cells east and 2 cells north of "Rina"
    And Beef Eaters Renew: I bring the camera to 4 cells' height 25 cells east of "Rina"
    And I take a screenshot "gallery belgian blue bull"
    And Beef Eaters Renew: the staged decor is removed

    # picture 3: the pygmy beefalo at the fence
    And Beef Eaters Renew: I stage the decor "StandingLamp" 38 cells east and 2 cells north of "Rina"
    And Beef Eaters Renew: I stage the decor "Plant_Rose" 42 cells east and 2 cells north of "Rina"
    And Beef Eaters Renew: I stage the decor "Plant_Bush" 43 cells east and 1 cells north of "Rina"
    And Beef Eaters Renew: I bring the camera to 3 cells' height 40 cells east of "Rina"
    And I take a screenshot "gallery pygmy beefalo"
    And Beef Eaters Renew: the staged decor is removed

    # picture 4: the cow and the beefalo together, for the difference in size
    And Beef Eaters Renew: I stage the decor "StandingLamp" 53 cells east and 4 cells north of "Rina"
    And Beef Eaters Renew: I stage the decor "Plant_Rose" 59 cells east and 4 cells north of "Rina"
    And Beef Eaters Renew: I stage the decor "Plant_Bush" 61 cells east and 3 cells north of "Rina"
    And Beef Eaters Renew: I bring the camera to 5 cells' height 56 cells east of "Rina"
    And I take a screenshot "gallery cow and beefalo together"
    And Beef Eaters Renew: the staged decor is removed
    Then no errors were logged
