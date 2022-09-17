import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:mcwbridges:oak_log_bridge_middle>,
    <item:mcwbridges:birch_log_bridge_middle>,
    <item:mcwbridges:acacia_log_bridge_middle>,
    <item:mcwbridges:spruce_log_bridge_middle>,
    <item:mcwbridges:jungle_log_bridge_middle>,
    <item:mcwbridges:dark_oak_log_bridge_middle>,
    <item:mcwbridges:rope_oak_bridge>,
    <item:mcwbridges:rope_birch_bridge>,
    <item:mcwbridges:rope_spruce_bridge>,
    <item:mcwbridges:rope_jungle_bridge>,
    <item:mcwbridges:rope_acacia_bridge>,
    <item:mcwbridges:rope_dark_oak_bridge>,
    <item:mcwbridges:oak_rail_bridge>,
    <item:mcwbridges:spruce_rail_bridge>,
    <item:mcwbridges:birch_rail_bridge>,
    <item:mcwbridges:jungle_rail_bridge>,
    <item:mcwbridges:acacia_rail_bridge>,
    <item:mcwbridges:dark_oak_rail_bridge>,
    <item:mcwbridges:oak_bridge_pier>,
    <item:mcwbridges:spruce_bridge_pier>,
    <item:mcwbridges:birch_bridge_pier>,
    <item:mcwbridges:jungle_bridge_pier>,
    <item:mcwbridges:acacia_bridge_pier>,
    <item:mcwbridges:dark_oak_bridge_pier>,
    <item:mcwbridges:oak_log_bridge_stair>,
    <item:mcwbridges:spruce_log_bridge_stair>,
    <item:mcwbridges:birch_log_bridge_stair>,
    <item:mcwbridges:jungle_log_bridge_stair>,
    <item:mcwbridges:acacia_log_bridge_stair>,
    <item:mcwbridges:dark_oak_log_bridge_stair>,
    <item:mcwbridges:oak_rope_bridge_stair>,
    <item:mcwbridges:spruce_rope_bridge_stair>,
    <item:mcwbridges:birch_rope_bridge_stair>,
    <item:mcwbridges:jungle_rope_bridge_stair>,
    <item:mcwbridges:acacia_rope_bridge_stair>,
    <item:mcwbridges:dark_oak_rope_bridge_stair>,
    <item:mcwfences:oak_picket_fence>,
    <item:mcwfences:spruce_picket_fence>,
    <item:mcwfences:birch_picket_fence>,
    <item:mcwfences:jungle_picket_fence>,
    <item:mcwfences:acacia_picket_fence>,
    <item:mcwfences:dark_oak_picket_fence>,
    <item:mcwfences:oak_stockade_fence>,
    <item:mcwfences:spruce_stockade_fence>,
    <item:mcwfences:birch_stockade_fence>,
    <item:mcwfences:jungle_stockade_fence>,
    <item:mcwfences:acacia_stockade_fence>,
    <item:mcwfences:dark_oak_stockade_fence>,
    <item:mcwfences:oak_horse_fence>,
    <item:mcwfences:spruce_horse_fence>,
    <item:mcwfences:birch_horse_fence>,
    <item:mcwfences:jungle_horse_fence>,
    <item:mcwfences:acacia_horse_fence>,
    <item:mcwfences:dark_oak_horse_fence>,
    <item:mcwfences:oak_wired_fence>,
    <item:mcwfences:spruce_wired_fence>,
    <item:mcwfences:birch_wired_fence>,
    <item:mcwfences:jungle_wired_fence>,
    <item:mcwfences:acacia_wired_fence>,
    <item:mcwfences:dark_oak_wired_fence>,
    <item:mcwfences:oak_highley_gate>,
    <item:mcwfences:spruce_highley_gate>,
    <item:mcwfences:birch_highley_gate>,
    <item:mcwfences:jungle_highley_gate>,
    <item:mcwfences:acacia_highley_gate>,
    <item:mcwfences:dark_oak_highley_gate>,
    <item:mcwfences:oak_pyramid_gate>,
    <item:mcwfences:spruce_pyramid_gate>,
    <item:mcwfences:birch_pyramid_gate>,
    <item:mcwfences:jungle_pyramid_gate>,
    <item:mcwfences:acacia_pyramid_gate>,
    <item:mcwfences:dark_oak_pyramid_gate>,
    <item:mcwfences:modern_andesite_wall>,
    <item:mcwfences:modern_diorite_wall>,
    <item:mcwfences:modern_granite_wall>,
    <item:mcwfences:railing_stone_brick_wall>,
    <item:mcwfences:railing_andesite_wall>,
    <item:mcwfences:railing_diorite_wall>,
    <item:mcwfences:railing_granite_wall>,
    <item:mcwfences:railing_sandstone_wall>,
    <item:mcwfences:railing_red_sandstone_wall>,
    <item:mcwfences:railing_deepslate_wall>,
    <item:mcwfences:railing_deepslate_brick_wall>,
    <item:mcwfences:stone_brick_railing_gate>,
    <item:mcwfences:andesite_railing_gate>,
    <item:mcwfences:diorite_railing_gate>,
    <item:mcwfences:granite_railing_gate>,
    <item:mcwfences:sandstone_railing_gate>,
    <item:mcwfences:red_sandstone_railing_gate>,
    <item:mcwfences:deepslate_railing_gate>,
    <item:mcwfences:deepslate_brick_railing_gate>,
    <item:supplementaries:daub>,
    <item:supplementaries:daub_frame>,
    <item:supplementaries:daub_brace>,
    <item:supplementaries:daub_cross_brace>,
    <item:supplementaries:timber_frame>,
    <item:supplementaries:timber_brace>,
    <item:supplementaries:timber_cross_brace>,
    <item:supplementaries:ash_bricks>,
    <item:supplementaries:ash_bricks_slab>,
    <item:supplementaries:ash_bricks_stairs>,
    <item:supplementaries:stone_lamp>,
    <item:supplementaries:deepslate_lamp>,
    <item:projectbrazier:orange_open_barrel>,
    <item:projectbrazier:apple_open_barrel>,
    <item:projectbrazier:birch_open_barrel>,
    <item:projectbrazier:oak_open_barrel>,
    <item:projectbrazier:acacia_open_barrel>,
    <item:projectbrazier:jungle_open_barrel>,
    <item:projectbrazier:dark_oak_open_barrel>,
    <item:projectbrazier:spruce_open_barrel>,
    <item:projectbrazier:orange_closed_barrel>,
    <item:projectbrazier:apple_closed_barrel>,
    <item:projectbrazier:birch_closed_barrel>,
    <item:projectbrazier:oak_closed_barrel>,
    <item:projectbrazier:acacia_closed_barrel>,
    <item:projectbrazier:jungle_closed_barrel>,
    <item:projectbrazier:dark_oak_closed_barrel>,
    <item:projectbrazier:spruce_closed_barrel>,
    <item:projectbrazier:orange_plank_chair>,
    <item:projectbrazier:apple_plank_chair>,
    <item:projectbrazier:birch_plank_chair>,
    <item:projectbrazier:oak_plank_chair>,
    <item:projectbrazier:acacia_plank_chair>,
    <item:projectbrazier:jungle_plank_chair>,
    <item:projectbrazier:dark_oak_plank_chair>,
    <item:projectbrazier:spruce_plank_chair>,
    <item:projectbrazier:orange_solid_chair>,
    <item:projectbrazier:apple_solid_chair>,
    <item:projectbrazier:birch_solid_chair>,
    <item:projectbrazier:oak_solid_chair>,
    <item:projectbrazier:acacia_solid_chair>,
    <item:projectbrazier:jungle_solid_chair>,
    <item:projectbrazier:dark_oak_solid_chair>,
    <item:projectbrazier:spruce_solid_chair>,
    <item:projectbrazier:orange_stool>,
    <item:projectbrazier:apple_stool>,
    <item:projectbrazier:birch_stool>,
    <item:projectbrazier:oak_stool>,
    <item:projectbrazier:acacia_stool>,
    <item:projectbrazier:jungle_stool>,
    <item:projectbrazier:dark_oak_stool>,
    <item:projectbrazier:spruce_stool>,
    <item:projectbrazier:orange_armrest_chair>,
    <item:projectbrazier:apple_armrest_chair>,
    <item:projectbrazier:birch_armrest_chair>,
    <item:projectbrazier:oak_armrest_chair>,
    <item:projectbrazier:acacia_armrest_chair>,
    <item:projectbrazier:jungle_armrest_chair>,
    <item:projectbrazier:dark_oak_armrest_chair>,
    <item:projectbrazier:spruce_armrest_chair>,
    <item:projectbrazier:orange_bench>,
    <item:projectbrazier:apple_bench>,
    <item:projectbrazier:birch_bench>,
    <item:projectbrazier:oak_bench>,
    <item:projectbrazier:acacia_bench>,
    <item:projectbrazier:jungle_bench>,
    <item:projectbrazier:dark_oak_bench>,
    <item:projectbrazier:spruce_bench>,
    <item:projectbrazier:orange_log_chair>,
    <item:projectbrazier:apple_log_chair>,
    <item:projectbrazier:birch_log_chair>,
    <item:projectbrazier:oak_log_chair>,
    <item:projectbrazier:acacia_log_chair>,
    <item:projectbrazier:jungle_log_chair>,
    <item:projectbrazier:dark_oak_log_chair>,
    <item:projectbrazier:spruce_log_chair>,
    <item:projectbrazier:orange_log_bench>,
    <item:projectbrazier:apple_log_bench>,
    <item:projectbrazier:birch_log_bench>,
    <item:projectbrazier:oak_log_bench>,
    <item:projectbrazier:acacia_log_bench>,
    <item:projectbrazier:jungle_log_bench>,
    <item:projectbrazier:dark_oak_log_bench>,
    <item:projectbrazier:spruce_log_bench>,
    <item:projectbrazier:stripped_orange_log_chair>,
    <item:projectbrazier:stripped_apple_log_chair>,
    <item:projectbrazier:stripped_birch_log_chair>,
    <item:projectbrazier:stripped_oak_log_chair>,
    <item:projectbrazier:stripped_acacia_log_chair>,
    <item:projectbrazier:stripped_jungle_log_chair>,
    <item:projectbrazier:stripped_dark_oak_log_chair>,
    <item:projectbrazier:stripped_spruce_log_chair>,
    <item:projectbrazier:stripped_orange_log_bench>,
    <item:projectbrazier:stripped_apple_log_bench>,
    <item:projectbrazier:stripped_birch_log_bench>,
    <item:projectbrazier:stripped_oak_log_bench>,
    <item:projectbrazier:stripped_acacia_log_bench>,
    <item:projectbrazier:stripped_jungle_log_bench>,
    <item:projectbrazier:stripped_dark_oak_log_bench>,
    <item:projectbrazier:stripped_spruce_log_bench>,
    <item:projectbrazier:solid_orange_table>,
    <item:projectbrazier:solid_apple_table>,
    <item:projectbrazier:solid_birch_table>,
    <item:projectbrazier:solid_oak_table>,
    <item:projectbrazier:solid_acacia_table>,
    <item:projectbrazier:solid_jungle_table>,
    <item:projectbrazier:solid_dark_oak_table>,
    <item:projectbrazier:solid_spruce_table>,
    <item:projectbrazier:orange_cross_lattice>,
    <item:projectbrazier:apple_cross_lattice>,
    <item:projectbrazier:birch_cross_lattice>,
    <item:projectbrazier:oak_cross_lattice>,
    <item:projectbrazier:acacia_cross_lattice>,
    <item:projectbrazier:jungle_cross_lattice>,
    <item:projectbrazier:dark_oak_cross_lattice>,
    <item:projectbrazier:spruce_cross_lattice>,
    <item:projectbrazier:orange_dense_vertical_lattice>,
    <item:projectbrazier:apple_dense_vertical_lattice>,
    <item:projectbrazier:birch_dense_vertical_lattice>,
    <item:projectbrazier:oak_dense_vertical_lattice>,
    <item:projectbrazier:acacia_dense_vertical_lattice>,
    <item:projectbrazier:jungle_dense_vertical_lattice>,
    <item:projectbrazier:dark_oak_dense_vertical_lattice>,
    <item:projectbrazier:spruce_dense_vertical_lattice>,
    <item:projectbrazier:orange_diamond_lattice>,
    <item:projectbrazier:apple_diamond_lattice>,
    <item:projectbrazier:birch_diamond_lattice>,
    <item:projectbrazier:oak_diamond_lattice>,
    <item:projectbrazier:acacia_diamond_lattice>,
    <item:projectbrazier:jungle_diamond_lattice>,
    <item:projectbrazier:dark_oak_diamond_lattice>,
    <item:projectbrazier:spruce_diamond_lattice>,
    <item:projectbrazier:orange_grid_lattice>,
    <item:projectbrazier:apple_grid_lattice>,
    <item:projectbrazier:birch_grid_lattice>,
    <item:projectbrazier:oak_grid_lattice>,
    <item:projectbrazier:acacia_grid_lattice>,
    <item:projectbrazier:jungle_grid_lattice>,
    <item:projectbrazier:dark_oak_grid_lattice>,
    <item:projectbrazier:spruce_grid_lattice>,
    <item:projectbrazier:orange_vertical_lattice>,
    <item:projectbrazier:apple_vertical_lattice>,
    <item:projectbrazier:birch_vertical_lattice>,
    <item:projectbrazier:oak_vertical_lattice>,
    <item:projectbrazier:acacia_vertical_lattice>,
    <item:projectbrazier:jungle_vertical_lattice>,
    <item:projectbrazier:dark_oak_vertical_lattice>,
    <item:projectbrazier:spruce_vertical_lattice>,
    <item:projectbrazier:white_polstered_orange_bench>,
    <item:projectbrazier:white_polstered_apple_bench>,
    <item:projectbrazier:white_polstered_birch_bench>,
    <item:projectbrazier:white_polstered_oak_bench>,
    <item:projectbrazier:white_polstered_acacia_bench>,
    <item:projectbrazier:white_polstered_jungle_bench>,
    <item:projectbrazier:white_polstered_dark_oak_bench>,
    <item:projectbrazier:white_polstered_spruce_bench>,
    <item:projectbrazier:white_polstered_oak_bench>,
    <item:projectbrazier:white_polstered_acacia_bench>,
    <item:projectbrazier:white_polstered_jungle_bench>,
    <item:projectbrazier:white_polstered_dark_oak_bench>,
    <item:projectbrazier:white_polstered_spruce_bench>,
    <item:projectbrazier:orange_polstered_orange_bench>,
    <item:projectbrazier:orange_polstered_apple_bench>,
    <item:projectbrazier:orange_polstered_birch_bench>,
    <item:projectbrazier:orange_polstered_oak_bench>,
    <item:projectbrazier:orange_polstered_acacia_bench>,
    <item:projectbrazier:orange_polstered_jungle_bench>,
    <item:projectbrazier:orange_polstered_dark_oak_bench>,
    <item:projectbrazier:orange_polstered_spruce_bench>,
    <item:projectbrazier:magenta_polstered_orange_bench>,
    <item:projectbrazier:magenta_polstered_apple_bench>,
    <item:projectbrazier:magenta_polstered_birch_bench>,
    <item:projectbrazier:magenta_polstered_oak_bench>,
    <item:projectbrazier:magenta_polstered_acacia_bench>,
    <item:projectbrazier:magenta_polstered_jungle_bench>,
    <item:projectbrazier:magenta_polstered_dark_oak_bench>,
    <item:projectbrazier:magenta_polstered_spruce_bench>,
    <item:projectbrazier:light_blue_polstered_orange_bench>,
    <item:projectbrazier:light_blue_polstered_apple_bench>,
    <item:projectbrazier:light_blue_polstered_birch_bench>,
    <item:projectbrazier:light_blue_polstered_oak_bench>,
    <item:projectbrazier:light_blue_polstered_acacia_bench>,
    <item:projectbrazier:light_blue_polstered_jungle_bench>,
    <item:projectbrazier:light_blue_polstered_dark_oak_bench>,
    <item:projectbrazier:light_blue_polstered_spruce_bench>,
    <item:projectbrazier:yellow_polstered_orange_bench>,
    <item:projectbrazier:yellow_polstered_apple_bench>,
    <item:projectbrazier:yellow_polstered_birch_bench>,
    <item:projectbrazier:yellow_polstered_oak_bench>,
    <item:projectbrazier:yellow_polstered_acacia_bench>,
    <item:projectbrazier:yellow_polstered_jungle_bench>,
    <item:projectbrazier:yellow_polstered_dark_oak_bench>,
    <item:projectbrazier:yellow_polstered_spruce_bench>,
    <item:projectbrazier:lime_polstered_orange_bench>,
    <item:projectbrazier:lime_polstered_apple_bench>,
    <item:projectbrazier:lime_polstered_birch_bench>,
    <item:projectbrazier:lime_polstered_oak_bench>,
    <item:projectbrazier:lime_polstered_acacia_bench>,
    <item:projectbrazier:lime_polstered_jungle_bench>,
    <item:projectbrazier:lime_polstered_dark_oak_bench>,
    <item:projectbrazier:lime_polstered_spruce_bench>,
    <item:projectbrazier:pink_polstered_orange_bench>,
    <item:projectbrazier:pink_polstered_apple_bench>,
    <item:projectbrazier:pink_polstered_birch_bench>,
    <item:projectbrazier:pink_polstered_oak_bench>,
    <item:projectbrazier:pink_polstered_acacia_bench>,
    <item:projectbrazier:pink_polstered_warped_bench>,
    <item:projectbrazier:pink_polstered_jungle_bench>,
    <item:projectbrazier:pink_polstered_dark_oak_bench>,
    <item:projectbrazier:pink_polstered_spruce_bench>,
    <item:projectbrazier:gray_polstered_orange_bench>,
    <item:projectbrazier:gray_polstered_apple_bench>,
    <item:projectbrazier:gray_polstered_birch_bench>,
    <item:projectbrazier:gray_polstered_oak_bench>,
    <item:projectbrazier:gray_polstered_acacia_bench>,
    <item:projectbrazier:gray_polstered_jungle_bench>,
    <item:projectbrazier:gray_polstered_dark_oak_bench>,
    <item:projectbrazier:gray_polstered_spruce_bench>,
    <item:projectbrazier:light_gray_polstered_orange_bench>,
    <item:projectbrazier:light_gray_polstered_apple_bench>,
    <item:projectbrazier:light_gray_polstered_birch_bench>,
    <item:projectbrazier:light_gray_polstered_oak_bench>,
    <item:projectbrazier:light_gray_polstered_acacia_bench>,
    <item:projectbrazier:light_gray_polstered_jungle_bench>,
    <item:projectbrazier:light_gray_polstered_dark_oak_bench>,
    <item:projectbrazier:light_gray_polstered_spruce_bench>,
    <item:projectbrazier:cyan_polstered_orange_bench>,
    <item:projectbrazier:cyan_polstered_apple_bench>,
    <item:projectbrazier:cyan_polstered_birch_bench>,
    <item:projectbrazier:cyan_polstered_oak_bench>,
    <item:projectbrazier:cyan_polstered_acacia_bench>,
    <item:projectbrazier:cyan_polstered_jungle_bench>,
    <item:projectbrazier:cyan_polstered_dark_oak_bench>,
    <item:projectbrazier:cyan_polstered_spruce_bench>,
    <item:projectbrazier:purple_polstered_orange_bench>,
    <item:projectbrazier:purple_polstered_apple_bench>,
    <item:projectbrazier:purple_polstered_birch_bench>,
    <item:projectbrazier:purple_polstered_oak_bench>,
    <item:projectbrazier:purple_polstered_acacia_bench>,
    <item:projectbrazier:purple_polstered_jungle_bench>,
    <item:projectbrazier:purple_polstered_dark_oak_bench>,
    <item:projectbrazier:purple_polstered_spruce_bench>,
    <item:projectbrazier:blue_polstered_orange_bench>,
    <item:projectbrazier:blue_polstered_apple_bench>,
    <item:projectbrazier:blue_polstered_birch_bench>,
    <item:projectbrazier:blue_polstered_oak_bench>,
    <item:projectbrazier:blue_polstered_acacia_bench>,
    <item:projectbrazier:blue_polstered_jungle_bench>,
    <item:projectbrazier:blue_polstered_dark_oak_bench>,
    <item:projectbrazier:blue_polstered_spruce_bench>,
    <item:projectbrazier:brown_polstered_orange_bench>,
    <item:projectbrazier:brown_polstered_apple_bench>,
    <item:projectbrazier:brown_polstered_birch_bench>,
    <item:projectbrazier:brown_polstered_oak_bench>,
    <item:projectbrazier:brown_polstered_acacia_bench>,
    <item:projectbrazier:brown_polstered_jungle_bench>,
    <item:projectbrazier:brown_polstered_dark_oak_bench>,
    <item:projectbrazier:brown_polstered_spruce_bench>,
    <item:projectbrazier:green_polstered_orange_bench>,
    <item:projectbrazier:green_polstered_apple_bench>,
    <item:projectbrazier:green_polstered_birch_bench>,
    <item:projectbrazier:green_polstered_oak_bench>,
    <item:projectbrazier:green_polstered_acacia_bench>,
    <item:projectbrazier:green_polstered_jungle_bench>,
    <item:projectbrazier:green_polstered_dark_oak_bench>,
    <item:projectbrazier:green_polstered_spruce_bench>,
    <item:projectbrazier:red_polstered_orange_bench>,
    <item:projectbrazier:red_polstered_apple_bench>,
    <item:projectbrazier:red_polstered_birch_bench>,
    <item:projectbrazier:red_polstered_oak_bench>,
    <item:projectbrazier:red_polstered_acacia_bench>,
    <item:projectbrazier:red_polstered_jungle_bench>,
    <item:projectbrazier:red_polstered_dark_oak_bench>,
    <item:projectbrazier:red_polstered_spruce_bench>,
    <item:projectbrazier:black_polstered_orange_bench>,
    <item:projectbrazier:black_polstered_apple_bench>,
    <item:projectbrazier:black_polstered_birch_bench>,
    <item:projectbrazier:black_polstered_oak_bench>,
    <item:projectbrazier:black_polstered_acacia_bench>,
    <item:projectbrazier:black_polstered_jungle_bench>,
    <item:projectbrazier:black_polstered_dark_oak_bench>,
    <item:projectbrazier:black_polstered_spruce_bench>,
    <item:projectbrazier:orange_platform>,
    <item:projectbrazier:apple_platform>,
    <item:projectbrazier:birch_platform>,
    <item:projectbrazier:oak_platform>,
    <item:projectbrazier:acacia_platform>,
    <item:projectbrazier:jungle_platform>,
    <item:projectbrazier:dark_oak_platform>,
    <item:projectbrazier:spruce_platform>
];

