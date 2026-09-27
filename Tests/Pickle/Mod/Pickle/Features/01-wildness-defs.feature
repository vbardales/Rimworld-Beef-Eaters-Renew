Feature: Beef Eaters Renew — the wildness repair survives the game's own load

  This is the whole point of the 1.6 port: RaceProperties.wildness was silently dropped by the
  engine, and only a stat the game itself computes proves the replacement StatDef is there and
  read. No save is loaded: these run at the main menu, against the def database RimWorld itself
  built, patches and inheritance included — a stronger check than parsing the XML, because it
  passes through Core's own loading pipeline instead of around it. Tools/Check-Mod.ps1 already
  proves the file says 0.05/0.5; this proves the game agrees after loading it. See TESTING.md,
  scenario B.

  Scenario: the Belgian blue cow's wildness survives the load, as the XML wrote it
    Then def "BelgianBlueCow" raw stat "Wildness" is 0.05
    And def "BelgianBlueCow" stat "Wildness" is 0.05

  Scenario: the pygmy beefalo's wildness survives the load, as the XML wrote it
    Then def "PygmyBeefalo" raw stat "Wildness" is 0.5
    And def "PygmyBeefalo" stat "Wildness" is 0.5
