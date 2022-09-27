import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

#priority 99

var listItem as IItemStack [] = [
    <item:natprog:flint_hatchet>,
    <item:farmersdelight:flint_knife>,
    <item:minecraft:flint>,
    <item:natprog:basic_saw>,
    <item:supplementaries:flint_block>,
    <item:minecraft:sand>,
    <item:minecraft:gravel>,
    <item:minecraft:carrot>,
    <item:minecraft:potato>,
    <item:minecraft:wheat>,
    <item:minecraft:bread>,
    <item:minecraft:beetroot>,
    <item:minecraft:apple>,
    <item:minecraft:wheat_seeds>,
    <item:projectbrazier:white_cabbage>,
    <item:minecraft:stick>,
    <item:minecraft:crafting_table>,
];

for item in listItem {
    setStagedItem("prehistoric_age", item);
}

var listTag as MCTag [] = [
    <tag:items:minecraft:wools>,
    <tag:items:minecraft:logs>,
    <tag:items:minecraft:planks>,
    <tag:items:minecraft:beds>
];


for tag in listTag {
    setStagedTag("prehistoric_age", tag); 
}

var exceptItem as IItemStack [] = [
    <item:minecraft:crimson_planks>,
    <item:minecraft:warped_planks>,
    <item:minecraft:crimson_slab>,
    <item:minecraft:warped_slab>,
    <item:minecraft:crimson_stem>,
    <item:minecraft:warped_stem>,
    <item:immersiveengineering:fiberboard>
];

for item in exceptItem {
    removeStagedItem(item);
}

