# Pictures for the Workshop gallery, not a test: both animals, adult, close up in the zen meadow studio of
# PickleTools, without the interface. The assertions only say the animals exist; the pictures are the point and
# are read by eye (@review). Chosen 2026-10-02: the Belgian blue pair first (the mod's headline animal, and the
# one the Preview does not show), the pygmy beefalo pair second, then both together after one zoom step out so the
# size difference between them (body size 2.4 against 1.0) is readable. Adults, because a calf shows neither.
# The pawns' sex is random: a pair may be two cows. If a shot shows no bull, change this file, not the mod.
@review @en-only @requires:nelim.pickletools.screenshotstudio
Feature: Gallery pictures of the animals

  Scenario: the Belgian blue cows, the pygmy beefalo, then both together
    Given the save "nelim-zen-meadow-studio" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: 2 adult animals of kind "BelgianBlueCow" are spawned close together
    And Nelim's Pickle Tools: 2 adult animals of kind "PygmyBeefalo" are spawned close together
    When Nelim's Pickle Tools: studio presentation mode is enabled
    And Nelim's Pickle Tools: I frame the animals of kind "BelgianBlueCow"
    And I take a screenshot "gallery belgian blue"
    And Nelim's Pickle Tools: I frame the animals of kind "PygmyBeefalo"
    And I take a screenshot "gallery pygmy beefalo"
    And I zoom out
    And I take a screenshot "gallery both together"
    Then no errors were logged
