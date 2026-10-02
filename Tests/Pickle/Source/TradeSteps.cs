using System.Collections.Generic;
using System.Linq;
using RimWorks.Pickle;
using RimWorld;
using Verse;

namespace Nelim.BeefEaters.PickleTests
{
    /// <summary>
    /// Asserts whether a TraderKindDef's own stock generators would actually handle a given
    /// animal ThingDef: the question TESTING.md's scenario I asks and no step in Pickle's built-in
    /// catalogue or in PickleTools answers, checked against both before this was written.
    ///
    /// Calls <see cref="TraderKindDef.WillTrade(ThingDef)"/> directly rather than re-reading trade
    /// tags by hand: that is the method the game's own trade window calls, so this step can never
    /// silently drift from the real rule. It is static def data, decided once loading finishes, so
    /// it needs no save, no forced trader and no RNG roll — the flaky path a scenario built on
    /// actually generating stock would have taken instead.
    ///
    /// Local to this mod's own suite, not PickleTools: nothing here is written to be shared yet.
    /// </summary>
    [PickleSteps]
    public class TradeSteps
    {
        private static TraderKindDef Trader(PickleContext ctx, string defName)
        {
            var trader = DefDatabase<TraderKindDef>.GetNamedSilentFail(defName);
            ctx.Require(trader != null, $"No TraderKindDef named '{defName}'. Loaded trader kinds: " +
                string.Join(", ", DefDatabase<TraderKindDef>.AllDefsListForReading.Select(t => t.defName)));
            return trader;
        }

        private static ThingDef Animal(PickleContext ctx, string defName)
        {
            var thing = DefDatabase<ThingDef>.GetNamedSilentFail(defName);
            ctx.Require(thing != null, $"No ThingDef named '{defName}'.");
            ctx.Require(thing.race != null, $"'{defName}' is not an animal ThingDef: it has no race.");
            return thing;
        }

        private static string TagReport(ThingDef thing)
        {
            var tags = thing.tradeTags;
            return tags.NullOrEmpty() ? "no tradeTags at all" : string.Join(", ", tags);
        }

        [Then("Beef Eaters Renew: trader kind {string} can trade the animal {string}")]
        public void TraderCanTrade(PickleContext ctx, string traderDefName, string animalDefName)
        {
            var trader = Trader(ctx, traderDefName);
            var thing = Animal(ctx, animalDefName);
            bool willTrade = trader.WillTrade(thing);
            ctx.Assert(willTrade,
                $"TraderKindDef '{traderDefName}' would not trade '{animalDefName}'. " +
                $"Its {trader.stockGenerators.Count} stock generator(s) handle none of its tradeTags ({TagReport(thing)}).");
        }

        [Then("Beef Eaters Renew: trader kind {string} cannot trade the animal {string}")]
        public void TraderCannotTrade(PickleContext ctx, string traderDefName, string animalDefName)
        {
            var trader = Trader(ctx, traderDefName);
            var thing = Animal(ctx, animalDefName);
            bool willTrade = trader.WillTrade(thing);
            ctx.Assert(!willTrade,
                $"TraderKindDef '{traderDefName}' WOULD trade '{animalDefName}' " +
                $"(tradeTags: {TagReport(thing)}), which this scenario expected it not to.");
        }

        // Pickle's own def/stat/field steps look a def up by name alone and refuse a name that a
        // ThingDef and a PawnKindDef share, which is true of both animals here. These two name the
        // ThingDef, the one that holds the label and the statBases.
        [Then("Beef Eaters Renew: the animal {string} has the raw stat {string} at {float}")]
        public void RawStat(PickleContext ctx, string defName, string statName, float expected)
        {
            var thing = Animal(ctx, defName);
            var stat = DefDatabase<StatDef>.GetNamedSilentFail(statName);
            ctx.Require(stat != null, $"No StatDef named '{statName}'.");
            float raw = thing.GetStatValueAbstract(stat);
            var listed = thing.statBases?.FirstOrDefault(s => s.stat == stat);
            ctx.Assert(listed != null && System.Math.Abs(listed.value - expected) < 0.0001f,
                $"ThingDef '{defName}' statBases {statName}: " + (listed == null ? "not listed (stat default would apply)" : listed.value.ToString("R")) + $", expected {expected}.");
            ctx.Assert(System.Math.Abs(raw - expected) < 0.0001f,
                $"ThingDef '{defName}' computed {statName} is {raw:R}, expected {expected}.");
        }

        [Then("Beef Eaters Renew: the animal {string} has the label {string}")]
        public void Label(PickleContext ctx, string defName, string expected)
        {
            var thing = Animal(ctx, defName);
            ctx.Assert(thing.label == expected,
                $"ThingDef '{defName}' label is \"{thing.label}\", expected \"{expected}\".");
        }

        // ---- gallery: spawn an adult of a given sex on clear ground, and bring the camera close -------

        private static FloatRange? savedSizeRange;

        private static Pawn ColonistNamed(PickleContext ctx, string name)
        {
            var found = Find.CurrentMap.mapPawns.FreeColonists
                .Where(p => p.LabelShort == name || (p.Name != null && p.Name.ToStringShort == name)).ToList();
            ctx.Assert(found.Count == 1, $"expected exactly one colonist called {name}, found {found.Count}");
            return found[0];
        }

        [When("Beef Eaters Renew: I spawn an adult {string} {string} {int} cells east of {string}")]
        public void SpawnAdultEast(PickleContext ctx, string kindDefName, string sex, int cells, string colonistName)
        {
            ctx.Require(Find.CurrentMap != null, "load a map first");
            var kind = DefDatabase<PawnKindDef>.GetNamedSilentFail(kindDefName);
            ctx.Require(kind != null, $"no PawnKindDef named {kindDefName}");
            ctx.Require(sex == "male" || sex == "female", "sex is \"male\" or \"female\"");
            var stages = kind.RaceProps.lifeStageAges;
            float adultAge = stages[stages.Count - 1].minAge + 0.1f;
            var request = new PawnGenerationRequest(kind, Faction.OfPlayer, PawnGenerationContext.NonPlayer,
                fixedGender: sex == "male" ? Gender.Male : Gender.Female, fixedBiologicalAge: adultAge, fixedChronologicalAge: adultAge);
            var pawn = PawnGenerator.GeneratePawn(request);
            var wanted = ColonistNamed(ctx, colonistName).Position + new IntVec3(cells, 0, 0);
            GenSpawn.Spawn(pawn, CellFinder.StandableCellNear(wanted, Find.CurrentMap, 6f), Find.CurrentMap, Rot4.South);
        }

        [When("Beef Eaters Renew: I bring the camera to {int} cells' height {int} cells east of {string}")]
        public void CameraEast(PickleContext ctx, int rootSize, int cells, string colonistName)
        {
            var at = ColonistNamed(ctx, colonistName).DrawPos;
            var driver = Find.CameraDriver;
            var config = driver.config;
            if (!savedSizeRange.HasValue) savedSizeRange = config.sizeRange;
            config.sizeRange = new FloatRange(System.Math.Min(config.sizeRange.min, rootSize), config.sizeRange.max);
            driver.SetRootPosAndSize(new UnityEngine.Vector3(at.x + cells, at.y, at.z), rootSize);
        }

        [AfterScenario]
        public void RestoreCameraRange()
        {
            if (savedSizeRange.HasValue && Find.CameraDriver != null)
                Find.CameraDriver.config.sizeRange = savedSizeRange.Value;
            savedSizeRange = null;
        }
    }
}
