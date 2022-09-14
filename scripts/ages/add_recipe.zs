import crafttweaker.api.GenericRecipesManager;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

var empty = <item:minecraft:air>;
var stone = <item:minecraft:stone>;
var cobblestone = <item:minecraft:cobblestone>;
var stick = <item:minecraft:stick>;
var copper_ingot = <item:minecraft:copper_ingot>;
var copper_block = <item:minecraft:copper_block>;
var cog_block = <item:supplementaries:cog_block>;
var planks = <tag:items:minecraft:planks>;
var wooden_chest = <tag:items:forge:chests/wooden>;
var amethyst_shard = <item:minecraft:amethyst_shard>;

craftingTable.addShaped("stone_pickaxe", <item:minecraft:stone_pickaxe>, [
    [stone, stone, stone],
    [empty, stick, empty],
    [empty, stick, empty]
]);

craftingTable.remove(<item:supplementaries:cog_block>);
craftingTable.addShaped("cog_block", <item:supplementaries:cog_block>, [
    [copper_ingot, copper_ingot, copper_ingot],
    [copper_ingot, copper_block, copper_ingot],
    [copper_ingot, copper_ingot, copper_ingot]
]);

craftingTable.remove(<item:toms_storage:ts.inventory_connector>);
craftingTable.addShaped("inventory_connector", <item:toms_storage:ts.inventory_connector>, [
    [planks, empty, planks],
    [wooden_chest, cog_block, wooden_chest],
    [planks, <item:minecraft:ender_pearl>, planks]
]);

craftingTable.remove(<item:toms_storage:ts.storage_terminal>);
craftingTable.addShaped("storage_terminal", <item:toms_storage:ts.storage_terminal>, [
    [planks, copper_ingot, planks],
    [wooden_chest, cog_block, amethyst_shard],
    [planks, copper_ingot, planks]
]);

craftingTable.remove(<item:toms_storage:ts.crafting_terminal>);
craftingTable.addShaped("crafting_terminal", <item:toms_storage:ts.crafting_terminal>, [
    [<item:minecraft:crafting_table>, cog_block, <item:minecraft:crafting_table>],
    [cog_block, <item:toms_storage:ts.storage_terminal>, cog_block],
    [<item:minecraft:crafting_table>, cog_block, <item:minecraft:crafting_table>]
]);

craftingTable.remove(<item:toms_storage:ts.inventory_cable_connector>);
craftingTable.addShaped("inventory_cable_connector", <item:toms_storage:ts.inventory_cable_connector>, [
    [empty, copper_ingot, planks],
    [<item:toms_storage:ts.inventory_cable>, wooden_chest, <item:minecraft:ender_pearl>],
    [empty, cog_block, planks]
]);

craftingTable.remove(<item:toms_storage:ts.inventory_cable_connector_filtered>);
craftingTable.addShaped("inventory_cable_connector_filtered", <item:toms_storage:ts.inventory_cable_connector_filtered>, [
    [empty, copper_ingot, empty],
    [<item:minecraft:paper>, <item:toms_storage:ts.inventory_cable_connector>, <item:minecraft:paper>],
    [empty, copper_ingot, empty]
]);