import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:pumpkin_seeds>,
    <item:projectbrazier:cauliflower_seeds>,
    <item:supplementaries:flax_seeds>,
    <item:projectbrazier:white_cabbage_seeds>,
    <item:minecraft:beetroot_seeds>,
    <item:minecraft:melon_seeds>,
    <item:minecraft:dandelion>,
    <item:minecraft:poppy>,
    <item:minecraft:blue_orchid>,
    <item:minecraft:allium>,
    <item:minecraft:azure_bluet>,
    <item:minecraft:red_tulip>,
    <item:minecraft:orange_tulip>,
    <item:minecraft:white_tulip>,
    <item:minecraft:pink_tulip>,
    <item:minecraft:oxeye_daisy>,
    <item:minecraft:cornflower>,
    <item:minecraft:lily_of_the_valley>,
    <item:minecraft:lilac>,
    <item:minecraft:brown_mushroom>,
    <item:minecraft:red_mushroom>,
    <item:minecraft:rose_bush>,
    <item:minecraft:peony>,
    <item:minecraft:sweet_berries>,
    <item:projectbrazier:cauliflower>,
    <item:projectbrazier:orange_flower_barrel>,
    <item:projectbrazier:apple_flower_barrel>,
    <item:projectbrazier:birch_flower_barrel>,
    <item:projectbrazier:oak_flower_barrel>,
    <item:projectbrazier:acacia_flower_barrel>,
    <item:projectbrazier:jungle_flower_barrel>,
    <item:projectbrazier:dark_oak_flower_barrel>,
    <item:projectbrazier:spruce_flower_barrel>,
    <item:projectbrazier:orange_flower_bucket>,
    <item:projectbrazier:apple_flower_bucket>,
    <item:projectbrazier:birch_flower_bucket>,
    <item:projectbrazier:oak_flower_bucket>,
    <item:projectbrazier:acacia_flower_bucket>,
    <item:projectbrazier:jungle_flower_bucket>,
    <item:projectbrazier:dark_oak_flower_bucket>,
    <item:projectbrazier:spruce_flower_bucket>,
    <item:supplementaries:wild_flax>,
    <item:supplementaries:flower_box>,
    <item:minecraft:cactus>,
    <item:minecraft:sunflower>,
    <item:minecraft:flower_pot>,
    <item:alexsmobs:acacia_blossom>,
    <item:minecraft:fern>,
    <item:minecraft:dead_bush>,
    <item:alexsmobs:acacia_blossom>,
    <item:minecraft:wither_rose>,
    <item:minecraft:dirt_path>,
    <item:minecraft:bee_nest>,
    <item:minecraft:beehive>,
    <item:minecraft:honeycomb_block>,
    <item:minecraft:honey_bottle>,
    <item:minecraft:honey_block>,
    <item:minecraft:saddle>,
    <item:minecraft:melon>,
    <item:minecraft:hay_block>,
    <item:minecraft:cocoa_beans>,
    <item:supplementaries:fodder>,
    <item:minecraft:pumpkin>,
    <item:minecraft:carved_pumpkin>,
    <item:minecraft:jack_o_lantern>,
    <item:minecraft:melon_slice>,
    <item:minecraft:sugar_cane>,
    <item:minecraft:sugar>,
    <item:supplementaries:sugar_cube>,
    <item:mowziesmobs:thatch_block>
];

var modList as string [] = [
    "flowerseeds"
];

for item in listItem {
    setStagedItem("farming", item);
}

for mod in modList {
    setStagedMod("farming", mod);
}
