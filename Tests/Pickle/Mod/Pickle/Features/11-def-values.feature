# The numbers of TESTING.md scenarios A, D, E, F, G, H, J and L, read from the def database the game built at
# the main menu. They replace the "watch it in the game" prose of those scenarios for everything that is a value
# the author wrote: if the game loaded the def, patches and inheritance included, the value is here. What is NOT
# here, and stays out of this suite on purpose (see TESTING.md, "Gate for tested"): how an animal looks while
# walking (A, K, a picture a person reads), what the game does with a value (taming odds, caravan loading, pen
# food, trader rolls: that is testing the engine), and anything that needs a quadrum of play (D, J, L).
Feature: Beef Eaters Renew — the author's numbers survive the game's own load

  Scenario: the Belgian blue cow's body, hunger and health (scenarios A, D)
    Then Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.baseBodySize" at "6"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.baseHungerRate" at "1"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.baseHealthScale" at "1"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.lifeExpectancy" at "11"

  Scenario: the Belgian blue cow is slow, dirty and dear (scenario D)
    Then Beef Eaters Renew: the animal "BelgianBlueCow" has the raw stat "MoveSpeed" at 0.8
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the raw stat "FilthRate" at 32
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the raw stat "MarketValue" at 1100

  Scenario: the Belgian blue cow's milk, meat and leather (scenario E)
    Then Beef Eaters Renew: the animal "BelgianBlueCow" has the "CompProperties_Milkable" comp with "milkAmount" at "40"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the "CompProperties_Milkable" comp with "milkIntervalDays" at "1"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.useMeatFrom" at "Cow"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.useLeatherFrom" at "Cow"

  Scenario: the Belgian blue cow roams, is untrainable, lives and breeds as written (scenarios F, G, L)
    Then Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.roamMtbDays" at "2"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.trainability" at "None"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.gestationPeriodDays" at "8"
    And Beef Eaters Renew: the animal "BelgianBlueCow" has the raw stat "ComfyTemperatureMin" at -10

  Scenario: the Belgian blue cow has no wild biome, so it never spawns wild (scenario H)
    Then Beef Eaters Renew: the animal "BelgianBlueCow" has the field "race.wildBiomes" at "<null>"

  Scenario: the pygmy beefalo's body, hunger and health (scenario A)
    Then Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.baseBodySize" at "1"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.baseHungerRate" at "0.5"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.lifeExpectancy" at "15"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the raw stat "MoveSpeed" at 4.2
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the raw stat "MarketValue" at 300

  Scenario: the pygmy beefalo's milk and wool (scenario E)
    Then Beef Eaters Renew: the animal "PygmyBeefalo" has the "CompProperties_Milkable" comp with "milkAmount" at "12"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the "CompProperties_Milkable" comp with "milkIntervalDays" at "2"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the "CompProperties_Shearable" comp with "woolDef" at "WoolMuffalo"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the "CompProperties_Shearable" comp with "woolAmount" at "8"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.useMeatFrom" at "Cow"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.useLeatherFrom" at "Muffalo"

  Scenario: the pygmy beefalo needs no pen, carries a pack and can be trained (scenarios F, G)
    Then Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.roamMtbDays" at "<null>"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.packAnimal" at "true"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.trainability" at "Advanced"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.nuzzleMtbHours" at "60"

  Scenario: the pygmy beefalo breeds and withstands cold as written (scenarios H, J, L)
    Then Beef Eaters Renew: the animal "PygmyBeefalo" has the field "race.gestationPeriodDays" at "10"
    And Beef Eaters Renew: the animal "PygmyBeefalo" has the raw stat "ComfyTemperatureMin" at -60