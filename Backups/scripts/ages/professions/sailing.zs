import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:sponge>,
    <item:minecraft:wet_sponge>,
    <item:minecraft:trident>,
    <item:minecraft:prismarine_bricks>,
    <item:minecraft:dark_prismarine>,
    <item:minecraft:prismarine>
];

var modList as string [] = [
    "smallships",
    "aquaculture"
];

var exceptItem as IItemStack [] = [
    <item:smallships:sail_item>
];

for item in listItem {
    setStagedItem("sailing", item);
}

for mod in modList {
    setStagedMod("sailing", mod);
}

 for item in exceptItem {
    removeStagedItem(item);
 }