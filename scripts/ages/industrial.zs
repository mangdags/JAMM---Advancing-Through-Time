import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:glowstone>,
    <item:minecraft:glowstone_dust>,
    <item:minecraft:nether_quartz_ore>,
    <item:minecraft:ancient_debris>,
    <item:minecraft:repeater>,
    <item:minecraft:comparator>,
    <item:minecraft:blaze_powder>,
    <item:minecraft:blaze_rod>,
    <item:minecraft:magma_cream>,
    <item:minecraft:ghast_tear>,
    <item:immersiveengineering:hammer>,
    <item:immersiveengineering:alu_post>,
    <item:immersiveengineering:ingot_aluminum>,
    <item:immersiveengineering:raw_aluminum>,
    <item:immersiveengineering:raw_block_aluminum>,
    <item:immersiveengineering:deepslate_ore_aluminum>,
    <item:immersiveengineering:ore_aluminum>,
    <item:immersiveengineering:alu_scaffolding_standard>,
    <item:immersiveengineering:slab_alu_scaffolding_standard>,
    <item:immersiveengineering:stairs_alu_scaffolding_standard>,
    <item:immersiveengineering:alu_scaffolding_grate_top>,
    <item:immersiveengineering:slab_alu_scaffolding_grate_top>,
    <item:immersiveengineering:stairs_alu_scaffolding_grate_top>,
    <item:immersiveengineering:alu_scaffolding_wooden_top>,
    <item:immersiveengineering:slab_alu_scaffolding_wooden_top>,
    <item:immersiveengineering:stairs_alu_scaffolding_wooden_top>,
    <item:immersiveengineering:stick_aluminum>,
    <item:silentgear:sturdy_repair_kit>,
    <item:minecraft:netherite_block>,
    <item:minecraft:netherite_scrap>,
    <item:minecraft:netherite_sword>,
    <item:minecraft:netherite_shovel>,
    <item:minecraft:netherite_pickaxe>,
    <item:minecraft:netherite_axe>,
    <item:minecraft:netherite_hoe>,
    <item:minecraft:netherite_helmet>,
    <item:minecraft:netherite_chestplate>,
    <item:minecraft:netherite_leggings>,
    <item:minecraft:netherite_boots>,
    <item:natprog:netherite_saw>,
    <item:farmersdelight:netherite_knife>,
    <item:supplementaries:netherite_trapdoor>,
    <item:supplementaries:netherite_door>,
    <item:advancednetherite:netherite_iron_ingot>,
    <item:advancednetherite:netherite_gold_ingot>,
    <item:advancednetherite:netherite_emerald_ingot>,
    <item:advancednetherite:netherite_diamond_ingot>,
    <item:advancednetherite:netherite_iron_helmet>,
    <item:advancednetherite:netherite_iron_chestplate>,
    <item:advancednetherite:netherite_iron_leggings>,
    <item:advancednetherite:netherite_iron_boots>,
    <item:advancednetherite:netherite_gold_helmet>,
    <item:advancednetherite:netherite_gold_chestplate>,
    <item:advancednetherite:netherite_gold_leggings>,
    <item:advancednetherite:netherite_gold_boots>,
    <item:advancednetherite:netherite_emerald_helmet>,
    <item:advancednetherite:netherite_emerald_chestplate>,
    <item:advancednetherite:netherite_emerald_leggings>,
    <item:advancednetherite:netherite_emerald_boots>,
    <item:advancednetherite:netherite_diamond_helmet>,
    <item:advancednetherite:netherite_diamond_chestplate>,
    <item:advancednetherite:netherite_diamond_leggings>,
    <item:advancednetherite:netherite_diamond_boots>,
    <item:advancednetherite:netherite_iron_axe>,
    <item:advancednetherite:netherite_gold_axe>,
    <item:advancednetherite:netherite_emerald_axe>,
    <item:advancednetherite:netherite_diamond_axe>,
    <item:advancednetherite:netherite_iron_hoe>,
    <item:advancednetherite:netherite_gold_hoe>,
    <item:advancednetherite:netherite_emerald_hoe>,
    <item:advancednetherite:netherite_diamond_hoe>,
    <item:advancednetherite:netherite_iron_pickaxe>,
    <item:advancednetherite:netherite_gold_pickaxe>,
    <item:advancednetherite:netherite_emerald_pickaxe>,
    <item:advancednetherite:netherite_diamond_pickaxe>,
    <item:advancednetherite:netherite_iron_shovel>,
    <item:advancednetherite:netherite_gold_shovel>,
    <item:advancednetherite:netherite_emerald_shovel>,
    <item:advancednetherite:netherite_diamond_shovel>,
    <item:advancednetherite:netherite_iron_sword>,
    <item:advancednetherite:netherite_gold_sword>,
    <item:advancednetherite:netherite_emerald_sword>,
    <item:advancednetherite:netherite_diamond_sword>,
    <item:advancednetherite:netherite_iron_block>,
    <item:advancednetherite:netherite_gold_block>,
    <item:advancednetherite:netherite_emerald_block>,
    <item:advancednetherite:netherite_diamond_block>,
    <item:alcocraft:spruce_mug_nether_porter>,
    <item:alcocraft:spruce_mug_wither_stout>,
    <item:minecraft:netherrack>,
    <item:minecraft:nether_bricks>,
    <item:minecraft:cracked_nether_bricks>,
    <item:minecraft:chiseled_nether_bricks>,
    <item:minecraft:nether_brick_stairs>,
    <item:minecraft:nether_wart_block>,
    <item:minecraft:nether_sprouts>,
    <item:minecraft:nether_brick_fence>,
    <item:minecraft:nether_brick_wall>,
    <item:minecraft:nether_brick>,
    <item:natprog:cobbled_netherrack>,
    <item:farmersdelight:nether_salad>,
    <item:mcwdoors:print_nether>,
    <item:mcwfences:modern_nether_brick_wall>,
    <item:mcwfences:railing_nether_brick_wall>,
    <item:mcwfences:nether_brick_railing_gate>,
    <item:mcwwindows:nether_brick_gothic>,
    <item:mcwwindows:nether_brick_arrow_slit>,
    <item:silentgear:netherwood_fence_gate>,
    <item:silentgear:netherwood_leaves>,
    <item:silentgear:netherwood_sapling>,
    <item:silentgear:netherwood_stick>,
    <item:silentgear:nether_banana>,
    <item:silentgear:golden_nether_banana>,
    <item:silentgear:netherwood_charcoal>,
    <item:sophisticatedbackpacks:netherite_backpack>,
    <item:sophisticatedstorage:netherite_barrel>,
    <item:sophisticatedstorage:netherite_chest>,
    <item:sophisticatedstorage:diamond_to_netherite_tier_upgrade>,
    <item:silentgear:netherwood_charcoal_block>,
    <item:silentgear:nether_star_fragment>,
    <item:minecraft:nether_star>,
    <item:silentgear:blaze_gold_dust>,
    <item:silentgear:azure_silver_dust>,
    <item:silentgear:azure_electrum_dust>,
    <item:silentgear:tyrian_steel_dust>,
    <item:silentgear:starmetal_dust>,
    <item:minecraft:respawn_anchor>,
    <item:minecraft:tnt>,
    <item:minecraft:gunpowder>,
    <item:natprog:steel_saw>,
    <item:fusion:steel_ingot>,
    <item:fusion:steel_nugget>,
    <item:fusion:large_steel_chunk>,
    <item:fusion:medium_steel_chunk>,
    <item:fusion:steel_helmet>,
    <item:fusion:steel_leggings>,
    <item:fusion:steel_chestplate>,
    <item:fusion:steel_boots>,
    <item:fusion:steel_sword>,
    <item:fusion:steel_pickaxe>,
    <item:fusion:steel_axe>,
    <item:fusion:steel_shovel>,
    <item:fusion:steel_hoe>,
    <item:fusion:steel_shears>,
    <item:fusion:steel_block>,
    <item:fusion:steel_bricks>,
    <item:fusion:steel_brick_slab>,
    <item:fusion:steel_brick_stairs>,
    <item:fusion:steel_bars>,
    <item:fusion:steel_door>,
    <item:toms_storage:ts.wireless_terminal>
];

