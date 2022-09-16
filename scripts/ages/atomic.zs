import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:purpur_block>,
    <item:minecraft:purpur_pillar>,
    <item:minecraft:purpur_stairs>,
    <item:minecraft:end_stone>,
    <item:minecraft:end_stone_bricks>,
    <item:minecraft:end_stone_brick_stairs>,
    <item:minecraft:chorus_plant>,
    <item:minecraft:chorus_flower>,
    <item:minecraft:dragon_head>,
    <item:minecraft:end_crystal>,
    <item:minecraft:beacon>,
    <item:minecraft:chorus_fruit>,
    <item:minecraft:popped_chorus_fruit>,
    <item:minecraft:shulker_shell>,
    <item:alexsmobs:void_worm_beak>,
    <item:alexsmobs:void_worm_effigy>,
    <item:mcwwindows:end_brick_gothic>,
    <item:mcwwindows:ender_brick_arrow_slit>,
    <item:supplementaries:end_stone_lamp>,
    <item:alexsmobs:void_worm_mandible>,
    <item:alexsmobs:void_worm_eye>,
    <item:silentgear:azure_silver_ore>,
    <item:silentgear:crushed_shulker_shell>,
    <item:sophisticatedstorage:shulker_box>,
    <item:sophisticatedstorage:iron_shulker_box>,
    <item:sophisticatedstorage:gold_shulker_box>,
    <item:sophisticatedstorage:diamond_shulker_box>,
    <item:sophisticatedstorage:netherite_shulker_box>,
    <item:minecraft:end_rod>,
    <item:mcwfences:modern_end_brick_wall>,
    <item:mcwfences:railing_end_brick_wall>,
    <item:mcwfences:end_brick_railing_gate>,
    <item:natprog:cobbled_end_stone>,
    <item:minecraft:end_portal_frame>,
    <item:alcocraft:spruce_mug_chorus_ale>,
    <item:alcocraft:spruce_mug_nether_star_lager>,
    <item:minecraft:elytra>
];

var listTag as MCTag [] = [
    <tag:items:forge:shulker_boxes>
];

var modList as string [] = [
    "endrem"
];

for item in listItem {
    setStagedItem("atomic_age", item);
}

for tag in listTag {
    setStagedTag("atomic_age", tag);
}

for mod in modList {
    setStagedMod("atomic_age", mod);
}