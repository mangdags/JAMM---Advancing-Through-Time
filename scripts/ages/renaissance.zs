import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.text.Style;
import crafttweaker.api.text.ChatFormatting;
import crafttweaker.api.text.TextComponent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.block.BlockBreakEvent;
import crafttweaker.api.event.block.BlockEvent;
import crafttweaker.api.event.entity.player.interact.LeftClickBlockEvent;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.event.entity.player.interact.RightClickItemEvent;
import crafttweaker.api.event.entity.player.interact.PlayerInteractEvent;
import crafttweaker.api.item.type.block.BlockItem;
import crafttweaker.api.tag.manager.ITagManager;
import crafttweaker.api.event.entity.player.ItemTooltipEvent;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import stdlib.List;

var message = new TextComponent("You haven't unlocked Renaissance Age yet").setStyle(<constant:formatting:red>);
var stage = "renaissance_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Renaissance Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("cfm:warped_table");
items.add("cfm:stripped_warped_table");
items.add("cfm:warped_chair");
items.add("cfm:stripped_warped_chair");
items.add("cfm:warped_coffee_table");
items.add("cfm:stripped_warped_coffee_table");
items.add("cfm:warped_cabinet");
items.add("cfm:stripped_warped_cabinet");
items.add("cfm:warped_bedside_cabinet");
items.add("cfm:stripped_warped_bedside_cabinet");
items.add("cfm:warped_desk");
items.add("cfm:stripped_warped_desk");
items.add("cfm:warped_desk_cabinet");
items.add("cfm:stripped_warped_desk_cabinet");
items.add("cfm:warped_blinds");
items.add("cfm:stripped_warped_blinds");
items.add("cfm:warped_upgraded_fence");
items.add("cfm:stripped_warped_upgraded_fence");
items.add("cfm:warped_upgraded_gate");
items.add("cfm:stripped_warped_upgraded_gate");
items.add("cfm:warped_crate");
items.add("cfm:stripped_warped_crate");
items.add("cfm:warped_park_bench");
items.add("cfm:stripped_warped_park_bench");
items.add("cfm:warped_mail_box");
items.add("cfm:stripped_warped_mail_box");
items.add("cfm:warped_kitchen_counter");
items.add("cfm:stripped_warped_kitchen_counter");
items.add("cfm:warped_kitchen_drawer");
items.add("cfm:stripped_warped_kitchen_drawer");
items.add("cfm:warped_kitchen_sink_light");
items.add("cfm:stripped_warped_kitchen_sink_light");
items.add("cfm:warped_kitchen_sink_dark");
items.add("cfm:stripped_warped_kitchen_sink_dark");
items.add("cfm:crimson_table");
items.add("cfm:stripped_crimson_table");
items.add("cfm:crimson_chair");
items.add("cfm:stripped_crimson_chair");
items.add("cfm:crimson_coffee_table");
items.add("cfm:stripped_crimson_coffee_table");
items.add("cfm:crimson_cabinet");
items.add("cfm:stripped_crimson_cabinet");
items.add("cfm:crimson_bedside_cabinet");
items.add("cfm:stripped_crimson_bedside_cabinet");
items.add("cfm:crimson_desk");
items.add("cfm:stripped_crimson_desk");
items.add("cfm:crimson_desk_cabinet");
items.add("cfm:stripped_crimson_desk_cabinet");
items.add("cfm:crimson_blinds");
items.add("cfm:stripped_crimson_blinds");
items.add("cfm:crimson_upgraded_fence");
items.add("cfm:stripped_crimson_upgraded_fence");
items.add("cfm:crimson_upgraded_gate");
items.add("cfm:stripped_crimson_upgraded_gate");
items.add("cfm:crimson_crate");
items.add("cfm:stripped_crimson_crate");
items.add("cfm:crimson_park_bench");
items.add("cfm:stripped_crimson_park_bench");
items.add("cfm:crimson_mail_box");
items.add("cfm:stripped_crimson_mail_box");
items.add("cfm:crimson_kitchen_counter");
items.add("cfm:stripped_crimson_kitchen_counter");
items.add("cfm:crimson_kitchen_drawer");
items.add("cfm:stripped_crimson_kitchen_drawer");
items.add("cfm:crimson_kitchen_sink_light");
items.add("cfm:stripped_crimson_kitchen_sink_light");
items.add("cfm:crimson_kitchen_sink_dark");
items.add("cfm:stripped_crimson_kitchen_sink_dark");
items.add("create:cut_granite");
items.add("create:cut_granite_stairs");
items.add("create:polished_cut_granite");
items.add("create:polished_cut_granite_stairs");
items.add("create:cut_granite_bricks");
items.add("create:cut_granite_brick_stairs");
items.add("create:small_granite_bricks");
items.add("create:small_granite_brick_stairs");
items.add("create:layered_granite");
items.add("create:granite_pillar");
items.add("create:cut_diorite");
items.add("create:cut_diorite_stairs");
items.add("create:polished_cut_diorite");
items.add("create:polished_cut_diorite_stairs");
items.add("create:cut_diorite_bricks");
items.add("create:cut_diorite_brick_stairs");
items.add("create:small_diorite_bricks");
items.add("create:small_diorite_brick_stairs");
items.add("create:layered_diorite");
items.add("create:diorite_pillar");
items.add("create:cut_andesite");
items.add("create:cut_andesite_stairs");
items.add("create:polished_cut_andesite");
items.add("create:polished_cut_andesite_stairs");
items.add("create:cut_andesite_bricks");
items.add("create:cut_andesite_brick_stairs");
items.add("create:small_andesite_bricks");
items.add("create:small_andesite_brick_stairs");
items.add("create:layered_andesite");
items.add("create:andesite_pillar");
items.add("create:cut_calcite");
items.add("create:cut_calcite_stairs");
items.add("create:crimson_window_pane");
items.add("create:crimson_window");
items.add("create:warped_window");
items.add("create:warped_window_pane");
items.add("farmersdelight:warped_cabinet");
items.add("farmersdelight:diamond_knife");
items.add("farmersdelight:crimson_cabinet");
items.add("farmersdelight:skillet");
items.add("farmersdelight:stove");
items.add("farmersdelight:cooking_pot");
items.add("fusion:fusion_furnace");
items.add("jousting:lance_diamond");
items.add("jousting:lance_emerald");
items.add("mcwbridges:brick_bridge");
items.add("mcwbridges:brick_bridge_pier");
items.add("mcwbridges:brick_bridge_stair");
items.add("mcwbridges:blackstone_bridge");
items.add("mcwbridges:blackstone_bridge_pier");
items.add("mcwbridges:blackstone_bridge_stair");
items.add("mcwbridges:warped_log_bridge_middle");
items.add("mcwbridges:rope_warped_bridge");
items.add("mcwbridges:warped_rail_bridge");
items.add("mcwbridges:warped_bridge_pier");
items.add("mcwbridges:warped_log_bridge_stair");
items.add("mcwbridges:warped_rope_bridge_stair");
items.add("mcwbridges:crimson_log_bridge_middle");
items.add("mcwbridges:rope_crimson_bridge");
items.add("mcwbridges:crimson_rail_bridge");
items.add("mcwbridges:crimson_bridge_pier");
items.add("mcwbridges:crimson_log_bridge_stair");
items.add("mcwbridges:crimson_rope_bridge_stair");
items.add("mcwdoors:crimson_barn_door");
items.add("mcwdoors:warped_barn_door");
items.add("mcwdoors:crimson_western_door");
items.add("mcwdoors:warped_western_door");
items.add("mcwfences:crimson_picket_fence");
items.add("mcwfences:crimson_stockade_fence");
items.add("mcwfences:crimson_horse_fence");
items.add("mcwfences:crimson_wired_fence");
items.add("mcwfences:crimson_highley_gate");
items.add("mcwfences:crimson_pyramid_gate");
items.add("mcwfences:warped_picket_fence");
items.add("mcwfences:warped_stockade_fence");
items.add("mcwfences:warped_horse_fence");
items.add("mcwfences:warped_wired_fence");
items.add("mcwfences:warped_highley_gate");
items.add("mcwfences:warped_pyramid_gate");
items.add("mcwfences:modern_blackstone_wall");
items.add("mcwfences:railing_blackstone_wall");
items.add("mcwfences:blackstone_railing_gate");
items.add("mcwfences:blackstone_brick_railing_gate");
items.add("mcwfences:modern_quartz_wall");
items.add("mcwfences:railing_quartz_wall");
items.add("mcwfences:quartz_railing_gate");
items.add("mcwtrpdoors:crimson_barn_trapdoor");
items.add("mcwtrpdoors:warped_barn_trapdoor");
items.add("mcwtrpdoors:crimson_ranch_trapdoor");
items.add("mcwtrpdoors:warped_ranch_trapdoor");
items.add("mcwtrpdoors:metal_trapdoor");
items.add("mcwwindows:white_mosaic_glass");
items.add("mcwwindows:orange_mosaic_glass");
items.add("mcwwindows:magenta_mosaic_glass");
items.add("mcwwindows:light_blue_mosaic_glass");
items.add("mcwwindows:yellow_mosaic_glass");
items.add("mcwwindows:lime_mosaic_glass");
items.add("mcwwindows:pink_mosaic_glass");
items.add("mcwwindows:gray_mosaic_glass");
items.add("mcwwindows:light_gray_mosaic_glass");
items.add("mcwwindows:cyan_mosaic_glass");
items.add("mcwwindows:purple_mosaic_glass");
items.add("mcwwindows:blue_mosaic_glass");
items.add("mcwwindows:brown_mosaic_glass");
items.add("mcwwindows:green_mosaic_glass");
items.add("mcwwindows:red_mosaic_glass");
items.add("mcwwindows:black_mosaic_glass");
items.add("mcwwindows:white_mosaic_glass_pane");
items.add("mcwwindows:orange_mosaic_glass_pane");
items.add("mcwwindows:magenta_mosaic_glass_pane");
items.add("mcwwindows:light_blue_mosaic_glass_pane");
items.add("mcwwindows:yellow_mosaic_glass_pane");
items.add("mcwwindows:lime_mosaic_glass_pane");
items.add("mcwwindows:pink_mosaic_glass_pane");
items.add("mcwwindows:gray_mosaic_glass_pane");
items.add("mcwwindows:light_gray_mosaic_glass_pane");
items.add("mcwwindows:cyan_mosaic_glass_pane");
items.add("mcwwindows:purple_mosaic_glass_pane");
items.add("mcwwindows:blue_mosaic_glass_pane");
items.add("mcwwindows:brown_mosaic_glass_pane");
items.add("mcwwindows:green_mosaic_glass_pane");
items.add("mcwwindows:red_mosaic_glass_pane");
items.add("mcwwindows:black_mosaic_glass_pane");
items.add("mcwwindows:warped_stem_window");
items.add("mcwwindows:warped_stem_window2");
items.add("mcwwindows:stripped_warped_stem_window");
items.add("mcwwindows:stripped_warped_stem_window2");
items.add("mcwwindows:warped_planks_window");
items.add("mcwwindows:warped_planks_window2");
items.add("mcwwindows:warped_stem_parapet");
items.add("mcwwindows:warped_plank_parapet");
items.add("mcwwindows:warped_blinds");
items.add("mcwwindows:crimson_stem_window");
items.add("mcwwindows:crimson_stem_window2");
items.add("mcwwindows:stripped_crimson_stem_window");
items.add("mcwwindows:stripped_crimson_stem_window2");
items.add("mcwwindows:crimson_planks_window");
items.add("mcwwindows:crimson_stem_parapet");
items.add("mcwwindows:crimson_plank_parapet");
items.add("mcwwindows:crimson_blinds");
items.add("minecraft:bricks");
items.add("minecraft:brick");
items.add("minecraft:brick_stairs");
items.add("minecraft:diamond_ore");
items.add("minecraft:diamond");
items.add("minecraft:diamond_block");
items.add("minecraft:emerald");
items.add("minecraft:emerald_ore");
items.add("minecraft:deepslate_emerald_ore");
items.add("minecraft:emerald_block");
items.add("minecraft:deepslate_diamond_ore");
items.add("minecraft:diamond_sword");
items.add("minecraft:diamond_shovel");
items.add("minecraft:diamond_pickaxe");
items.add("minecraft:diamond_axe");
items.add("minecraft:diamond_hoe");
items.add("minecraft:diamond_helmet");
items.add("minecraft:diamond_chestplate");
items.add("minecraft:diamond_leggings");
items.add("minecraft:diamond_boots");
items.add("minecraft:diamond_horse_armor");
items.add("minecraft:crimson_planks");
items.add("minecraft:warped_planks");
items.add("minecraft:crimson_slab");
items.add("minecraft:warped_slab");
items.add("minecraft:crimson_stem");
items.add("minecraft:warped_stem");
items.add("minecraft:crimson_nylium");
items.add("minecraft:crimson_fungus");
items.add("minecraft:crimson_roots");
items.add("minecraft:crimson_sign");
items.add("minecraft:crimson_door");
items.add("minecraft:crimson_trapdoor");
items.add("minecraft:crimson_fence_gate");
items.add("minecraft:warped_nylium");
items.add("minecraft:warped_wart_block");
items.add("minecraft:warped_fungus");
items.add("minecraft:warped_roots");
items.add("minecraft:warped_sign");
items.add("minecraft:warped_door");
items.add("minecraft:warped_trapdoor");
items.add("minecraft:warped_fence_gate");
items.add("minecraft:warped_fungus_on_a_stick");
items.add("minecraft:stripped_crimson_stem");
items.add("minecraft:stripped_warped_stem");
items.add("minecraft:stripped_crimson_hyphae");
items.add("minecraft:stripped_warped_hyphae");
items.add("minecraft:crimson_hyphae");
items.add("minecraft:warped_hyphae");
items.add("minecraft:crimson_fence");
items.add("minecraft:warped_fence");
items.add("minecraft:warped_stairs");
items.add("minecraft:crimson_stairs");
items.add("minecraft:crimson_button");
items.add("minecraft:warped_button");
items.add("minecraft:crimson_pressure_plate");
items.add("minecraft:warped_pressure_plate");
items.add("minecraft:nether_star");
items.add("minecraft:note_block");
items.add("minecraft:lead");
items.add("minecraft:jukebox");
items.add("minecraft:painting");
items.add("minecraft:cartography_table");
items.add("minecraft:soul_torch");
items.add("minecraft:cut_red_sandstone");
items.add("minecraft:chiseled_sandstone");
items.add("minecraft:cut_sandstone");
items.add("minecraft:terracotta");
items.add("minecraft:chiseled_red_sandstone");
items.add("minecraft:brewing_stand");
items.add("minecraft:potion");
items.add("minecraft:splash_potion");
items.add("minecraft:lingering_potion");
items.add("minecraft:smooth_quartz");
items.add("minecraft:chiseled_quartz_block");
items.add("minecraft:quartz_block");
items.add("minecraft:quartz_bricks");
items.add("minecraft:quartz_pillar");
items.add("minecraft:quartz_stairs");
items.add("minecraft:smooth_quartz_stairs");
items.add("minecraft:quartz");
items.add("minecraft:magma_block");
items.add("minecraft:nether_gold_ore");
items.add("minecraft:netherrack");
items.add("minecraft:slime_ball");
items.add("minecraft:slime_block");
items.add("minecraft:red_nether_brick_stairs");
items.add("minecraft:red_nether_brick_slab");
items.add("minecraft:red_nether_bricks");
items.add("minecraft:red_nether_brick_wall");
items.add("minecraft:nether_wart");
items.add("minecraft:basalt");
items.add("minecraft:polished_basalt");
items.add("minecraft:smooth_basalt");
items.add("minecraft:basalt");
items.add("minecraft:polished_basalt");
items.add("minecraft:blackstone");
items.add("minecraft:blackstone_slab");
items.add("minecraft:blackstone_stairs");
items.add("minecraft:polished_blackstone");
items.add("minecraft:polished_blackstone_slab");
items.add("minecraft:polished_blackstone_stairs");
items.add("minecraft:chiseled_polished_blackstone");
items.add("minecraft:polished_blackstone_bricks");
items.add("minecraft:polished_blackstone_brick_slab");
items.add("minecraft:polished_blackstone_brick_stairs");
items.add("minecraft:cracked_polished_blackstone_bricks");
items.add("minecraft:blackstone_wall");
items.add("minecraft:polished_blackstone_wall");
items.add("minecraft:polished_blackstone_brick_wall");
items.add("minecraft:polished_blackstone_button");
items.add("minecraft:polished_blackstone_pressure_plate");
items.add("natprog:diamond_saw");
items.add("natprog:cobbled_netherrack");
items.add("parrying:diamond_mace");
items.add("parrying:diamond_hammer");
items.add("parrying:diamond_dagger");
items.add("parrying:diamond_flail");
items.add("parrying:diamond_spear");
items.add("parrying:scoped_crossbow");
items.add("parrying:iron_flail");
items.add("projectbrazier:crimson_open_barrel");
items.add("projectbrazier:crimson_closed_barrel");
items.add("projectbrazier:crimson_flower_barrel");
items.add("projectbrazier:crimson_flower_bucket");
items.add("projectbrazier:crimson_plank_chair");
items.add("projectbrazier:crimson_solid_chair");
items.add("projectbrazier:crimson_stool");
items.add("projectbrazier:crimson_armrest_chair");
items.add("projectbrazier:crimson_firewood");
items.add("projectbrazier:crimson_bench");
items.add("projectbrazier:crimson_log_chair");
items.add("projectbrazier:crimson_log_bench");
items.add("projectbrazier:stripped_crimson_log_chair");
items.add("projectbrazier:stripped_crimson_log_bench");
items.add("projectbrazier:hollow_crimson_log");
items.add("projectbrazier:stripped_hollow_crimson_log");
items.add("projectbrazier:solid_crimson_table");
items.add("projectbrazier:crimson_zipline_anchor");
items.add("projectbrazier:crimson_cross_lattice");
items.add("projectbrazier:crimson_dense_vertical_lattice");
items.add("projectbrazier:crimson_diamond_lattice");
items.add("projectbrazier:crimson_grid_lattice");
items.add("projectbrazier:crimson_vertical_lattice");
items.add("projectbrazier:white_polstered_crimson_bench");
items.add("projectbrazier:orange_polstered_crimson_bench");
items.add("projectbrazier:magenta_polstered_crimson_bench");
items.add("projectbrazier:light_blue_polstered_crimson_bench");
items.add("projectbrazier:yellow_polstered_crimson_bench");
items.add("projectbrazier:lime_polstered_crimson_bench");
items.add("projectbrazier:pink_polstered_crimson_bench");
items.add("projectbrazier:gray_polstered_crimson_bench");
items.add("projectbrazier:light_gray_polstered_crimson_bench");
items.add("projectbrazier:cyan_polstered_crimson_bench");
items.add("projectbrazier:purple_polstered_crimson_bench");
items.add("projectbrazier:blue_polstered_crimson_bench");
items.add("projectbrazier:brown_polstered_crimson_bench");
items.add("projectbrazier:green_polstered_crimson_bench");
items.add("projectbrazier:red_polstered_crimson_bench");
items.add("projectbrazier:black_polstered_crimson_bench");
items.add("projectbrazier:crimson_platform");
items.add("projectbrazier:warped_open_barrel");
items.add("projectbrazier:warped_closed_barrel");
items.add("projectbrazier:warped_flower_barrel");
items.add("projectbrazier:warped_flower_bucket");
items.add("projectbrazier:warped_plank_chair");
items.add("projectbrazier:warped_solid_chair");
items.add("projectbrazier:warped_stool");
items.add("projectbrazier:warped_armrest_chair");
items.add("projectbrazier:warped_firewood");
items.add("projectbrazier:warped_bench");
items.add("projectbrazier:warped_log_chair");
items.add("projectbrazier:warped_log_bench");
items.add("projectbrazier:stripped_warped_log_chair");
items.add("projectbrazier:stripped_warped_log_bench");
items.add("projectbrazier:hollow_warped_log");
items.add("projectbrazier:stripped_hollow_warped_log");
items.add("projectbrazier:solid_warped_table");
items.add("projectbrazier:warped_zipline_anchor");
items.add("projectbrazier:warped_cross_lattice");
items.add("projectbrazier:warped_dense_vertical_lattice");
items.add("projectbrazier:warped_diamond_lattice");
items.add("projectbrazier:warped_grid_lattice");
items.add("projectbrazier:warped_vertical_lattice");
items.add("projectbrazier:white_polstered_warped_bench");
items.add("projectbrazier:orange_polstered_warped_bench");
items.add("projectbrazier:magenta_polstered_warped_bench");
items.add("projectbrazier:light_blue_polstered_warped_bench");
items.add("projectbrazier:yellow_polstered_warped_bench");
items.add("projectbrazier:lime_polstered_warped_bench");
items.add("projectbrazier:pink_polstered_warped_bench");
items.add("projectbrazier:gray_polstered_warped_bench");
items.add("projectbrazier:light_gray_polstered_warped_bench");
items.add("projectbrazier:cyan_polstered_warped_bench");
items.add("projectbrazier:purple_polstered_warped_bench");
items.add("projectbrazier:blue_polstered_warped_bench");
items.add("projectbrazier:brown_polstered_warped_bench");
items.add("projectbrazier:green_polstered_warped_bench");
items.add("projectbrazier:red_polstered_warped_bench");
items.add("projectbrazier:black_polstered_warped_bench");
items.add("projectbrazier:warped_platform");
items.add("projectbrazier:soul_iron_brazier");
items.add("projectbrazier:soul_iron_fire_bowl");
items.add("projectbrazier:andesite_bricks");
items.add("projectbrazier:diorite_bricks");
items.add("projectbrazier:granite_bricks");
items.add("projectbrazier:andesite_pillar");
items.add("projectbrazier:diorite_pillar");
items.add("projectbrazier:granite_pillar");
items.add("projectbrazier:snow_bricks");
items.add("projectbrazier:stone_machicolations");
items.add("projectbrazier:stone_crenellations");
items.add("projectbrazier:deepslate_machicolations");
items.add("projectbrazier:deepslate_crenellations");
items.add("projectbrazier:riverstone");
items.add("projectbrazier:large_riverstone");
items.add("projectbrazier:dark_large_riverstone");
items.add("projectbrazier:colorful_cobblestone");
items.add("projectbrazier:pale_colorful_cobblestone");
items.add("sereneseasons:season_sensor");
items.add("sophisticatedbackpacks:diamond_backpack");
items.add("sophisticatedbackpacks:advanced_pickup_upgrade");
items.add("sophisticatedbackpacks:advanced_magnet_upgrade");
items.add("sophisticatedbackpacks:advanced_feeding_upgrade");
items.add("sophisticatedbackpacks:advanced_compacting_upgrade");
items.add("sophisticatedbackpacks:advanced_void_upgrade");
items.add("sophisticatedbackpacks:advanced_restock_upgrade");
items.add("sophisticatedbackpacks:advanced_deposit_upgrade");
items.add("sophisticatedbackpacks:inception_upgrade");
items.add("sophisticatedbackpacks:auto_smelting_upgrade");
items.add("sophisticatedbackpacks:auto_smoking_upgrade");
items.add("sophisticatedbackpacks:auto_blasting_upgrade");
items.add("sophisticatedbackpacks:stack_upgrade_tier_3");
items.add("sophisticatedbackpacks:jukebox_upgrade");
items.add("sophisticatedbackpacks:advanced_tool_swapper_upgrade");
items.add("sophisticatedbackpacks:advanced_pump_upgrade");
items.add("sophisticatedbackpacks:xp_pump_upgrade");
items.add("sophisticatedstorage:auto_blasting_upgrade");
items.add("sophisticatedstorage:diamond_barrel");
items.add("sophisticatedstorage:diamond_chest");
items.add("sophisticatedstorage:advanced_pickup_upgrade");
items.add("sophisticatedstorage:advanced_magnet_upgrade");
items.add("sophisticatedstorage:advanced_feeding_upgrade");
items.add("sophisticatedstorage:advanced_compacting_upgrade");
items.add("sophisticatedstorage:advanced_void_upgrade");
items.add("sophisticatedstorage:auto_smelting_upgrade");
items.add("sophisticatedstorage:auto_smoking_upgrade");
items.add("sophisticatedstorage:stack_upgrade_tier_4");
items.add("sophisticatedstorage:gold_to_diamond_tier_upgrade");
items.add("supplementaries:crimson_lantern");
items.add("supplementaries:blackstone_tile");
items.add("supplementaries:blackstone_tile_stairs");
items.add("supplementaries:blackstone_tile_slab");
items.add("supplementaries:blackstone_tile_wall");
items.add("supplementaries:blackstone_lamp");
items.add("supplementaries:planter_rich");
items.add("supplementaries:blackboard");
items.add("supplementaries:slingshot");
items.add("supplementaries:silver_lantern");
items.add("supplementaries:checker_block");
items.add("supplementaries:checker_slab");
items.add("supplementaries:speaker_block");
items.add("supplementaries:bomb_spiky");
items.add("supplementaries:globe_sepia");
items.add("supplementaries:hanging_sign_crimson");
items.add("supplementaries:hanging_sign_warped");
items.add("supplementaries:sign_post_crimson");
items.add("supplementaries:sign_post_warped");
items.add("supplementaries:planter");
items.add("valhelsia_structures:crimson_post");
items.add("valhelsia_structures:cut_crimson_post");
items.add("valhelsia_structures:warped_post");
items.add("valhelsia_structures:cut_warped_post");
items.add("valhelsia_structures:soul_brazier");
items.add("alcocraft:hop");
items.add("alcocraft:hop_seeds");
items.add("alcocraft:dry_seeds");
items.add("alcocraft:spruce_mug_empty");
items.add("alcocraft:spruce_mug_sun_pale_ale");
items.add("alcocraft:spruce_mug_digger_bitter");
items.add("alcocraft:spruce_mug_drowned_ale");
items.add("alcocraft:spruce_mug_night_rauch");
items.add("alcocraft:spruce_mug_ice_beer");
items.add("alcocraft:spruce_mug_kvass");
items.add("alcocraft:spruce_mug_leprechaun_cider");
items.add("alcocraft:spruce_keg");
items.add("minecraft:nether_brick_slab");

