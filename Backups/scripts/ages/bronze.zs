import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:raw_gold>,
    <item:minecraft:light_weighted_pressure_plate>,
    <item:minecraft:golden_boots>,
    <item:minecraft:golden_helmet>,
    <item:minecraft:golden_sword>,
    <item:minecraft:raw_gold_block>,
    <item:minecraft:golden_horse_armor>,
    <item:minecraft:golden_carrot>,
    <item:minecraft:glistering_melon_slice>,
    <item:minecraft:gold_ore>,
    <item:minecraft:golden_pickaxe>,
    <item:parrying:golden_hammer>,
    <item:minecraft:golden_axe>,
    <item:minecraft:gold_block>,
    <item:minecraft:golden_leggings>,
    <item:minecraft:golden_hoe>,
    <item:minecraft:golden_chestplate>,
    <item:natprog:golden_saw>,
    <item:minecraft:deepslate_gold_ore>,
    <item:parrying:golden_mace>,
    <item:minecraft:gold_nugget>,
    <item:minecraft:gold_ingot>,
    <item:minecraft:golden_apple>,
    <item:minecraft:golden_shovel>,
    <item:parrying:golden_dagger>,
    <item:parrying:gold_spear>,
    <item:parrying:gold_flail>,
    <item:supplementaries:gold_door>,
    <item:sophisticatedbackpacks:gold_backpack>,
    <item:supplementaries:gold_trapdoor>,
    <item:sophisticatedstorage:gold_barrel>,
    <item:sophisticatedstorage:gold_chest>,
    <item:jousting:lance_gold>,
    <item:natprog:bronze_saw>,
    <item:fusion:bronze_ingot>,
    <item:fusion:bronze_helmet>,
    <item:fusion:bronze_leggings>,
    <item:fusion:bronze_chestplate>,
    <item:fusion:bronze_boots>,
    <item:fusion:bronze_sword>,
    <item:fusion:bronze_pickaxe>,
    <item:fusion:bronze_axe>,
    <item:fusion:bronze_shovel>,
    <item:fusion:bronze_hoe>,
    <item:fusion:bronze_shears>,
    <item:fusion:bronze_block>,
    <item:fusion:bronze_bricks>,
    <item:fusion:bronze_brick_slab>,
    <item:fusion:bronze_brick_stairs>,
    <item:fusion:bronze_bars>,
    <item:fusion:bronze_door>,
    <item:fusion:bronze_nugget>,
    <item:fusion:large_bronze_chunk>,
    <item:fusion:medium_bronze_chunk>,
    <item:supplementaries:key>,
    <item:toms_storage:ts.storage_terminal>,
    <item:toms_storage:ts.open_crate>,
    <item:toms_storage:ts.trim>,
    <item:toms_storage:ts.inventory_cable>,
    <item:toms_storage:ts.inventory_cable_framed>,
    <item:toms_storage:ts.inventory_cable_connector>,
    <item:toms_storage:ts.inventory_cable_connector_filtered>,
    <item:toms_storage:ts.inventory_proxy>,
    <item:toms_storage:ts.crafting_terminal>,
    <item:toms_storage:ts.inventory_cable_connector_framed>,
    <item:toms_storage:ts.inventory_connector>,
    <item:mekanism:ingot_bronze>,
    <item:mekanism:nugget_bronze>,
    <item:mekanism:block_bronze>,
    <item:mekanism:ingot_tin>,
    <item:mekanism:raw_tin>,
    <item:mekanism:nugget_tin>,
    <item:mekanism:block_tin>,
    <item:mekanism:block_raw_tin>,
    <item:mekanism:tin_ore>,
    <item:mekanism:deepslate_tin_ore>
];

var exceptItem as IItemStack [] = [
    <item:sophisticatedbackpacks:iron_backpack>,
    <item:sophisticatedbackpacks:diamond_backpack>,
    <item:sophisticatedbackpacks:netherite_backpack>
];

for item in listItem {
    setStagedItem("bronze_age", item);
}

for item in exceptItem {
    removeStagedItem(item);
}