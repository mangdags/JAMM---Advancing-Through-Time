import crafttweaker.api.GenericRecipesManager;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.recipe.MirrorAxis;

var empty = <item:minecraft:air>;
var stone = <item:minecraft:stone>;
var cobblestone = <item:minecraft:cobblestone>;
var stick = <item:minecraft:stick>;
var copperIngot = <item:minecraft:copper_ingot>;
var copperBlock = <item:minecraft:copper_block>;
var cogBlock = <item:supplementaries:cog_block>;
var ironIngot = <item:minecraft:iron_ingot>;
var planks = <tag:items:minecraft:planks>;
var wooden_chest = <tag:items:forge:chests/wooden>;
var amethyst_shard = <item:minecraft:amethyst_shard>;

craftingTable.addShaped("stone_pickaxe", <item:minecraft:stone_pickaxe>, [
    [stone, stone, stone],
    [empty, stick, empty],
    [empty, stick, empty]
]);

/* Tom's Simple Storage Mod*/
craftingTable.remove(<item:supplementaries:cog_block>);
craftingTable.addShaped("cog_block", <item:supplementaries:cog_block>, [
    [copperIngot, copperIngot, copperIngot],
    [copperIngot, copperBlock, copperIngot],
    [copperIngot, copperIngot, copperIngot]
]);

craftingTable.remove(<item:toms_storage:ts.inventory_connector>);
craftingTable.addShaped("inventory_connector", <item:toms_storage:ts.inventory_connector>, [
    [planks, empty, planks],
    [wooden_chest, cogBlock, wooden_chest],
    [planks, <item:minecraft:ender_pearl>, planks]
]);

craftingTable.remove(<item:toms_storage:ts.storage_terminal>);
craftingTable.addShaped("storage_terminal", <item:toms_storage:ts.storage_terminal>, [
    [planks, copperIngot, planks],
    [wooden_chest, cogBlock, amethyst_shard],
    [planks, copperIngot, planks]
]);

craftingTable.remove(<item:toms_storage:ts.crafting_terminal>);
craftingTable.addShaped("crafting_terminal", <item:toms_storage:ts.crafting_terminal>, [
    [<item:minecraft:crafting_table>, cogBlock, <item:minecraft:crafting_table>],
    [cogBlock, <item:toms_storage:ts.storage_terminal>, cogBlock],
    [<item:minecraft:crafting_table>, cogBlock, <item:minecraft:crafting_table>]
]);

craftingTable.remove(<item:toms_storage:ts.inventory_cable_connector>);
craftingTable.addShaped("inventory_cable_connector", <item:toms_storage:ts.inventory_cable_connector>, [
    [empty, copperIngot, planks],
    [<item:toms_storage:ts.inventory_cable>, wooden_chest, <item:minecraft:ender_pearl>],
    [empty, cogBlock, planks]
]);

craftingTable.remove(<item:toms_storage:ts.inventory_cable_connector_filtered>);
craftingTable.addShaped("inventory_cable_connector_filtered", <item:toms_storage:ts.inventory_cable_connector_filtered>, [
    [empty, copperIngot, empty],
    [<item:minecraft:paper>, <item:toms_storage:ts.inventory_cable_connector>, <item:minecraft:paper>],
    [empty, copperIngot, empty]
]);
/*End of Tom's Simple Storage Mod*/


var post = <tag:items:valhelsia_structures:posts>;
var goldIngot = <item:minecraft:gold_ingot>;
var ironNugget = <item:minecraft:iron_nugget>;
var suppRope = <item:supplementaries:rope>;

//BELL
craftingTable.addShaped("village_bell", <item:minecraft:bell>, [
    [post, post, post],
    [suppRope, goldIngot, suppRope],
    [ironNugget, goldIngot, ironNugget]
]);

//CHAIN SET
craftingTable.remove(<item:minecraft:chainmail_helmet>);
craftingTable.addShaped("chain_helm", <item:minecraft:chainmail_helmet>, [
    [ironNugget, ironNugget, ironNugget],
    [ironNugget, empty, ironNugget],
    [empty, empty, empty]
]);

