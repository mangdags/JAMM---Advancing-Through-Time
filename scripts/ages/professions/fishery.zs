import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:dead_tube_coral_block>,
    <item:minecraft:dead_brain_coral_block>,
    <item:minecraft:dead_bubble_coral_block>,
    <item:minecraft:dead_fire_coral_block>,
    <item:minecraft:dead_horn_coral_block>,
    <item:minecraft:tube_coral_block>,
    <item:minecraft:brain_coral_block>,
    <item:minecraft:bubble_coral_block>,
    <item:minecraft:fire_coral_block>,
    <item:minecraft:horn_coral_block>,
    <item:minecraft:tube_coral>,
    <item:minecraft:brain_coral>,
    <item:minecraft:bubble_coral>,
    <item:minecraft:fire_coral>,
    <item:minecraft:horn_coral>,
    <item:minecraft:dead_brain_coral>,
    <item:minecraft:dead_bubble_coral>,
    <item:minecraft:dead_fire_coral>,
    <item:minecraft:dead_horn_coral>,
    <item:minecraft:dead_tube_coral>,
    <item:minecraft:tube_coral_fan>,
    <item:minecraft:brain_coral_fan>,
    <item:minecraft:bubble_coral_fan>,
    <item:minecraft:fire_coral_fan>,
    <item:minecraft:horn_coral_fan>,
    <item:minecraft:dead_tube_coral_fan>,
    <item:minecraft:dead_brain_coral_fan>,
    <item:minecraft:dead_bubble_coral_fan>,
    <item:minecraft:dead_fire_coral_fan>,
    <item:minecraft:dead_horn_coral_fan>,
    <item:alexsmobs:flying_fish_bucket>,
    <item:alexsmobs:flying_fish_boots>,
    <item:alexsmobs:flying_fish>,
    <item:alexsmobs:large_catfish_bucket>,
    <item:alexsmobs:medium_catfish_bucket>,
    <item:alexsmobs:pupfish_locator>,
    <item:alexsmobs:devils_hole_pupfish_bucket>,
    <item:alexsmobs:fish_oil>,
    <item:alexsmobs:blobfish_bucket>,
    <item:minecraft:seagrass>,
    <item:minecraft:sea_pickle>,
    <item:minecraft:heart_of_the_sea>,
    <item:minecraft:sea_lantern>,
    <item:minecraft:dried_kelp>,
    <item:minecraft:dried_kelp_block>,
    <item:minecraft:conduit>,
    <item:minecraft:nautilus_shell>,
    <item:minecraft:prismarine_shard>,
    <item:minecraft:prismarine_crystals>,
    <item:minecraft:kelp>,
    <item:minecraft:pufferfish>,
    <item:minecraft:ink_sac>,
    <item:minecraft:glow_ink_sac>
];

var listTag as MCTag [] = [
    <tag:items:minecraft:boats>
];

for item in listItem {
    setStagedItem("fishery", item);
}

for tag in listTag {
    setStagedTag("fishery", tag);
}