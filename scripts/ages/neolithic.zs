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

var message = new TextComponent("You haven't unlocked Neolithic Age yet").setStyle(<constant:formatting:red>);
var stage = "neolithic_age";

var items as string [] = [
    "cfm:stone_table",
    "cfm:stone_chair",
    "cfm:stone_coffee_table",
    "cfm:stone_bedside_cabinet",
    "cfm:stone_desk",
    "cfm:stone_desk_cabinet",
    "cfm:stone_cabinet",
    "minecraft:grindstone",
    "minecraft:andesite_stairs",
    "minecraft:cobblestone_stairs",
    "minecraft:stone_brick_stairs",
    "minecraft:sandstone_stairs",
    "minecraft:prismarine_stairs",
    "minecraft:prismarine_brick_stairs",
    "minecraft:dark_prismarine_stairs",
    "minecraft:red_sandstone_stairs",
    "minecraft:polished_granite_stairs",
    "minecraft:smooth_red_sandstone_stairs",
    "minecraft:mossy_stone_brick_stairs",
    "minecraft:polished_diorite_stairs",
    "minecraft:mossy_cobblestone_stairs",
    "minecraft:stone_stairs",
    "minecraft:smooth_sandstone_stairs",
    "minecraft:granite_stairs",
    "minecraft:polished_andesite_stairs",
    "minecraft:diorite_stairs",
    "minecraft:cobbled_deepslate_stairs",
    "minecraft:polished_deepslate_stairs",
    "minecraft:deepslate_brick_stairs",
    "minecraft:deepslate_tile_stairs",
    "minecraft:deepslate_bricks",
    "minecraft:cracked_deepslate_bricks",
    "minecraft:deepslate_bricks",
    "minecraft:chiseled_deepslate",
    "minecraft:dripstone_block",
    "minecraft:sandstone",
    "minecraft:smooth_red_sandstone",
    "minecraft:smooth_stone",
    "minecraft:smooth_sandstone",
    "minecraft:red_sandstone",
    "minecraft:infested_stone_bricks",
    "minecraft:infested_mossy_stone_bricks",
    "minecraft:infested_cracked_stone_bricks",
    "minecraft:pointed_dripstone",
    "minecraft:stone_button",
    "minecraft:stone_pressure_plate",
    "minecraft:deepslate_tiles",
    "minecraft:cracked_deepslate_tiles",
    "minecraft:clay",
    "minecraft:clay_ball",
    "minecraft:calcite",
    "minecraft:amethyst_shard",
    "minecraft:amethyst_block",
    "minecraft:budding_amethyst",
    "minecraft:honeycomb",
    "mcwbridges:deepslate_brick_bridge",
    "mcwbridges:deepslate_tile_bridge",
    "mcwbridges:deepslate_brick_bridge_pier",
    "mcwbridges:deepslate_tile_bridge_pier",
    "mcwbridges:deepslate_brick_bridge_stair",
    "mcwbridges:deepslate_tile_bridge_stair",
    "mcwbridges:sandstone_bridge",
    "mcwbridges:stone_brick_bridge",
    "mcwbridges:orange_sandstone_bridge",
    "mcwbridges:mossy_stone_brick_bridge",
    "mcwbridges:sandstone_bridge_pier",
    "mcwbridges:stone_bridge_pier",
    "mcwbridges:red_sandstone_bridge_pier",
    "mcwbridges:mossy_stone_bridge_pier",
    "mcwbridges:stone_brick_bridge_stair",
    "mcwbridges:sandstone_bridge_stair",
    "mcwbridges:red_sandstone_bridge_stair",
    "mcwbridges:mossy_stone_bridge_stair",
    "mcwfences:modern_deepslate_wall",
    "mcwfences:modern_deepslate_brick_wall",
    "mcwfences:modern_stone_brick_wall",
    "mcwfences:modern_sandstone_wall",
    "mcwfences:modern_red_sandstone_wall",
    "mcwroofs:deepslate_roof",
    "mcwroofs:deepslate_top_roof",
    "mcwroofs:deepslate_lower_roof",
    "mcwroofs:deepslate_steep_roof",
    "mcwroofs:deepslate_upper_lower_roof",
    "mcwroofs:deepslate_upper_steep_roof",
    "mcwroofs:stone_roof",
    "mcwroofs:stone_top_roof",
    "mcwroofs:stone_lower_roof",
    "mcwroofs:stone_steep_roof",
    "mcwroofs:stone_upper_lower_roof",
    "mcwroofs:stone_upper_steep_roof",
    "mcwroofs:cobblestone_roof",
    "mcwroofs:cobblestone_top_roof",
    "mcwroofs:cobblestone_lower_roof",
    "mcwroofs:cobblestone_steep_roof",
    "mcwroofs:cobblestone_upper_lower_roof",
    "mcwroofs:cobblestone_upper_steep_roof",
    "mcwroofs:sandstone_roof",
    "mcwroofs:sandstone_top_roof",
    "mcwroofs:sandstone_lower_roof",
    "mcwroofs:sandstone_steep_roof",
    "mcwroofs:sandstone_upper_lower_roof",
    "mcwroofs:sandstone_upper_steep_roof",
    "mcwroofs:red_sandstone_roof",
    "mcwroofs:red_sandstone_top_roof",
    "mcwroofs:red_sandstone_lower_roof",
    "mcwroofs:red_sandstone_steep_roof",
    "mcwroofs:red_sandstone_upper_lower_roof",
    "mcwroofs:red_sandstone_upper_steep_roof",
    "mcwwindows:stone_brick_arrow_slit",
    "mcwwindows:cobblestone_arrow_slit",
    "parrying:scabbard",
    "parrying:quiver",
    "projectbrazier:birch_zipline_anchor",
    "projectbrazier:oak_zipline_anchor",
    "projectbrazier:acacia_zipline_anchor",
    "projectbrazier:jungle_zipline_anchor",
    "projectbrazier:dark_oak_zipline_anchor",
    "projectbrazier:spruce_zipline_anchor",
    "projectbrazier:rope_anchor",
    "projectbrazier:deepslate_arrow_slit",
    "projectbrazier:stone_arrow_slit",
    "supplementaries:stone_tile",
    "supplementaries:stone_tile_stairs",
    "supplementaries:item_shelf",
    "supplementaries:statue",
    "supplementaries:pedestal",
    "supplementaries:crystal_display",
    "minecraft:granite",
    "minecraft:polished_granite",
    "minecraft:diorite",
    "minecraft:polished_diorite",
    "minecraft:andesite",
    "minecraft:polished_andesite",
    "minecraft:deepslate",
    "minecraft:polished_deepslate",
    "minecraft:tuff",
    "minecraft:infested_stone",
    "minecraft:infested_deepslate",
    "minecraft:mossy_stone_bricks",
    "minecraft:cracked_stone_bricks",
    "minecraft:chiseled_stone_bricks",
    "minecraft:stone_slab",
    "minecraft:smooth_stone_slab",
    "minecraft:sandstone_slab",
    "minecraft:cut_sandstone_slab",
    "minecraft:cobblestone_slab",
    "minecraft:stone_brick_slab",
    "minecraft:red_sandstone_slab",
    "minecraft:cut_red_sandstone_slab",
    "minecraft:polished_granite_slab",
    "minecraft:smooth_red_sandstone_slab",
    "minecraft:mossy_stone_brick_slab",
    "minecraft:polished_diorite_slab",
    "minecraft:mossy_cobblestone_slab",
    "minecraft:smooth_sandstone_slab",
    "minecraft:granite_slab",
    "minecraft:andesite_slab",
    "minecraft:polished_andesite_slab",
    "minecraft:diorite_slab",
    "minecraft:cobbled_deepslate_slab",
    "minecraft:polished_deepslate_slab",
    "minecraft:deepslate_brick_slab",
    "minecraft:deepslate_tile_slab",
    "minecraft:cobblestone_wall",
    "minecraft:mossy_cobblestone_wall",
    "minecraft:red_sandstone_wall",
    "minecraft:mossy_stone_brick_wall",
    "minecraft:granite_wall",
    "minecraft:stone_brick_wall",
    "minecraft:andesite_wall",
    "minecraft:sandstone_wall",
    "minecraft:diorite_wall",
    "minecraft:cobbled_deepslate_wall",
    "minecraft:polished_deepslate_wall",
    "minecraft:deepslate_brick_wall",
    "minecraft:deepslate_tile_wall",
    "minecraft:candle",
    "minecraft:white_candle",
    "minecraft:orange_candle",
    "minecraft:magenta_candle",
    "minecraft:light_blue_candle",
    "minecraft:yellow_candle",
    "minecraft:lime_candle",
    "minecraft:pink_candle",
    "minecraft:gray_candle",
    "minecraft:light_gray_candle",
    "minecraft:cyan_candle",
    "minecraft:purple_candle",
    "minecraft:blue_candle",
    "minecraft:brown_candle",
    "minecraft:green_candle",
    "minecraft:red_candle",
    "minecraft:black_candle"
];