craftingTable.remove(<item:minecraft:chainmail_chestplate>);
craftingTable.addShaped("chain_chest", <item:minecraft:chainmail_chestplate>, [
    [ironNugget, empty, ironNugget],
    [ironNugget, ironNugget, ironNugget],
    [ironNugget, ironNugget, ironNugget]
]);

craftingTable.remove(<item:minecraft:chainmail_leggings>);
craftingTable.addShaped("chain_leggings", <item:minecraft:chainmail_leggings>, [
    [ironNugget, ironNugget, ironNugget],
    [ironNugget, empty, ironNugget],
    [ironNugget, empty, ironNugget]
]);

craftingTable.remove(<item:minecraft:chainmail_boots>);
craftingTable.addShaped("chain_boots", <item:minecraft:chainmail_boots>, [
    [empty, empty, empty],
    [ironNugget, empty, ironNugget],
    [ironNugget, empty, ironNugget]
]);

//SADDLE

//LEATHER

//HORSE ARMOR

//NAME TAG


var birchLog = <item:minecraft:birch_log>;
var oakLog = <item:minecraft:oak_log>;
var acaciaLog = <item:minecraft:acacia_log>;
var jungleLog = <item:minecraft:jungle_log>;
var darkOakLog = <item:minecraft:dark_oak_log>;
var spruceLog = <item:minecraft:spruce_log>;

//FIREWOOD 
craftingTable.addShaped("birch_firewood", <item:projectbrazier:birch_firewood>, [
    [birchLog, birchLog, birchLog],
    [birchLog, birchLog, birchLog],
    [birchLog, birchLog, birchLog]
]);
<item:projectbrazier:birch_firewood>.burnTime = 3000;

craftingTable.addShaped("oak_firewood", <item:projectbrazier:oak_firewood>, [
    [oakLog, oakLog, oakLog],
    [oakLog, oakLog, oakLog],
    [oakLog, oakLog, oakLog]
]);
<item:projectbrazier:oak_firewood>.burnTime = 3000;

craftingTable.addShaped("acacia_firewood", <item:projectbrazier:acacia_firewood>, [
    [acaciaLog, acaciaLog, acaciaLog],
    [acaciaLog, acaciaLog, acaciaLog],
    [acaciaLog, acaciaLog, acaciaLog]
]);
<item:projectbrazier:acacia_firewood>.burnTime = 3000;

craftingTable.addShaped("jungle_firewood", <item:projectbrazier:jungle_firewood>, [
    [jungleLog, jungleLog, jungleLog],
    [jungleLog, jungleLog, jungleLog],
    [jungleLog, jungleLog, jungleLog]
]);
<item:projectbrazier:jungle_firewood>.burnTime = 3000;

craftingTable.addShaped("dark_oak_firewood", <item:projectbrazier:dark_oak_firewood>, [
    [darkOakLog, darkOakLog, darkOakLog],
    [darkOakLog, darkOakLog, darkOakLog],
    [darkOakLog, darkOakLog, darkOakLog]
]);
<item:projectbrazier:dark_oak_firewood>.burnTime = 3000;

craftingTable.addShaped("spruce_firewood", <item:projectbrazier:spruce_firewood>, [
    [spruceLog, spruceLog, spruceLog],
    [spruceLog, spruceLog, spruceLog],
    [spruceLog, spruceLog, spruceLog]
]);
<item:projectbrazier:spruce_firewood>.burnTime = 3000;

//HOLLOW LOG
craftingTable.addShapeless("birch_hollow_log", <item:projectbrazier:hollow_birch_log>, [birchLog]);
craftingTable.addShapeless("oak_hollow_log", <item:projectbrazier:hollow_oak_log>, [oakLog]);
craftingTable.addShapeless("acacia_hollow_log", <item:projectbrazier:hollow_acacia_log>, [acaciaLog]);
craftingTable.addShapeless("jungle_hollow_log", <item:projectbrazier:hollow_jungle_log>, [jungleLog]);
craftingTable.addShapeless("dark_oak_hollow_log", <item:projectbrazier:hollow_dark_oak_log>, [darkOakLog]);
craftingTable.addShapeless("spruce_hollow_log", <item:projectbrazier:hollow_spruce_log>, [birchLog]);

