# Pictures for the Workshop gallery, not a test: both animals, adult, close up in the zen meadow studio of
# PickleTools, without the interface. The assertions only say the animals exist; the pictures are the point and
# are read by eye (@review).
#
# First try (run 8ab8, 2026-10-02) was unusable: PickleTools' "frame the animals" stops at zoom 9, so the animals
# were thumbnails, and the centre of the studio is the orange floor pattern. Now, as the A Certain Series gallery
# does: each subject 10/25/40/55 cells east of Rina, on the clear meadow, camera brought down to 3-5 cells,
# animals facing south. A female cow, then a bull (the sex a random spawn could not promise), then the pygmy
# beefalo, then cow and beefalo side by side for the size difference (body size 2.4 against 1.0).
@review @en-only @requires:nelim.pickletools.screenshotstudio
Feature: Gallery pictures of the animals

  Scenario: a Belgian blue cow, a bull, a pygmy beefalo, then a cow and a beefalo together
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
    And Beef Eaters Renew: I bring the camera to 4 cells' height 10 cells east of "Rina"
    And I take a screenshot "gallery belgian blue cow"
    And Beef Eaters Renew: I bring the camera to 4 cells' height 25 cells east of "Rina"
    And I take a screenshot "gallery belgian blue bull"
    And Beef Eaters Renew: I bring the camera to 3 cells' height 40 cells east of "Rina"
    And I take a screenshot "gallery pygmy beefalo"
    And Beef Eaters Renew: I bring the camera to 5 cells' height 56 cells east of "Rina"
    And I take a screenshot "gallery cow and beefalo together"
    Then no errors were logged