var modList as string [] = [
    "locksmith",
    "create",
    "createaddition",
    "refinedstorage",
    "refinedpipes"
];

var exceptItem as IItemStack [] = [
    <item:locksmith:lockpick>,
    <item:bygonenether:gilded_netherite_helmet>,
    <item:bygonenether:gilded_netherite_chestplate>,
    <item:bygonenether:gilded_netherite_leggings>,
    <item:bygonenether:gilded_netherite_boots>,
    <item:create:cut_granite>,
    <item:create:cut_granite_stairs>,
    <item:create:polished_cut_granite>,
    <item:create:polished_cut_granite_stairs>,
    <item:create:cut_granite_bricks>,
    <item:create:cut_granite_brick_stairs>,
    <item:create:small_granite_bricks>,
    <item:create:small_granite_brick_stairs>,
    <item:create:layered_granite>,
    <item:create:granite_pillar>,
    <item:create:cut_diorite>,
    <item:create:cut_diorite_stairs>,
    <item:create:polished_cut_diorite>,
    <item:create:polished_cut_diorite_stairs>,
    <item:create:cut_diorite_bricks>,
    <item:create:cut_diorite_brick_stairs>,
    <item:create:small_diorite_bricks>,
    <item:create:small_diorite_brick_stairs>,
    <item:create:layered_diorite>,
    <item:create:diorite_pillar>,
    <item:create:cut_andesite>,
    <item:create:cut_andesite_stairs>,
    <item:create:polished_cut_andesite>,
    <item:create:polished_cut_andesite_stairs>,
    <item:create:cut_andesite_bricks>,
    <item:create:cut_andesite_brick_stairs>,
    <item:create:small_andesite_bricks>,
    <item:create:small_andesite_brick_stairs>,
    <item:create:layered_andesite>,
    <item:create:andesite_pillar>,
    <item:create:cut_calcite>,
    <item:create:cut_calcite_stairs>,
    <item:create:crimson_window_pane>,
    <item:create:crimson_window>,
    <item:create:warped_window>,
    <item:create:warped_window_pane>,
    <item:create:copper_nugget>,
    <item:create:crushed_iron_ore>,
    <item:create:ornate_iron_window>,
    <item:create:ornate_iron_window_pane>
];

for item in listItem {
    setStagedItem("industrial_age", item);
}

for mod in modList {
    setStagedMod("industrial_age", mod);
}

for item in exceptItem {
    removeStagedItem(item);
}