//STRIPPED HOLLOW LOG
craftingTable.addShapeless("birch_hollow_stripped_log", <item:projectbrazier:stripped_hollow_birch_log>, [birchLog]);
craftingTable.addShapeless("oak_hollow_stripped_log", <item:projectbrazier:stripped_hollow_oak_log>, [oakLog]);
craftingTable.addShapeless("acacia_hollow_stripped_log", <item:projectbrazier:stripped_hollow_acacia_log>, [acaciaLog]);
craftingTable.addShapeless("jungle_hollow_stripped_log", <item:projectbrazier:stripped_hollow_jungle_log>, [jungleLog]);
craftingTable.addShapeless("dark_oak_hollow_stripped_log", <item:projectbrazier:stripped_hollow_dark_oak_log>,[darkOakLog]);
craftingTable.addShapeless("spruce_hollow_stripped_log", <item:projectbrazier:stripped_hollow_spruce_log>, [birchLog]);

//HOOF FUNGUS
craftingTable.addShapeless("hoof_fungus", <item:projectbrazier:hoof_fungus>, [<item:minecraft:brown_mushroom_block>]);

stoneCutter.addRecipe("stone_arrow_silt", <item:projectbrazier:stone_arrow_slit>, <item:minecraft:stone>);
stoneCutter.addRecipe("deepslate_arrow_silt", <item:projectbrazier:deepslate_arrow_slit>, <item:minecraft:deepslate>);


//WALL CANDLE HOLDER
var wallCandleHolder = <item:projectbrazier:wall_candle_holder>;

craftingTable.addShapedMirrored("wall_candle_holder", MirrorAxis.ALL,  <item:projectbrazier:wall_candle_holder>, [
    [empty, <tag:items:minecraft:candles>, empty],
    [empty, ironIngot, ironNugget],
    [empty, empty, empty]
]);
craftingTable.addShapeless("white_wall_candle_holder", <item:projectbrazier:white_wall_candle_holder>, [wallCandleHolder, <item:minecraft:white_dye>]);
craftingTable.addShapeless("orange_wall_candle_holder", <item:projectbrazier:orange_wall_candle_holder>, [wallCandleHolder, <item:minecraft:orange_dye>]);
craftingTable.addShapeless("magenta_wall_candle_holder", <item:projectbrazier:magenta_wall_candle_holder>, [wallCandleHolder, <item:minecraft:magenta_dye>]);
craftingTable.addShapeless("light_blue_wall_candle_holder", <item:projectbrazier:light_blue_wall_candle_holder>, [wallCandleHolder, <item:minecraft:light_blue_dye>]);
craftingTable.addShapeless("yellow_wall_candle_holder", <item:projectbrazier:yellow_wall_candle_holder>, [wallCandleHolder, <item:minecraft:yellow_dye>]);
craftingTable.addShapeless("lime_wall_candle_holder", <item:projectbrazier:lime_wall_candle_holder>, [wallCandleHolder, <item:minecraft:lime_dye>]);
craftingTable.addShapeless("pink_wall_candle_holder", <item:projectbrazier:pink_wall_candle_holder>, [wallCandleHolder, <item:minecraft:pink_dye>]);
craftingTable.addShapeless("gray_wall_candle_holder", <item:projectbrazier:gray_wall_candle_holder>, [wallCandleHolder, <item:minecraft:gray_dye>]);
craftingTable.addShapeless("light_gray_wall_candle_holder", <item:projectbrazier:light_gray_wall_candle_holder>, [wallCandleHolder, <item:minecraft:light_gray_dye>]);
craftingTable.addShapeless("cyan_wall_candle_holder", <item:projectbrazier:cyan_wall_candle_holder>, [wallCandleHolder, <item:minecraft:cyan_dye>]);
craftingTable.addShapeless("purple_wall_candle_holder", <item:projectbrazier:purple_wall_candle_holder>, [wallCandleHolder, <item:minecraft:purple_dye>]);
craftingTable.addShapeless("blue_wall_candle_holder", <item:projectbrazier:blue_wall_candle_holder>, [wallCandleHolder, <item:minecraft:blue_dye>]);
craftingTable.addShapeless("brown_wall_candle_holder", <item:projectbrazier:brown_wall_candle_holder>, [wallCandleHolder, <item:minecraft:brown_dye>]);
craftingTable.addShapeless("green_wall_candle_holder", <item:projectbrazier:green_wall_candle_holder>, [wallCandleHolder, <item:minecraft:green_dye>]);
craftingTable.addShapeless("red_wall_candle_holder", <item:projectbrazier:red_wall_candle_holder>, [wallCandleHolder, <item:minecraft:red_dye>]);
craftingTable.addShapeless("black_wall_candle_holder", <item:projectbrazier:black_wall_candle_holder>, [wallCandleHolder, <item:minecraft:black_dye>]);

