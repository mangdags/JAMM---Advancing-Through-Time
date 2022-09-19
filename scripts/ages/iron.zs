import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

#priority 98

var listItem as IItemStack [] = [
    <item:immersiveengineering:chute_iron>,
    <item:immersiveengineering:component_iron>,
    <item:immersiveengineering:drillhead_iron>,
    <item:immersiveengineering:dust_iron>,
    <item:immersiveengineering:plate_iron>,
    <item:immersiveengineering:stick_iron>,
    <item:immersiveposts:fence_iron>,
    <item:minecraft:deepslate_iron_ore>,
    <item:minecraft:iron_axe>,
    <item:minecraft:iron_bars>,
    <item:minecraft:iron_block>,
    <item:minecraft:iron_boots>,
    <item:minecraft:iron_chestplate>,
    <item:minecraft:iron_door>,
    <item:minecraft:iron_helmet>,
    <item:minecraft:iron_hoe>,
    <item:minecraft:iron_horse_armor>,
    <item:minecraft:iron_ingot>,
    <item:minecraft:iron_leggings>,
    <item:minecraft:iron_nugget>,
    <item:minecraft:iron_ore>,
    <item:minecraft:iron_pickaxe>,
    <item:minecraft:iron_shovel>,
    <item:minecraft:iron_sword>,
    <item:minecraft:iron_trapdoor>,
    <item:minecraft:raw_iron>,
    <item:minecraft:raw_iron_block>,
    <item:minecraft:flint_and_steel>,
    <item:minecraft:bucket>,
    <item:minecraft:shield>,
    <item:minecraft:name_tag>,
    <item:minecraft:cauldron>,
    <item:minecraft:shears>,
    <item:minecraft:compass>,
    <item:minecraft:water_bucket>,
    <item:minecraft:lava_bucket>,
    <item:minecraft:powder_snow_bucket>,
    <item:minecraft:milk_bucket>,
    <item:minecraft:pufferfish_bucket>,
    <item:minecraft:salmon_bucket>,
    <item:minecraft:cod_bucket>,
    <item:minecraft:tropical_fish_bucket>,
    <item:minecraft:axolotl_bucket>,
    <item:minecraft:tripwire_hook>,
    <item:minecraft:blast_furnace>,
    <item:minecraft:stonecutter>,
    <item:minecraft:lantern>,
    <item:minecraft:soul_lantern>,
    <item:minecraft:piston>,
    <item:minecraft:sticky_piston>,
    <item:minecraft:hopper>,
    <item:minecraft:heavy_weighted_pressure_plate>,
    <item:minecraft:chain>,
    <item:minecraft:trapped_chest>,
    <item:minecraft:chest_minecart>,
    <item:minecraft:smithing_table>,
    <item:minecraft:rail>,
    <item:minecraft:activator_rail>,
    <item:minecraft:detector_rail>,
    <item:minecraft:minecart>,
    <item:minecraft:furnace_minecart>,
    <item:minecraft:tnt_minecart>,
    <item:minecraft:hopper_minecart>,
    <item:minecraft:crossbow>,
    <item:theoneprobe:iron_helmet_probe>,
    <item:natprog:improved_saw>,
    <item:sophisticatedstorage:iron_barrel>,
    <item:sophisticatedstorage:iron_chest>,
    <item:sophisticatedbackpacks:iron_backpack>,
    <item:valhelsia_structures:metal_framed_glass_pane>,
    <item:ftbic:iron_furnace>,
    <item:parrying:iron_mace>,
    <item:parrying:iron_hammer>,
    <item:parrying:iron_dagger>,
    <item:parrying:iron_spear>,
    <item:jousting:lance_iron>,
    <item:ftbic:bronze_gear>,
    <item:valhelsia_structures:brazier>,
    <item:mcwbridges:most1>,
    <item:mcwbridges:iron_bridge_pier>,
    <item:mcwbridges:iron_bridge_stair>,
    <item:projectbrazier:nail>,
    <item:projectbrazier:iron_brazier>,
    <item:projectbrazier:iron_fire_bowl>,
    <item:supplementaries:iron_gate>,
    <item:silentgear:crude_repair_kit>,
    <item:minecraft:anvil>,
    <item:minecraft:redstone_ore>,
    <item:minecraft:deepslate_redstone_ore>,
    <item:minecraft:redstone>,
    <item:minecraft:redstone_torch>,
    <item:minecraft:redstone_block>,
    <item:minecraft:redstone_lamp>,
    <item:supplementaries:redstone_illuminator>,
    <item:minecraft:redstone>,
    <item:alcocraft:spruce_mug_magnet_pilsner>,
    <item:minecraft:obsidian>,
    <item:minecraft:crying_obsidian>,
    <item:projectbrazier:gold_spyglass>,
    <item:supplementaries:hourglass>,
    <item:minecraft:clock>,
    <item:minecraft:enchanting_table>,
    <item:sophisticatedstorage:pickup_upgrade>,
    <item:sophisticatedstorage:upgrade_base>,
    <item:sophisticatedstorage:stack_upgrade_tier_1>,
    <item:sophisticatedstorage:stonecutter_upgrade>,
    <item:sophisticatedstorage:stack_upgrade_tier_2>,
    <item:sophisticatedstorage:stack_upgrade_tier_3>,
    <item:sophisticatedstorage:jukebox_upgrade>,
    <item:sophisticatedstorage:basic_to_iron_tier_upgrade>,
    <item:sophisticatedstorage:iron_to_gold_tier_upgrade>,
    <item:sophisticatedstorage:basic_tier_upgrade>,
    <item:sophisticatedstorage:magnet_upgrade>,
    <item:sophisticatedstorage:filter_upgrade>,
    <item:sophisticatedstorage:advanced_filter_upgrade>,
    <item:sophisticatedstorage:compacting_upgrade>,
    <item:sophisticatedstorage:void_upgrade>,
    <item:sophisticatedstorage:smelting_upgrade>,
    <item:sophisticatedstorage:smoking_upgrade>,
    <item:sophisticatedstorage:blasting_upgrade>,
    <item:sophisticatedstorage:auto_blasting_upgrade>,
    <item:sophisticatedstorage:crafting_upgrade>,
    <item:sophisticatedstorage:stonecutter_upgrade>,
    <item:sophisticatedstorage:feeding_upgrade>,
    <item:farmersdelight:golden_knife>,
    <item:supplementaries:trapped_present_white>,
    <item:supplementaries:trapped_present_orange>,
    <item:supplementaries:trapped_present_magenta>,
    <item:supplementaries:trapped_present_light_blue>,
    <item:supplementaries:trapped_present_yellow>,
    <item:supplementaries:trapped_present_lime>,
    <item:supplementaries:trapped_present_pink>,
    <item:supplementaries:trapped_present_gray>,
    <item:supplementaries:trapped_present_light_gray>,
    <item:supplementaries:trapped_present_cyan>,
    <item:supplementaries:trapped_present_purple>,
    <item:supplementaries:trapped_present_blue>,
    <item:supplementaries:trapped_present_brown>,
    <item:supplementaries:trapped_present_green>,
    <item:supplementaries:trapped_present_red>,
    <item:supplementaries:trapped_present_black>,
    <item:supplementaries:trapped_present>,
    <item:supplementaries:cage>,
    <item:supplementaries:spring_launcher>,
    <item:supplementaries:soap>,
    <item:supplementaries:bubble_blower>,
    <item:minecraft:observer>,
    <item:minecraft:dispenser>,
    <item:minecraft:dropper>,
    <item:minecraft:target>,
    <item:minecraft:daylight_detector>,
    <item:alexsmobs:echolocator>,
    <item:alexsmobs:endolocator>,
    <item:alexsmobs:frilled_shark_bucket>,
    <item:alexsmobs:mimic_octopus_bucket>,
    <item:alexsmobs:comb_jelly_bucket>,
    <item:alexsmobs:terrapin_bucket>,
    <item:alexsmobs:small_catfish_bucket>,
    <item:alexsmobs:squid_grapple>,
    <item:supplementaries:clock_block>,
    <item:supplementaries:pulley_block>,
    <item:supplementaries:wind_vane>,
    <item:supplementaries:faucet>,
    <item:supplementaries:dispenser_minecart>,
    <item:supplementaries:bomb>,
    <item:toms_storage:ts.paint_kit>,
    <item:valhelsia_structures:special_spawner>,
    <item:minecraft:chipped_anvil>,
    <item:minecraft:damaged_anvil>,
    <item:minecraft:ender_chest>,
    <item:fusion:fusion_furnace>,
    <item:sophisticatedstorage:storage_tool>,
    <item:silentgear:mod_kit>,
    <item:toms_storage:ts.level_emitter>,
    <item:toms_storage:ts.inventory_hopper_basic>,
    <item:toms_storage:ts.paint_kit>,
    <item:projectbrazier:empty_candle_holder>,
    <item:projectbrazier:empty_wall_candle_holder>,
    <item:projectbrazier:empty_wall_torch_holder>,
    <item:projectbrazier:jail_lattice>,
    <item:toolleveling:tool_leveling_table>,
    <item:supplementaries:jar>,
    <item:minecraft:chainmail_helmet>,
    <item:minecraft:chainmail_chestplate>,
    <item:minecraft:chainmail_leggings>,
    <item:minecraft:chainmail_boots>,
    <item:supplementaries:soap_block>,
    <item:minecraft:lever>,
    <item:minecraft:lectern>,
    <item:minecraft:glass_bottle>,
    <item:supplementaries:goblet>,
    <item:supplementaries:lock_block>,
    <item:supplementaries:turn_table>,
    <item:supplementaries:sconce>,
    <item:supplementaries:sconce_soul>,
    <item:supplementaries:sconce_lever>,
    <item:supplementaries:crank>,
    <item:minecraft:bell>,
    <item:minecraft:fermented_spider_eye>,
    <item:minecraft:map>,
    <item:mcwdoors:metal_door>,
    <item:mcwdoors:metal_warning_door>,
    <item:mcwdoors:metal_hospital_door>,
    <item:mcwdoors:metal_reinforced_door>,
    <item:mcwdoors:metal_windowed_door>,
    <item:mcwdoors:jail_door>,
    <item:mcwdoors:garage_white_door>,
    <item:mcwdoors:garage_silver_door>,
    <item:mcwdoors:garage_gray_door>,
    <item:mcwdoors:garage_black_door>,
    <item:mcwtrpdoors:metal_full_trapdoor>,
    <item:mcwtrpdoors:metal_warning_trapdoor>,
    <item:create:ornate_iron_window>,
    <item:minecraft:bookshelf>
    ];

