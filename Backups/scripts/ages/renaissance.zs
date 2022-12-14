import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:bricks>,
    <item:minecraft:brick>,
    <item:minecraft:diamond_ore>,
    <item:minecraft:diamond>,
    <item:minecraft:diamond_block>,
    <item:minecraft:emerald>,
    <item:minecraft:emerald_ore>,
    <item:minecraft:deepslate_emerald_ore>,
    <item:minecraft:emerald_block>,
    <item:sophisticatedbackpacks:diamond_backpack>,
    <item:sophisticatedstorage:diamond_barrel>,
    <item:sophisticatedstorage:diamond_chest>,
    <item:minecraft:deepslate_diamond_ore>,
    <item:farmersdelight:diamond_knife>,
    <item:minecraft:diamond_sword>,
    <item:minecraft:diamond_shovel>,
    <item:minecraft:diamond_pickaxe>,
    <item:minecraft:diamond_axe>,
    <item:minecraft:diamond_hoe>,
    <item:minecraft:diamond_helmet>,
    <item:minecraft:diamond_chestplate>,
    <item:minecraft:diamond_leggings>,
    <item:minecraft:diamond_boots>,
    <item:minecraft:diamond_horse_armor>,
    <item:natprog:diamond_saw>,
    <item:parrying:diamond_mace>,
    <item:parrying:diamond_hammer>,
    <item:parrying:diamond_dagger>,
    <item:parrying:diamond_flail>,
    <item:parrying:diamond_spear>,
    <item:parrying:scoped_crossbow>,
    <item:jousting:lance_diamond>,
    <item:jousting:lance_emerald>,
    <item:minecraft:crimson_planks>,
    <item:minecraft:warped_planks>,
    <item:minecraft:crimson_slab>,
    <item:minecraft:warped_slab>,
    <item:minecraft:crimson_stem>,
    <item:minecraft:warped_stem>,
    <item:minecraft:crimson_nylium>,
    <item:minecraft:crimson_fungus>,
    <item:minecraft:crimson_roots>,
    <item:minecraft:crimson_sign>,
    <item:minecraft:crimson_door>,
    <item:minecraft:crimson_trapdoor>,
    <item:minecraft:crimson_fence_gate>,
    <item:mcwroofs:crimson_roof>,
    <item:mcwroofs:crimson_attic_roof>,
    <item:mcwroofs:crimson_top_roof>,
    <item:mcwroofs:crimson_lower_roof>,
    <item:mcwroofs:crimson_steep_roof>,
    <item:mcwroofs:crimson_upper_lower_roof>,
    <item:mcwroofs:crimson_upper_steep_roof>,
    <item:mcwroofs:crimson_planks_roof>,
    <item:mcwroofs:crimson_planks_attic_roof>,
    <item:mcwroofs:crimson_planks_top_roof>,
    <item:mcwroofs:crimson_planks_lower_roof>,
    <item:mcwroofs:crimson_planks_steep_roof>,
    <item:mcwroofs:crimson_planks_upper_lower_roof>,
    <item:mcwroofs:crimson_planks_upper_steep_roof>,
    <item:mcwwindows:crimson_stem_window>,
    <item:mcwwindows:crimson_stem_window2>,
    <item:mcwwindows:stripped_crimson_stem_window>,
    <item:mcwwindows:stripped_crimson_stem_window2>,
    <item:mcwwindows:crimson_planks_window>,
    <item:mcwwindows:crimson_planks_window>,
    <item:mcwwindows:crimson_stem_parapet>,
    <item:mcwwindows:crimson_plank_parapet>,
    <item:mcwwindows:crimson_blinds>,
    <item:cfm:crimson_table>,
    <item:cfm:stripped_crimson_table>,
    <item:cfm:crimson_chair>,
    <item:cfm:stripped_crimson_chair>,
    <item:cfm:crimson_coffee_table>,
    <item:alexsmobs:mosquito_proboscis>,
    <item:alexsmobs:mosquito_larva>,
    <item:farmersdelight:crimson_cabinet>,
    <item:mcwbridges:crimson_log_bridge_middle>,
    <item:mcwbridges:rope_crimson_bridge>,
    <item:mcwbridges:crimson_rail_bridge>,
    <item:mcwbridges:crimson_bridge_pier>,
    <item:mcwbridges:crimson_log_bridge_stair>,
    <item:mcwbridges:crimson_rope_bridge_stair>,
    <item:mcwfences:crimson_picket_fence>,
    <item:mcwfences:crimson_stockade_fence>,
    <item:mcwfences:crimson_horse_fence>,
    <item:mcwfences:crimson_wired_fence>,
    <item:mcwfences:crimson_highley_gate>,
    <item:mcwfences:crimson_pyramid_gate>,
    <item:cfm:stripped_crimson_coffee_table>,
    <item:cfm:crimson_cabinet>,
    <item:cfm:stripped_crimson_cabinet>,
    <item:cfm:crimson_bedside_cabinet>,
    <item:cfm:stripped_crimson_bedside_cabinet>,
    <item:cfm:crimson_desk>,
    <item:cfm:stripped_crimson_desk>,
    <item:cfm:crimson_desk_cabinet>,
    <item:cfm:stripped_crimson_desk_cabinet>,
    <item:cfm:crimson_blinds>,
    <item:cfm:stripped_crimson_blinds>,
    <item:cfm:crimson_upgraded_fence>,
    <item:cfm:stripped_crimson_upgraded_fence>,
    <item:cfm:crimson_upgraded_gate>,
    <item:cfm:stripped_crimson_upgraded_gate>,
    <item:cfm:crimson_crate>,
    <item:cfm:stripped_crimson_crate>,
    <item:cfm:crimson_park_bench>,
    <item:cfm:stripped_crimson_park_bench>,
    <item:cfm:crimson_mail_box>,
    <item:cfm:stripped_crimson_mail_box>,
    <item:cfm:crimson_kitchen_counter>,
    <item:cfm:stripped_crimson_kitchen_counter>,
    <item:cfm:crimson_kitchen_drawer>,
    <item:cfm:stripped_crimson_kitchen_drawer>,
    <item:cfm:crimson_kitchen_sink_light>,
    <item:cfm:stripped_crimson_kitchen_sink_light>,
    <item:cfm:crimson_kitchen_sink_dark>,
    <item:cfm:stripped_crimson_kitchen_sink_dark>,
    <item:projectbrazier:crimson_open_barrel>,
    <item:projectbrazier:crimson_closed_barrel>,
    <item:projectbrazier:crimson_flower_barrel>,
    <item:projectbrazier:crimson_flower_bucket>,
    <item:projectbrazier:crimson_plank_chair>,
    <item:projectbrazier:crimson_solid_chair>,
    <item:projectbrazier:crimson_stool>,
    <item:projectbrazier:crimson_armrest_chair>,
    <item:projectbrazier:crimson_firewood>,
    <item:projectbrazier:crimson_bench>,
    <item:projectbrazier:crimson_log_chair>,
    <item:projectbrazier:crimson_log_bench>,
    <item:projectbrazier:stripped_crimson_log_chair>,
    <item:projectbrazier:stripped_crimson_log_bench>,
    <item:projectbrazier:hollow_crimson_log>,
    <item:projectbrazier:stripped_hollow_crimson_log>,
    <item:projectbrazier:solid_crimson_table>,
    <item:projectbrazier:crimson_zipline_anchor>,
    <item:projectbrazier:crimson_cross_lattice>,
    <item:projectbrazier:crimson_dense_vertical_lattice>,
    <item:projectbrazier:crimson_diamond_lattice>,
    <item:projectbrazier:crimson_grid_lattice>,
    <item:projectbrazier:crimson_vertical_lattice>,
    <item:projectbrazier:white_polstered_crimson_bench>,
    <item:projectbrazier:orange_polstered_crimson_bench>,
    <item:projectbrazier:magenta_polstered_crimson_bench>,
    <item:projectbrazier:light_blue_polstered_crimson_bench>,
    <item:projectbrazier:yellow_polstered_crimson_bench>,
    <item:projectbrazier:lime_polstered_crimson_bench>,
    <item:projectbrazier:pink_polstered_crimson_bench>,
    <item:projectbrazier:gray_polstered_crimson_bench>,
    <item:projectbrazier:light_gray_polstered_crimson_bench>,
    <item:projectbrazier:cyan_polstered_crimson_bench>,
    <item:projectbrazier:purple_polstered_crimson_bench>,
    <item:projectbrazier:blue_polstered_crimson_bench>,
    <item:projectbrazier:brown_polstered_crimson_bench>,
    <item:projectbrazier:green_polstered_crimson_bench>,
    <item:projectbrazier:red_polstered_crimson_bench>,
    <item:projectbrazier:black_polstered_crimson_bench>,
    <item:projectbrazier:crimson_platform>,
    <item:sereneseasons:season_sensor>,
    <item:supplementaries:crimson_lantern>,
    <item:valhelsia_structures:crimson_post>,
    <item:valhelsia_structures:cut_crimson_post>,
    <item:minecraft:warped_nylium>,
    <item:minecraft:warped_wart_block>,
    <item:minecraft:warped_fungus>,
    <item:minecraft:warped_roots>,
    <item:minecraft:warped_sign>,
    <item:minecraft:warped_door>,
    <item:minecraft:warped_trapdoor>,
    <item:minecraft:warped_fence_gate>,
    <item:minecraft:warped_fungus_on_a_stick>,
    <item:alexsmobs:warped_muscle>,
    <item:alexsmobs:warped_mixture>,
    <item:farmersdelight:warped_cabinet>,
    <item:mcwbridges:warped_log_bridge_middle>,
    <item:mcwbridges:rope_warped_bridge>,
    <item:mcwbridges:warped_rail_bridge>,
    <item:mcwbridges:warped_bridge_pier>,
    <item:mcwbridges:warped_log_bridge_stair>,
    <item:mcwbridges:warped_rope_bridge_stair>,
    <item:mcwfences:warped_picket_fence>,
    <item:mcwfences:warped_stockade_fence>,
    <item:mcwfences:warped_horse_fence>,
    <item:mcwfences:warped_wired_fence>,
    <item:mcwfences:warped_highley_gate>,
    <item:mcwfences:warped_pyramid_gate>,
    <item:mcwroofs:warped_roof>,
    <item:mcwroofs:warped_attic_roof>,
    <item:mcwroofs:warped_top_roof>,
    <item:mcwroofs:warped_lower_roof>,
    <item:mcwroofs:warped_steep_roof>,
    <item:mcwroofs:warped_upper_lower_roof>,
    <item:mcwroofs:warped_upper_steep_roof>,
    <item:mcwroofs:warped_planks_roof>,
    <item:mcwroofs:warped_planks_attic_roof>,
    <item:mcwroofs:warped_planks_top_roof>,
    <item:mcwroofs:warped_planks_lower_roof>,
    <item:mcwroofs:warped_planks_steep_roof>,
    <item:mcwroofs:warped_planks_upper_lower_roof>,
    <item:mcwroofs:warped_planks_upper_steep_roof>,
    <item:mcwwindows:warped_stem_window>,
    <item:mcwwindows:warped_stem_window2>,
    <item:mcwwindows:stripped_warped_stem_window>,
    <item:mcwwindows:stripped_warped_stem_window2>,
    <item:mcwwindows:warped_planks_window>,
    <item:mcwwindows:warped_planks_window2>,
    <item:mcwwindows:warped_stem_parapet>,
    <item:mcwwindows:warped_plank_parapet>,
    <item:mcwwindows:warped_blinds>,
    <item:cfm:warped_table>,
    <item:cfm:stripped_warped_table>,
    <item:cfm:warped_chair>,
    <item:cfm:stripped_warped_chair>,
    <item:cfm:warped_coffee_table>,
    <item:cfm:stripped_warped_coffee_table>,
    <item:cfm:warped_cabinet>,
    <item:cfm:stripped_warped_cabinet>,
    <item:cfm:warped_bedside_cabinet>,
    <item:cfm:stripped_warped_bedside_cabinet>,
    <item:cfm:warped_desk>,
    <item:cfm:stripped_warped_desk>,
    <item:cfm:warped_desk_cabinet>,
    <item:cfm:stripped_warped_desk_cabinet>,
    <item:cfm:warped_blinds>,
    <item:cfm:stripped_warped_blinds>,
    <item:cfm:warped_upgraded_fence>,
    <item:cfm:stripped_warped_upgraded_fence>,
    <item:cfm:warped_upgraded_gate>,
    <item:cfm:stripped_warped_upgraded_gate>,
    <item:cfm:warped_crate>,
    <item:cfm:stripped_warped_crate>,
    <item:cfm:warped_park_bench>,
    <item:cfm:stripped_warped_park_bench>,
    <item:cfm:warped_mail_box>,
    <item:cfm:stripped_warped_mail_box>,
    <item:cfm:warped_kitchen_counter>,
    <item:cfm:stripped_warped_kitchen_counter>,
    <item:cfm:warped_kitchen_drawer>,
    <item:cfm:stripped_warped_kitchen_drawer>,
    <item:cfm:warped_kitchen_sink_light>,
    <item:cfm:stripped_warped_kitchen_sink_light>,
    <item:cfm:warped_kitchen_sink_dark>,
    <item:cfm:stripped_warped_kitchen_sink_dark>,
    <item:projectbrazier:warped_open_barrel>,
    <item:projectbrazier:warped_closed_barrel>,
    <item:projectbrazier:warped_flower_barrel>,
    <item:projectbrazier:warped_flower_bucket>,
    <item:projectbrazier:warped_plank_chair>,
    <item:projectbrazier:warped_solid_chair>,
    <item:projectbrazier:warped_stool>,
    <item:projectbrazier:warped_armrest_chair>,
    <item:projectbrazier:warped_firewood>,
    <item:projectbrazier:warped_bench>,
    <item:projectbrazier:warped_log_chair>,
    <item:projectbrazier:warped_log_bench>,
    <item:projectbrazier:stripped_warped_log_chair>,
    <item:projectbrazier:stripped_warped_log_bench>,
    <item:projectbrazier:hollow_warped_log>,
    <item:projectbrazier:stripped_hollow_warped_log>,
    <item:projectbrazier:solid_warped_table>,
    <item:projectbrazier:warped_zipline_anchor>,
    <item:projectbrazier:warped_cross_lattice>,
    <item:projectbrazier:warped_dense_vertical_lattice>,
    <item:projectbrazier:warped_diamond_lattice>,
    <item:projectbrazier:warped_grid_lattice>,
    <item:projectbrazier:warped_vertical_lattice>,
    <item:projectbrazier:white_polstered_warped_bench>,
    <item:projectbrazier:orange_polstered_warped_bench>,
    <item:projectbrazier:magenta_polstered_warped_bench>,
    <item:projectbrazier:light_blue_polstered_warped_bench>,
    <item:projectbrazier:yellow_polstered_warped_bench>,
    <item:projectbrazier:lime_polstered_warped_bench>,
    <item:projectbrazier:pink_polstered_warped_bench>,
    <item:projectbrazier:gray_polstered_warped_bench>,
    <item:projectbrazier:light_gray_polstered_warped_bench>,
    <item:projectbrazier:cyan_polstered_warped_bench>,
    <item:projectbrazier:purple_polstered_warped_bench>,
    <item:projectbrazier:blue_polstered_warped_bench>,
    <item:projectbrazier:brown_polstered_warped_bench>,
    <item:projectbrazier:green_polstered_warped_bench>,
    <item:projectbrazier:red_polstered_warped_bench>,
    <item:projectbrazier:black_polstered_warped_bench>,
    <item:projectbrazier:warped_platform>,
    <item:valhelsia_structures:warped_post>,
    <item:valhelsia_structures:cut_warped_post>,
    <item:valhelsia_structures:soul_brazier>,
    <item:minecraft:basalt>,
    <item:minecraft:polished_basalt>,
    <item:minecraft:smooth_basalt>,
    <item:minecraft:basalt>,
    <item:minecraft:polished_basalt>,
    <item:minecraft:blackstone>,
    <item:minecraft:blackstone_slab>,
    <item:minecraft:blackstone_stairs>,
    <item:minecraft:polished_blackstone>,
    <item:minecraft:polished_blackstone_slab>,
    <item:minecraft:polished_blackstone_stairs>,
    <item:minecraft:chiseled_polished_blackstone>,
    <item:minecraft:polished_blackstone_bricks>,
    <item:minecraft:polished_blackstone_brick_slab>,
    <item:minecraft:polished_blackstone_brick_stairs>,
    <item:minecraft:cracked_polished_blackstone_bricks>,
    <item:minecraft:blackstone_wall>,
    <item:minecraft:polished_blackstone_wall>,
    <item:minecraft:polished_blackstone_brick_wall>,
    <item:minecraft:polished_blackstone_button>,
    <item:minecraft:polished_blackstone_pressure_plate>,
    <item:mcwbridges:blackstone_bridge>,
    <item:mcwbridges:blackstone_bridge_pier>,
    <item:mcwbridges:blackstone_bridge_stair>,
    <item:mcwfences:modern_blackstone_wall>,
    <item:mcwfences:railing_blackstone_wall>,
    <item:mcwfences:blackstone_railing_gate>,
    <item:mcwfences:blackstone_brick_railing_gate>,
    <item:mcwroofs:blackstone_roof>,
    <item:mcwroofs:blackstone_top_roof>,
    <item:mcwroofs:blackstone_lower_roof>,
    <item:mcwroofs:blackstone_steep_roof>,
    <item:mcwroofs:blackstone_upper_lower_roof>,
    <item:mcwroofs:blackstone_upper_steep_roof>,
    <item:supplementaries:blackstone_tile>,
    <item:supplementaries:blackstone_tile_stairs>,
    <item:supplementaries:blackstone_lamp>,
    <item:minecraft:nether_gold_ore>,
    <item:minecraft:slime_ball>,
    <item:minecraft:slime_block>,
    <item:minecraft:red_nether_brick_stairs>,
    <item:minecraft:red_nether_brick_slab>,
    <item:minecraft:red_nether_bricks>,
    <item:minecraft:red_nether_brick_wall>,
    <item:minecraft:nether_wart>,
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
    <item:minecraft:smooth_quartz>,
    <item:minecraft:chiseled_quartz_block>,
    <item:minecraft:quartz_block>,
    <item:minecraft:quartz_bricks>,
    <item:minecraft:quartz_pillar>,
    <item:minecraft:quartz_stairs>,
    <item:minecraft:smooth_quartz_stairs>,
    <item:minecraft:quartz>,
    <item:mcwfences:modern_quartz_wall>,
    <item:mcwfences:railing_quartz_wall>,
    <item:mcwfences:quartz_railing_gate>,
    <item:refinedstorage:quartz_enriched_iron>,
    <item:refinedstorage:quartz_enriched_iron_block>,
    <item:minecraft:magma_block>,
    <item:farmersdelight:skillet>,
    <item:farmersdelight:stove>,
    <item:farmersdelight:cooking_pot>,
    <item:mcwtrpdoors:metal_trapdoor>,
    <item:mcwwindows:white_mosaic_glass>,
    <item:mcwwindows:orange_mosaic_glass>,
    <item:mcwwindows:magenta_mosaic_glass>,
    <item:mcwwindows:light_blue_mosaic_glass>,
    <item:mcwwindows:yellow_mosaic_glass>,
    <item:mcwwindows:lime_mosaic_glass>,
    <item:mcwwindows:pink_mosaic_glass>,
    <item:mcwwindows:gray_mosaic_glass>,
    <item:mcwwindows:light_gray_mosaic_glass>,
    <item:mcwwindows:cyan_mosaic_glass>,
    <item:mcwwindows:purple_mosaic_glass>,
    <item:mcwwindows:blue_mosaic_glass>,
    <item:mcwwindows:brown_mosaic_glass>,
    <item:mcwwindows:green_mosaic_glass>,
    <item:mcwwindows:red_mosaic_glass>,
    <item:mcwwindows:black_mosaic_glass>,
    <item:mcwwindows:white_mosaic_glass_pane>,
    <item:mcwwindows:orange_mosaic_glass_pane>,
    <item:mcwwindows:magenta_mosaic_glass_pane>,
    <item:mcwwindows:light_blue_mosaic_glass_pane>,
    <item:mcwwindows:yellow_mosaic_glass_pane>,
    <item:mcwwindows:lime_mosaic_glass_pane>,
    <item:mcwwindows:pink_mosaic_glass_pane>,
    <item:mcwwindows:gray_mosaic_glass_pane>,
    <item:mcwwindows:light_gray_mosaic_glass_pane>,
    <item:mcwwindows:cyan_mosaic_glass_pane>,
    <item:mcwwindows:purple_mosaic_glass_pane>,
    <item:mcwwindows:blue_mosaic_glass_pane>,
    <item:mcwwindows:brown_mosaic_glass_pane>,
    <item:mcwwindows:green_mosaic_glass_pane>,
    <item:mcwwindows:red_mosaic_glass_pane>,
    <item:mcwwindows:black_mosaic_glass_pane>,
    <item:minecraft:cut_red_sandstone>,
    <item:minecraft:chiseled_sandstone>,
    <item:minecraft:cut_sandstone>,
    <item:minecraft:terracotta>,
    <item:minecraft:chiseled_red_sandstone>,
    <item:minecraft:brewing_stand>,
    <item:minecraft:potion>,
    <item:minecraft:splash_potion>,
    <item:minecraft:lingering_potion>,
    <item:sophisticatedstorage:advanced_pickup_upgrade>,
    <item:sophisticatedstorage:advanced_magnet_upgrade>,
    <item:sophisticatedstorage:advanced_feeding_upgrade>,
    <item:sophisticatedstorage:advanced_compacting_upgrade>,
    <item:sophisticatedstorage:advanced_void_upgrade>,
    <item:sophisticatedstorage:auto_smelting_upgrade>,
    <item:sophisticatedstorage:auto_smoking_upgrade>,
    <item:sophisticatedstorage:stack_upgrade_tier_4>,
    <item:sophisticatedstorage:gold_to_diamond_tier_upgrade>,
    <item:parrying:iron_flail>,
    <item:supplementaries:planter_rich>,
    <item:supplementaries:blackboard>,
    <item:supplementaries:slingshot>,
    <item:supplementaries:silver_lantern>,
    <item:minecraft:jukebox>,
    <item:minecraft:painting>,
    <item:minecraft:cartography_table>,
    <item:minecraft:soul_torch>,
    <item:supplementaries:checker_block>,
    <item:supplementaries:checker_slab>,
    <item:projectbrazier:soul_iron_brazier>,
    <item:projectbrazier:soul_iron_fire_bowl>,
    <item:projectbrazier:andesite_bricks>,
    <item:projectbrazier:diorite_bricks>,
    <item:projectbrazier:granite_bricks>,
    <item:projectbrazier:andesite_pillar>,
    <item:projectbrazier:diorite_pillar>,
    <item:projectbrazier:granite_pillar>,
    <item:projectbrazier:snow_bricks>,
    <item:projectbrazier:stone_machicolations>,
    <item:projectbrazier:stone_crenellations>,
    <item:projectbrazier:deepslate_machicolations>,
    <item:projectbrazier:deepslate_crenellations>,
    <item:projectbrazier:riverstone>,
    <item:projectbrazier:large_riverstone>,
    <item:projectbrazier:dark_large_riverstone>,
    <item:projectbrazier:colorful_cobblestone>,
    <item:projectbrazier:pale_colorful_cobblestone>,
    <item:minecraft:brick_stairs>,
    <item:minecraft:note_block>,
    <item:minecraft:lead>,
    <item:supplementaries:planter>,
    <item:mcwbridges:brick_bridge>,
    <item:mcwbridges:brick_bridge_pier>,
    <item:mcwbridges:brick_bridge_stair>,
    <item:minecraft:netherrack>,
    <item:natprog:cobbled_netherrack>,
    <item:supplementaries:speaker_block>,
    <item:supplementaries:bomb_spiky>,
    <item:supplementaries:globe_sepia>,
    <item:fusion:fusion_furnace>,
    <item:minecraft:stripped_crimson_stem>,
    <item:minecraft:stripped_warped_stem>,
    <item:minecraft:stripped_crimson_hyphae>,
    <item:minecraft:stripped_warped_hyphae>,
    <item:minecraft:crimson_hyphae>,
    <item:minecraft:warped_hyphae>,
    <item:minecraft:crimson_fence>,
    <item:minecraft:warped_fence>,
    <item:minecraft:warped_stairs>,
    <item:minecraft:crimson_stairs>,
    <item:mcwdoors:crimson_barn_door>,
    <item:mcwdoors:warped_barn_door>,
    <item:mcwdoors:crimson_western_door>,
    <item:mcwdoors:warped_western_door>,
    <item:mcwtrpdoors:crimson_barn_trapdoor>,
    <item:mcwtrpdoors:warped_barn_trapdoor>,
    <item:mcwtrpdoors:crimson_ranch_trapdoor>,
    <item:mcwtrpdoors:warped_ranch_trapdoor>,
    <item:supplementaries:hanging_sign_crimson>,
    <item:supplementaries:hanging_sign_warped>,
    <item:supplementaries:sign_post_crimson>,
    <item:supplementaries:sign_post_warped>,
    <item:minecraft:crimson_button>,
    <item:minecraft:warped_button>,
    <item:minecraft:crimson_pressure_plate>,
    <item:minecraft:warped_pressure_plate>,
    <item:sophisticatedbackpacks:advanced_pickup_upgrade>,
    <item:sophisticatedbackpacks:advanced_magnet_upgrade>,
    <item:sophisticatedbackpacks:advanced_feeding_upgrade>,
    <item:sophisticatedbackpacks:advanced_compacting_upgrade>,
    <item:sophisticatedbackpacks:advanced_void_upgrade>,
    <item:sophisticatedbackpacks:advanced_restock_upgrade>,
    <item:sophisticatedbackpacks:advanced_deposit_upgrade>,
    <item:sophisticatedbackpacks:inception_upgrade>,
    <item:sophisticatedbackpacks:auto_smelting_upgrade>,
    <item:sophisticatedbackpacks:auto_smoking_upgrade>,
    <item:sophisticatedbackpacks:auto_blasting_upgrade>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_3>,
    <item:sophisticatedbackpacks:jukebox_upgrade>,
    <item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>,
    <item:sophisticatedbackpacks:advanced_pump_upgrade>,
    <item:sophisticatedbackpacks:xp_pump_upgrade>,
    <item:minecraft:nether_star>
];

var modList as string [] = [
    "alcocraft",
    "bygonenether"
];

var listTag as MCTag [] = [
    <tag:items:forge:stained_glass_panes>,
    <tag:items:forge:concrete>,
    <tag:items:forge:terracotta>,
    <tag:items:forge:concrete_powders>,
    <tag:items:supplementaries:bamboo_spikes_tipped>
];

var exceptItem as IItemStack [] = [
    <item:sophisticatedbackpacks:netherite_backpack>,
    <item:alcocraft:spruce_mug_chorus_ale>,
    <item:alcocraft:spruce_mug_nether_star_lager>,
    <item:alcocraft:spruce_mug_nether_porter>,
    <item:alcocraft:spruce_mug_wither_stout>,
    <item:alcocraft:spruce_mug_magnet_pilsner>,
    <item:minecraft:arrow>,
    <item:supplementaries:rope_arrow>
];

for item in listItem {
    setStagedItem("renaissance_age", item);
}

for tag in listTag {
    setStagedTag("renaissance_age", tag);
}

for mod in modList {
    setStagedMod("renaissance_age", mod);
}

for item in exceptItem {
    removeStagedItem(item);
}