//CANDLE HOLDER
var candleHolder = <item:projectbrazier:candle_holder>;

craftingTable.addShapedMirrored("candle_holder", MirrorAxis.ALL, <item:projectbrazier:candle_holder>, [
    [empty, <tag:items:minecraft:candles>, empty],
    [empty, ironIngot, ironNugget],
    [empty, ironIngot, ironNugget]
]);

craftingTable.addShapeless("white_candle_holder", <item:projectbrazier:white_candle_holder>, [candleHolder, <item:minecraft:white_dye>]);
craftingTable.addShapeless("orange_candle_holder", <item:projectbrazier:orange_candle_holder>, [candleHolder, <item:minecraft:orange_dye>]);
craftingTable.addShapeless("magenta_candle_holder", <item:projectbrazier:magenta_candle_holder>, [candleHolder, <item:minecraft:magenta_dye>]);
craftingTable.addShapeless("light_blue_candle_holder", <item:projectbrazier:light_blue_candle_holder>, [candleHolder, <item:minecraft:light_blue_dye>]);
craftingTable.addShapeless("yellow_candle_holder", <item:projectbrazier:yellow_candle_holder>, [candleHolder, <item:minecraft:yellow_dye>]);
craftingTable.addShapeless("lime_candle_holder", <item:projectbrazier:lime_candle_holder>, [candleHolder, <item:minecraft:lime_dye>]);
craftingTable.addShapeless("pink_candle_holder", <item:projectbrazier:pink_candle_holder>, [candleHolder, <item:minecraft:pink_dye>]);
craftingTable.addShapeless("gray_candle_holder", <item:projectbrazier:gray_candle_holder>, [candleHolder, <item:minecraft:gray_dye>]);
craftingTable.addShapeless("light_gray_candle_holder", <item:projectbrazier:light_gray_candle_holder>, [candleHolder, <item:minecraft:light_gray_dye>]);
craftingTable.addShapeless("cyan_candle_holder", <item:projectbrazier:cyan_candle_holder>, [candleHolder, <item:minecraft:cyan_dye>]);
craftingTable.addShapeless("purple_candle_holder", <item:projectbrazier:purple_candle_holder>, [candleHolder, <item:minecraft:purple_dye>]);
craftingTable.addShapeless("blue_candle_holder", <item:projectbrazier:blue_candle_holder>, [candleHolder, <item:minecraft:blue_dye>]);
craftingTable.addShapeless("brown_candle_holder", <item:projectbrazier:brown_candle_holder>, [candleHolder, <item:minecraft:brown_dye>]);
craftingTable.addShapeless("green_candle_holder", <item:projectbrazier:green_candle_holder>, [candleHolder, <item:minecraft:green_dye>]);
craftingTable.addShapeless("red_candle_holder", <item:projectbrazier:red_candle_holder>, [candleHolder, <item:minecraft:red_dye>]);
craftingTable.addShapeless("black_candle_holder", <item:projectbrazier:black_candle_holder>, [candleHolder, <item:minecraft:black_dye>]);

