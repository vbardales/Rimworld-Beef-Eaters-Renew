using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RimWorks.Pickle;
using RimWorld;
using Verse;

namespace Nelim.BeefEaters.PickleTests
{
    /// <summary>
    /// What the Workshop gallery needs and neither Pickle nor PickleTools offers: an adult of a chosen
    /// sex, or an animal of a chosen life stage, put on a cell facing a chosen way; the map shown alone
    /// for a capture; time held still once the animals stand. Modelled on the Animal Ark suite's own
    /// gallery steps. The animals belong to the player's faction, so a cow does not flee a colonist
    /// standing next to it. Every phrase starts with "Beef Eaters Renew:" because Pickle matches steps
    /// on their text alone across every suite of a run.
    /// </summary>
    [PickleSteps]
    public sealed class GallerySteps
    {
        private static readonly Dictionary<Window, bool> WindowFlags = new Dictionary<Window, bool>();
        private static bool screenshotWasActive;
        private static bool screenshotSet;
        private static TimeSpeed savedSpeed = TimeSpeed.Normal;
        private static bool paused;

        private static PawnKindDef Kind(PickleContext ctx, string defName)
        {
            var kind = DefDatabase<PawnKindDef>.GetNamedSilentFail(defName);
            ctx.Require(kind != null, $"no PawnKindDef named {defName}");
            return kind;
        }

        private static Rot4 Facing(PickleContext ctx, string word)
        {
            switch (word.ToLowerInvariant())
            {
                case "north": return Rot4.North;
                case "east": return Rot4.East;
                case "south": return Rot4.South;
                case "west": return Rot4.West;
            }
            ctx.Require(false, $"facing must be North, East, South or West, not {word}");
            return Rot4.South;
        }

        private static Pawn Spawn(PickleContext ctx, PawnKindDef kind, int stage, Gender? sex, int x, int z, Rot4 rot)
        {
            ctx.Require(Find.CurrentMap != null, "load a map first");
            var ages = kind.RaceProps.lifeStageAges;
            ctx.Require(stage >= 0 && stage < ages.Count,
                $"{kind.defName} has {ages.Count} life stages, numbered from 0; asked for {stage}");
            float years = ages[stage].minAge + 0.0001f;
            var request = new PawnGenerationRequest(kind, Faction.OfPlayer, PawnGenerationContext.NonPlayer,
                fixedGender: sex, fixedBiologicalAge: years, fixedChronologicalAge: years);
            var pawn = PawnGenerator.GeneratePawn(request);
            ctx.Assert(pawn.ageTracker.CurLifeStageIndex == stage,
                $"a {kind.defName} generated at {years} years is in life stage {pawn.ageTracker.CurLifeStageIndex}, not {stage}");
            var cell = new IntVec3(x, 0, z);
            ctx.Require(cell.InBounds(Find.CurrentMap) && cell.Standable(Find.CurrentMap), $"cell {cell} is off the map or not standable");
            GenSpawn.Spawn(pawn, cell, Find.CurrentMap, rot);
            return pawn;
        }

        [When("Beef Eaters Renew: I spawn an adult {string} {word} at \\({int}, {int}\\) facing {word}")]
        public void AdultOfSex(PickleContext ctx, string kindDefName, string sex, int x, int z, string facing)
        {
            ctx.Require(sex == "male" || sex == "female", $"sex must be male or female, not {sex}");
            var kind = Kind(ctx, kindDefName);
            Spawn(ctx, kind, kind.RaceProps.lifeStageAges.Count - 1, sex == "male" ? Gender.Male : Gender.Female, x, z, Facing(ctx, facing));
        }

        [When("Beef Eaters Renew: I spawn a {string} {word} in life stage {int} at \\({int}, {int}\\) facing {word}")]
        public void AtStageOfSex(PickleContext ctx, string kindDefName, string sex, int stage, int x, int z, string facing)
        {
            ctx.Require(sex == "male" || sex == "female", $"sex must be male or female, not {sex}");
            Spawn(ctx, Kind(ctx, kindDefName), stage, sex == "male" ? Gender.Male : Gender.Female, x, z, Facing(ctx, facing));
        }

        /// <summary>
        /// The map and nothing else: the game's own screenshot mode, every open window (the Pickle
        /// panel and the log viewer included) told not to draw in it.
        /// </summary>
        [When("Beef Eaters Renew: the map is shown alone for a capture")]
        public async Task MapAlone(PickleContext ctx)
        {
            Restore();
            var root = Find.UIRoot;
            ctx.Require(root?.screenshotMode != null, "no UIRoot screenshot mode is available");
            foreach (var window in Find.WindowStack.Windows.ToList())
            {
                WindowFlags[window] = window.drawInScreenshotMode;
                window.drawInScreenshotMode = false;
            }
            screenshotWasActive = root.screenshotMode.Active;
            root.screenshotMode.Active = true;
            screenshotSet = true;
            await ctx.WaitFrames(3);
        }

        [When("Beef Eaters Renew: the interface is shown again")]
        public void InterfaceBack(PickleContext ctx)
        {
            Restore();
        }

        /// <summary>Holds time still once the animals stand, so nothing wanders out of the frame.</summary>
        [When("Beef Eaters Renew: time is paused")]
        public async Task Pause(PickleContext ctx)
        {
            if (!paused) { savedSpeed = Find.TickManager.CurTimeSpeed; paused = true; }
            Find.TickManager.CurTimeSpeed = TimeSpeed.Paused;
            await ctx.WaitFrames(3);
        }

        [AfterScenario]
        public void RestoreAfterScenario()
        {
            Restore();
        }

        private static void Restore()
        {
            foreach (var pair in WindowFlags)
                if (pair.Key != null) pair.Key.drawInScreenshotMode = pair.Value;
            WindowFlags.Clear();
            if (screenshotSet && Find.UIRoot?.screenshotMode != null) Find.UIRoot.screenshotMode.Active = screenshotWasActive;
            screenshotSet = false;
            if (paused && Find.TickManager != null) Find.TickManager.CurTimeSpeed = savedSpeed;
            paused = false;
        }
    }
}
