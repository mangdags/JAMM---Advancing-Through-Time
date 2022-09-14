import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.resource.ResourceLocation;

//JEI.hideRecipe("minecraft:crafting", "minecraft:iron_leggings");
mods.recipestages.Recipes.showJEILabel(false);

//IRON
craftingTable.remove(<item:minecraft:iron_ingot>);
craftingTable.remove(<item:minecraft:iron_block>);
craftingTable.remove(<item:minecraft:iron_bars>);
craftingTable.remove(<item:minecraft:iron_door>);
craftingTable.remove(<item:minecraft:iron_trapdoor>);
craftingTable.remove(<item:minecraft:iron_sword>);
craftingTable.remove(<item:minecraft:iron_shovel>);
craftingTable.remove(<item:minecraft:iron_pickaxe>);
craftingTable.remove(<item:minecraft:iron_axe>);
craftingTable.remove(<item:minecraft:iron_hoe>);
craftingTable.remove(<item:minecraft:iron_boots>);
craftingTable.remove(<item:minecraft:iron_horse_armor>);
craftingTable.remove(<item:minecraft:iron_nugget>);
craftingTable.remove(<item:minecraft:oak_stairs>);
craftingTable.remove(<item:natprog:improved_saw>);
craftingTable.remove(<item:adpother:iron_filter_frame>);
craftingTable.remove(<item:adpother:iron_vacuum_bag>);
craftingTable.remove(<item:adpother:iron_vacuum_tube>);
craftingTable.remove(<item:adpother:iron_respirator>);
craftingTable.remove(<item:theoneprobe:iron_helmet_probe>);

mods.recipestages.Recipes.setRecipeStage("prehistoric_age", <item:minecraft:iron_chestplate>);
mods.recipestages.Recipes.setRecipeStage("prehistoric_age", <item:minecraft:iron_leggings>);
mods.recipestages.Recipes.setRecipeStage("prehistoric_age", <item:minecraft:diamond_helmet>);



setStagedItem("prehistoric_age", <item:minecraft:iron_helmet>);

var listItem as IItemStack [] = [
    <item:farmersdelight:flint_knife>,
    <item:minecraft:flint>,
    <item:natprog:basic_saw>,
    <item:supplementaries:flint_block>,
    <item:minecraft:sand>,
    <item:minecraft:gravel>,
    <item:silentgear:pebble>,
    <item:minecraft:crafting_table>
];

for item in listItem {
    setStagedItem("prehistoric_age", item);
}

var listTag as ResourceLocation [] = [
    <resource:minecraft:wool>,
    <resource:minecraft:logs>,
    <resource:minecraft:planks>,
    <resource:minecraft:beds>,
    <resource:minecraft:boat>
];


for item in listTag {
    setStagedTag("prehistoric_age", item);
}


