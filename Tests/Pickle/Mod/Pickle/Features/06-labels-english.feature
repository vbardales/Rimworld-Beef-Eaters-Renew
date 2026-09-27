Feature: Beef Eaters Renew — labels reach the def in English

  Run this feature under -Language English. Never switch language inside a scenario:
  SelectLanguage reloads every def and the runner beneath it (see the authoring guide,
  "Waiting: fast mode..."). RimWorld overwrites a Def's own field with its language's text at
  load — English here is the Def's own literal value, with no DefInjected entry needed — so
  reading the field after load is what the game actually displays, not just that a resource
  exists for it (Check-DefInjected.ps1 already proves the injection paths resolve offline). No
  save needed: this reads the def database built at the main menu. See TESTING.md, scenario P.
  Pair with 06-labels-french.feature, run under -Language French, for the other half.

  Scenario: the Belgian blue cow's label is in English
    Then def "BelgianBlueCow" field "label" is "belgian blue cow"

  Scenario: the pygmy beefalo's label is in English
    Then def "PygmyBeefalo" field "label" is "pygmy beefalo"