var listTag as MCTag [] = [
    <tag:items:forge:ingots/iron>,
    <tag:items:forge:rods/iron>,
    <tag:items:forge:glass>,
    <tag:items:forge:glass_panes>,
    <tag:items:forge:books>
];

var listMod as string [] = [
    "myrtrees"
];

var exceptItem as IItemStack [] = [
    <item:sophisticatedbackpacks:diamond_backpack>,
    <item:sophisticatedbackpacks:netherite_backpack>,
    <item:immersiveengineering:stick_iron>,
    <item:ftbic:iron_rod>,
    <item:silentgear:iron_rod>,
    <item:minecraft:black_stained_glass_pane>,
    <item:minecraft:red_stained_glass_pane>,
    <item:minecraft:green_stained_glass_pane>,
    <item:minecraft:brown_stained_glass_pane>,
    <item:minecraft:blue_stained_glass_pane>,
    <item:minecraft:purple_stained_glass_pane>,
    <item:minecraft:cyan_stained_glass_pane>,
    <item:minecraft:light_gray_stained_glass_pane>,
    <item:minecraft:gray_stained_glass_pane>,
    <item:minecraft:pink_stained_glass_pane>,
    <item:minecraft:lime_stained_glass_pane>,
    <item:minecraft:yellow_stained_glass_pane>,
    <item:create:crimson_window_pane>,
    <item:create:warped_window_pane>,
    <item:createaddition:iron_rod>,
    <item:myrtrees:rubberwood_leaves>,
    <item:myrtrees:rubberwood_sapling>
];

for item in listItem {
    setStagedItem("iron_age", item);
}

for tag in listTag {
    setStagedTag("iron_age", tag); 
}

for mod in listMod {
    setStagedMod("iron_age", mod);
}

for item in exceptItem {
    removeStagedItem(item);
}