var modList as string [] = [
    "cfm",
    "mcwroofs"
];

var exceptItem as IItemStack [] = [
    <item:cfm:stone_table>,
    <item:cfm:stone_chair>,
    <item:cfm:stone_coffee_table>,
    <item:cfm:stone_bedside_cabinet>,
    <item:cfm:stone_desk>,
    <item:cfm:stone_desk_cabinet>,
    <item:cfm:oak_hedge>,
    <item:cfm:spruce_hedge>,
    <item:cfm:birch_hedge>,
    <item:cfm:jungle_hedge>,
    <item:cfm:acacia_hedge>,
    <item:cfm:dark_oak_hedge>,
    <item:mcwroofs:deepslate_roof>,
    <item:mcwroofs:deepslate_top_roof>,
    <item:mcwroofs:deepslate_lower_roof>,
    <item:mcwroofs:deepslate_steep_roof>,
    <item:mcwroofs:deepslate_upper_lower_roof>,
    <item:mcwroofs:deepslate_upper_steep_roof>,
    <item:mcwroofs:stone_roof>,
    <item:mcwroofs:stone_top_roof>,
    <item:mcwroofs:stone_lower_roof>,
    <item:mcwroofs:stone_steep_roof>,
    <item:mcwroofs:stone_upper_lower_roof>,
    <item:mcwroofs:stone_upper_steep_roof>,
    <item:mcwroofs:cobblestone_roof>,
    <item:mcwroofs:cobblestone_top_roof>,
    <item:mcwroofs:cobblestone_lower_roof>,
    <item:mcwroofs:cobblestone_steep_roof>,
    <item:mcwroofs:cobblestone_upper_lower_roof>,
    <item:mcwroofs:cobblestone_upper_steep_roof>,
    <item:mcwroofs:sandstone_roof>,
    <item:mcwroofs:sandstone_top_roof>,
    <item:mcwroofs:sandstone_lower_roof>,
    <item:mcwroofs:sandstone_steep_roof>,
    <item:mcwroofs:sandstone_upper_lower_roof>,
    <item:mcwroofs:sandstone_upper_steep_roof>,
    <item:mcwroofs:red_sandstone_roof>,
    <item:mcwroofs:red_sandstone_top_roof>,
    <item:mcwroofs:red_sandstone_lower_roof>,
    <item:mcwroofs:red_sandstone_steep_roof>,
    <item:mcwroofs:red_sandstone_upper_lower_roof>,
    <item:mcwroofs:red_sandstone_upper_steep_roof>
      
];

var exceptTag as MCTag [] = [
    <tag:items:cfm:fence_gates/picket>,
    <tag:items:cfm:fence_gates/upgraded>,
    <tag:items:cfm:fences/upgraded>,
    <tag:items:cfm:fences/picket>
];

for item in listItem {
    setStagedItem("carpentry", item);
}

for mod in modList {
    setStagedMod("carpentry", mod);
}

for item in exceptItem {
    removeStagedItem(item);
}

for tag in exceptTag  {
    removeStagedTag(tag);
}