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
    }
}