for item in items {
    setStageItem(stage, item);
}

//LeftClick/Interact
CTEventManager.register<PlayerInteractEvent>((event) =>{
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

var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => 
    style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Neolithic Age").setStyle(<constant:formatting:dark_red>);

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

var listTag as MCTag [] = [
    <tag:items:forge:stone>,
    <tag:items:minecraft:stone_bricks>,
    <tag:items:minecraft:slabs>,
    <tag:items:minecraft:walls>,
    <tag:items:minecraft:candle>
];

var exceptItem as IItemStack [] = [
    <item:minecraft:red_nether_brick_stairs>,
    <item:minecraft:red_nether_brick_slab>,
    <item:minecraft:blackstone>,
    <item:minecraft:blackstone_slab>,
    <item:minecraft:blackstone_stairs>,
    <item:minecraft:gilded_blackstone>,
    <item:minecraft:polished_blackstone>,
    <item:minecraft:polished_blackstone_slab>,
    <item:minecraft:polished_blackstone_stairs>,
    <item:minecraft:chiseled_polished_blackstone>,
    <item:minecraft:polished_blackstone_bricks>,
    <item:minecraft:polished_blackstone_brick_slab>,
    <item:minecraft:polished_blackstone_brick_stairs>,
    <item:minecraft:cracked_polished_blackstone_bricks>,
    <item:minecraft:red_nether_brick_wall>,
    <item:minecraft:nether_brick_wall>,
    <item:minecraft:polished_blackstone_wall>,
    <item:minecraft:blackstone_wall>,
    <item:minecraft:polished_blackstone_brick_wall>,
    <item:minecraft:crimson_planks>,
    <item:minecraft:warped_planks>,
    <item:minecraft:crimson_slab>,
    <item:minecraft:warped_slab>,
    <item:minecraft:crimson_stem>,
    <item:minecraft:warped_stem>,
    <item:natprog:cobbled_netherrack>,
    <item:natprog:cobbled_end_stone>,
    <item:fusion:bronze_brick_slab>,
    <item:fusion:steel_brick_slab>,
    <item:fusion:sinisite_brick_slab>,
    <item:fusion:thyrium_brick_slab>,
    <item:fusion:bronze_brick_stairs>,
    <item:fusion:steel_brick_stairs>,
    <item:fusion:sinisite_brick_stairs>,
    <item:fusion:thyrium_brick_stairs>,
    <item:minecraft:stone>,
    <item:minecraft:cobblestone>,
    <item:supplementaries:checker_slab>
];