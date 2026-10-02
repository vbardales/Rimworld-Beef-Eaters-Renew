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

        // ---- gallery decor: props around a subject, then taken away so the next portrait has the same ground ----

        private static readonly List<Thing> stagedDecor = new List<Thing>();

        [When("Beef Eaters Renew: I stage the decor {string} {int} cells east and {int} cells north of {string}")]
        public void StageDecor(PickleContext ctx, string defName, int east, int north, string colonistName)
        {
            var def = DefDatabase<ThingDef>.GetNamedSilentFail(defName);
            ctx.Require(def != null, $"no ThingDef named {defName}");
            var map = Find.CurrentMap;
            var cell = ColonistNamed(ctx, colonistName).Position + new IntVec3(east, 0, north);
            ctx.Require(cell.InBounds(map), $"cell {cell} is off the map");
            ctx.Require(!cell.GetThingList(map).Any(t => t is Pawn || t.def.category == ThingCategory.Building),
                $"cell {cell} already holds a pawn or a building");
            foreach (var p in cell.GetThingList(map).Where(t => t.def.category == ThingCategory.Plant).ToList()) p.Destroy();
            var thing = ThingMaker.MakeThing(def, def.MadeFromStuff ? GenStuff.DefaultStuffFor(def) : null);
            if (thing is Plant plant) plant.Growth = 1f;
            GenSpawn.Spawn(thing, cell, map);
            stagedDecor.Add(thing);
        }

        // ---- def values, read after the game's own load (scenarios A, D-L of TESTING.md) --------------------

        private static string Walk(object start, string path)
        {
            object cur = start;
            foreach (var part in path.Split('.'))
            {
                if (cur == null) return "<null>";
                var t = cur.GetType();
                var f = t.GetField(part, System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance);
                if (f != null) { cur = f.GetValue(cur); continue; }
                var p = t.GetProperty(part, System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance);
                if (p == null) return $"<no member '{part}' on {t.Name}>";
                cur = p.GetValue(cur, null);
            }
            if (cur is Def d) return d.defName;
            if (cur is float fl) return fl.ToString("R", System.Globalization.CultureInfo.InvariantCulture);
            if (cur is bool b) return b ? "true" : "false";
            return cur == null ? "<null>" : System.Convert.ToString(cur, System.Globalization.CultureInfo.InvariantCulture);
        }

        [Then("Beef Eaters Renew: the animal {string} has the field {string} at {string}")]
        public void FieldIs(PickleContext ctx, string defName, string path, string expected)
        {
            var actual = Walk(Animal(ctx, defName), path);
            ctx.Assert(string.Equals(actual, expected, System.StringComparison.OrdinalIgnoreCase),
                $"ThingDef '{defName}' {path} is \"{actual}\", expected \"{expected}\".");
        }

        [Then("Beef Eaters Renew: the animal {string} has the {string} comp with {string} at {string}")]
        public void CompFieldIs(PickleContext ctx, string defName, string compClass, string path, string expected)
        {
            var thing = Animal(ctx, defName);
            var comp = thing.comps?.FirstOrDefault(c => c.GetType().Name == compClass);
            ctx.Assert(comp != null, $"ThingDef '{defName}' has no {compClass}; its comps are: " +
                string.Join(", ", (thing.comps ?? new List<CompProperties>()).Select(c => c.GetType().Name)));
            var actual = Walk(comp, path);
            ctx.Assert(string.Equals(actual, expected, System.StringComparison.OrdinalIgnoreCase),
                $"ThingDef '{defName}' {compClass}.{path} is \"{actual}\", expected \"{expected}\".");
        }

        [When("Beef Eaters Renew: the staged decor is removed")]
        public void RemoveStagedDecor(PickleContext ctx)
        {
            foreach (var t in stagedDecor) if (!t.Destroyed) t.Destroy();
            stagedDecor.Clear();
        }
    }
}
