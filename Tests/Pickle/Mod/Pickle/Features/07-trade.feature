Feature: Beef Eaters Renew — the pygmy beefalo's trade tag actually reaches a trader

  The gap the first pass of this suite left open, closed once a check existed for it: no step in
  Pickle's built-in catalogue or in PickleTools reads a trader's generated stock, so this scenario
  does not force one and roll RNG. It calls RimWorld's own `TraderKindDef.WillTrade(ThingDef)` —
  the method the trade window itself calls — through a local step in Tests/Pickle/Source, so the
  answer can never drift from the real rule by re-deriving it independently. Static def data,
  decided once loading finishes: no save, no forced trader, no RNG. See TESTING.md, scenario I.

  `Base_Outlander_Standard` is Core's own TraderKindDef whose stock generators read `AnimalFarm`,
  confirmed by reading Core's TraderKindDefs XML on 2026-09-27. `StandardAnimal`, the original's
  only tag, is not a def and has no def-existence step to assert against; that it is read nowhere
  in Core or the expansions was confirmed the same day by a grep across the installed game data
  (`grep -rl StandardAnimal Data`, no match) and stays a static-search claim, recorded here and in
  TESTING.md, rather than a live scenario built on checking an absence across the whole game.

  Scenario: the Belgian blue cow reaches a farm trader on its own declared tag
    Then Beef Eaters Renew: trader kind "Base_Outlander_Standard" can trade the animal "BelgianBlueCow"

  Scenario: the pygmy beefalo reaches a farm trader on the tag this port added
    Then Beef Eaters Renew: trader kind "Base_Outlander_Standard" can trade the animal "PygmyBeefalo"
