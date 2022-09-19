import crafttweaker.api.GenericRecipesManager;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

var empty = <item:minecraft:air>;
var stone = <item:minecraft:stone>;
var cobblestone = <item:minecraft:cobblestone>;
var stick = <item:minecraft:stick>;
var copperIngot = <item:minecraft:copper_ingot>;
var copperBlock = <item:minecraft:copper_block>;
var cogBlock = <item:supplementaries:cog_block>;
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