craftingTable.addShapeless("wall_torch_holder", <item:projectbrazier:wall_torch_holder>, [<item:minecraft:torch>, ironIngot]);
craftingTable.addShapeless("wall_soul_torch_holder", <item:projectbrazier:wall_soul_torch_holder>, [<item:minecraft:soul_torch>, ironIngot]);

var coalBlock = <item:minecraft:coal_block>;
stoneCutter.addRecipe("traces_coal_ore", <item:projectbrazier:traces_of_coal_ore>, coalBlock);
stoneCutter.addRecipe("poor_coal_ore", <item:projectbrazier:poor_coal_ore>, coalBlock);
stoneCutter.addRecipe("rich_coal_ore", <item:projectbrazier:rich_coal_ore>, coalBlock);
stoneCutter.addRecipe("traces_coal_ore_deepslate", <item:projectbrazier:traces_of_deepslate_coal_ore>, coalBlock);
stoneCutter.addRecipe("poor_coal_ore_deepslate", <item:projectbrazier:poor_deepslate_coal_ore>, coalBlock);
stoneCutter.addRecipe("rich_coal_ore_deepslate", <item:projectbrazier:rich_deepslate_coal_ore>, coalBlock);

var woodenAxe = <item:minecraft:wooden_axe>.anyDamage();
var stoneAxe = <item:minecraft:stone_axe>.anyDamage();

craftingTable.addShapeless("stripped_spruce_to_planks", <item:minecraft:spruce_planks>, [<item:minecraft:stripped_spruce_log>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_oak_to_planks", <item:minecraft:oak_planks>, [<item:minecraft:stripped_oak_log>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_birch_to_planks", <item:minecraft:birch_planks>, [<item:minecraft:stripped_birch_log>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_jungle_to_planks", <item:minecraft:jungle_planks>, [<item:minecraft:stripped_jungle_log>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_acacia_to_planks", <item:minecraft:acacia_planks>, [<item:minecraft:stripped_acacia_log>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_dark_oak_to_planks", <item:minecraft:dark_oak_planks>, [<item:minecraft:stripped_dark_oak_log>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_oak_wood_to_planks", <item:minecraft:oak_planks>, [<item:minecraft:stripped_oak_wood>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_spruce_wood_to_planks", <item:minecraft:spruce_planks>, [<item:minecraft:stripped_spruce_wood>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_birch_wood_to_planks", <item:minecraft:birch_planks>, [<item:minecraft:stripped_birch_wood>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_jungle_wood_to_planks", <item:minecraft:jungle_planks>, [<item:minecraft:stripped_jungle_wood>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_acacia_wood_to_planks", <item:minecraft:acacia_planks>, [<item:minecraft:stripped_acacia_wood>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);
craftingTable.addShapeless("stripped_dark_oak_wood_to_planks", <item:minecraft:dark_oak_planks>, [<item:minecraft:stripped_dark_oak_wood>, woodenAxe.transformDamage(3) | stoneAxe.transformDamage(3)]);


var tinIngot = <item:mekanism:ingot_tin>;
craftingTable.addShapeless("bronze_ingot", <item:mekanism:ingot_bronze>, 
    [copperIngot, copperIngot, copperIngot, tinIngot]
);

craftingTable.addShapeless("fusion_bronze_ingot", <item:fusion:bronze_ingot>, 
    [copperIngot, copperIngot, copperIngot, tinIngot]
);




//TODO: Bronze recipe

/*
craftingTable.addShapeless("poormanshifting", <item:minecraft:sand>,
    [<item:minecraft:water_bucket>, <item:minecraft:golden_shovel>.anyDamage().transformDamage(3), <item:minecraft:cobblestone>]
);
*/