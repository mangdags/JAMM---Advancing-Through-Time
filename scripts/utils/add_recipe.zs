import crafttweaker.api.GenericRecipesManager;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

var empty = <item:minecraft:air>;
var stone = <item:minecraft:stone>;
var cobblestone = <item:minecraft:cobblestone>;
var stick = <item:minecraft:stick>;

craftingTable.addShaped("stone_pickaxe", <item:minecraft:stone_pickaxe>, [
    [stone, stone, stone],
    [empty, stick, empty],
    [empty, stick, empty]
]);