for item in game.items {
    if(item.registryName.namespace == "bygonenether") {
        items.add(item.registryName.toString());
    }
}

tagToList(items, <tag:items:forge:concrete_powders>);
tagToList(items, <tag:items:forge:concrete>);
tagToList(items, <tag:items:forge:terracotta>);
tagToList(items, <tag:items:supplementaries:bamboo_spikes_tipped>);

//set stage to items
for item in items {
    setStageItem(stage, item);
}

//LeftClick/Interact
CTEventManager.register<PlayerInteractEvent>((event) => {
    var player = event.player;
    var level = player.level;
    var pos = event.blockPos;

    //check item on hand and the block interacting with
    for item in items {
        if event.getItemStack().registryName.toString() == item && level.getBlockState(pos).block.registryName.toString() != "minecraft:air"{
            if !player.hasGameStage(stage) {
                player.displayClientMessage(message, true);
                event.cancel();
            }
        }

        if level.getBlockState(pos).block.registryName.toString() == item {
            if !player.hasGameStage(stage) {
                player.displayClientMessage(message, true);
                event.cancel();
            }
        }
    }
});

//RightClick
CTEventManager.register<RightClickBlockEvent>((event) => {
    var player = event.player;
    var level = player.level;
    var pos = event.blockPos;

    for item in items {
        if level.getBlockState(pos).block.registryName.toString() == item{
            println(item);
            if !player.hasGameStage(stage) {
                player.displayClientMessage(message, true);
                event.cancel();
            }
        }
    }

});

CTEventManager.register<RightClickItemEvent>((event) => {
    var player = event.player;
    var level = player.level;
    var pos = event.blockPos;

    for item in items {
        if event.getItemStack().registryName.toString() == item{
            println(item);
            if !player.hasGameStage(stage) {
                player.displayClientMessage(message, true);
                event.cancel();
            }
        }
    }
});

CTEventManager.register<ItemTooltipEvent>((event) => {
    var maybePlayer = event.player;
    if maybePlayer != null {
        val player = maybePlayer as Player;
        for item in items {
            if !player.hasGameStage(stage) {
                if BracketHandlers.getItem(item).ingredient.matches(event.itemStack) {
                    event.tooltip.add(toolTip1);
                    event.tooltip.add(toolTip2);
                }
            }
        }
    }
});



var exceptItem as IItemStack [] = [
    <item:alcocraft:spruce_mug_chorus_ale>,
    <item:alcocraft:spruce_mug_nether_star_lager>,
    <item:alcocraft:spruce_mug_nether_porter>,
    <item:alcocraft:spruce_mug_wither_stout>,
    <item:alcocraft:spruce_mug_magnet_pilsner>
];
