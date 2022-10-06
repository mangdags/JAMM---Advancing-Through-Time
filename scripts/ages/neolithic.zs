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

var message = new TextComponent("You haven't unlocked Neolithic Age yet").setStyle(<constant:formatting:red>);
var stage = "neolithic_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Neolithic Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("cfm:stone_table");
items.add("cfm:stone_chair");
items.add("cfm:stone_coffee_table");
items.add("cfm:stone_bedside_cabinet");
items.add("cfm:stone_desk");
items.add("cfm:stone_desk_cabinet");
items.add("cfm:stone_cabinet");
items.add("minecraft:grindstone");
items.add("minecraft:andesite_stairs");
items.add("minecraft:cobblestone_stairs");
items.add("minecraft:stone_brick_stairs");
items.add("minecraft:sandstone_stairs");
items.add("minecraft:prismarine_stairs");
items.add("minecraft:prismarine_brick_stairs");
items.add("minecraft:dark_prismarine_stairs");
items.add("minecraft:red_sandstone_stairs");
items.add("minecraft:polished_granite_stairs");
items.add("minecraft:smooth_red_sandstone_stairs");
items.add("minecraft:mossy_stone_brick_stairs");
items.add("minecraft:polished_diorite_stairs");
items.add("minecraft:mossy_cobblestone_stairs");
items.add("minecraft:stone_stairs");
items.add("minecraft:smooth_sandstone_stairs");
items.add("minecraft:granite_stairs");
items.add("minecraft:polished_andesite_stairs");
items.add("minecraft:diorite_stairs");
items.add("minecraft:cobbled_deepslate_stairs");
items.add("minecraft:polished_deepslate_stairs");
items.add("minecraft:deepslate_brick_stairs");
items.add("minecraft:deepslate_tile_stairs");
items.add("minecraft:deepslate_bricks");
items.add("minecraft:cracked_deepslate_bricks");
items.add("minecraft:stone_bricks");
items.add("minecraft:chiseled_deepslate");
items.add("minecraft:dripstone_block");
items.add("minecraft:sandstone");
items.add("minecraft:smooth_red_sandstone");
items.add("minecraft:smooth_stone");
items.add("minecraft:smooth_sandstone");
items.add("minecraft:red_sandstone");
items.add("minecraft:infested_stone_bricks");
items.add("minecraft:infested_mossy_stone_bricks");
items.add("minecraft:infested_cracked_stone_bricks");
items.add("minecraft:pointed_dripstone");
items.add("minecraft:stone_button");
items.add("minecraft:stone_pressure_plate");
items.add("minecraft:deepslate_tiles");
items.add("minecraft:cracked_deepslate_tiles");
items.add("minecraft:clay");
items.add("minecraft:clay_ball");
items.add("minecraft:calcite");
items.add("minecraft:amethyst_shard");
items.add("minecraft:amethyst_block");
items.add("minecraft:budding_amethyst");
items.add("minecraft:honeycomb");
items.add("mcwbridges:deepslate_brick_bridge");
items.add("mcwbridges:deepslate_tile_bridge");
items.add("mcwbridges:deepslate_brick_bridge_pier");
items.add("mcwbridges:deepslate_tile_bridge_pier");
items.add("mcwbridges:deepslate_brick_bridge_stair");
items.add("mcwbridges:deepslate_tile_bridge_stair");
items.add("mcwbridges:sandstone_bridge");
items.add("mcwbridges:stone_brick_bridge");
items.add("mcwbridges:orange_sandstone_bridge");
items.add("mcwbridges:mossy_stone_brick_bridge");
items.add("mcwbridges:sandstone_bridge_pier");
items.add("mcwbridges:stone_bridge_pier");
items.add("mcwbridges:red_sandstone_bridge_pier");
items.add("mcwbridges:mossy_stone_bridge_pier");
items.add("mcwbridges:stone_brick_bridge_stair");
items.add("mcwbridges:sandstone_bridge_stair");
items.add("mcwbridges:red_sandstone_bridge_stair");
items.add("mcwbridges:mossy_stone_bridge_stair");
items.add("mcwfences:modern_deepslate_wall");
items.add("mcwfences:modern_deepslate_brick_wall");
items.add("mcwfences:modern_stone_brick_wall");
items.add("mcwfences:modern_sandstone_wall");
items.add("mcwfences:modern_red_sandstone_wall");
items.add("mcwroofs:deepslate_roof");
items.add("mcwroofs:deepslate_top_roof");
items.add("mcwroofs:deepslate_lower_roof");
items.add("mcwroofs:deepslate_steep_roof");
items.add("mcwroofs:deepslate_upper_lower_roof");
items.add("mcwroofs:deepslate_upper_steep_roof");
items.add("mcwroofs:stone_roof");
items.add("mcwroofs:stone_top_roof");
items.add("mcwroofs:stone_lower_roof");
items.add("mcwroofs:stone_steep_roof");
items.add("mcwroofs:stone_upper_lower_roof");
items.add("mcwroofs:stone_upper_steep_roof");
items.add("mcwroofs:cobblestone_roof");
items.add("mcwroofs:cobblestone_top_roof");
items.add("mcwroofs:cobblestone_lower_roof");
items.add("mcwroofs:cobblestone_steep_roof");
items.add("mcwroofs:cobblestone_upper_lower_roof");
items.add("mcwroofs:cobblestone_upper_steep_roof");
items.add("mcwroofs:sandstone_roof");
items.add("mcwroofs:sandstone_top_roof");
items.add("mcwroofs:sandstone_lower_roof");
items.add("mcwroofs:sandstone_steep_roof");
items.add("mcwroofs:sandstone_upper_lower_roof");
items.add("mcwroofs:sandstone_upper_steep_roof");
items.add("mcwroofs:red_sandstone_roof");
items.add("mcwroofs:red_sandstone_top_roof");
items.add("mcwroofs:red_sandstone_lower_roof");
items.add("mcwroofs:red_sandstone_steep_roof");
items.add("mcwroofs:red_sandstone_upper_lower_roof");
items.add("mcwroofs:red_sandstone_upper_steep_roof");
items.add("mcwwindows:stone_brick_arrow_slit");
items.add("mcwwindows:cobblestone_arrow_slit");
items.add("parrying:scabbard");
items.add("parrying:quiver");
items.add("projectbrazier:birch_zipline_anchor");
items.add("projectbrazier:oak_zipline_anchor");
items.add("projectbrazier:acacia_zipline_anchor");
items.add("projectbrazier:jungle_zipline_anchor");
items.add("projectbrazier:dark_oak_zipline_anchor");
items.add("projectbrazier:spruce_zipline_anchor");
items.add("projectbrazier:rope_anchor");
items.add("projectbrazier:deepslate_arrow_slit");
items.add("projectbrazier:stone_arrow_slit");
items.add("supplementaries:stone_tile");
items.add("supplementaries:stone_tile_stairs");
items.add("supplementaries:item_shelf");
items.add("supplementaries:statue");
items.add("supplementaries:pedestal");
items.add("supplementaries:crystal_display");
items.add("minecraft:granite");
items.add("minecraft:polished_granite");
items.add("minecraft:diorite");
items.add("minecraft:polished_diorite");
items.add("minecraft:andesite");
items.add("minecraft:polished_andesite");
items.add("minecraft:deepslate");
items.add("minecraft:polished_deepslate");
items.add("minecraft:tuff");
items.add("minecraft:infested_stone");
items.add("minecraft:infested_deepslate");
items.add("minecraft:mossy_stone_bricks");
items.add("minecraft:cracked_stone_bricks");
items.add("minecraft:chiseled_stone_bricks");
items.add("minecraft:stone_slab");
items.add("minecraft:smooth_stone_slab");
items.add("minecraft:sandstone_slab");
items.add("minecraft:cut_sandstone_slab");
items.add("minecraft:cobblestone_slab");
items.add("minecraft:stone_brick_slab");
items.add("minecraft:red_sandstone_slab");
items.add("minecraft:cut_red_sandstone_slab");
items.add("minecraft:polished_granite_slab");
items.add("minecraft:smooth_red_sandstone_slab");
items.add("minecraft:mossy_stone_brick_slab");
items.add("minecraft:polished_diorite_slab");
items.add("minecraft:mossy_cobblestone_slab");
items.add("minecraft:smooth_sandstone_slab");
items.add("minecraft:granite_slab");
items.add("minecraft:andesite_slab");
items.add("minecraft:polished_andesite_slab");
items.add("minecraft:diorite_slab");
items.add("minecraft:cobbled_deepslate_slab");
items.add("minecraft:polished_deepslate_slab");
items.add("minecraft:deepslate_brick_slab");
items.add("minecraft:deepslate_tile_slab");
items.add("minecraft:cobblestone_wall");
items.add("minecraft:mossy_cobblestone_wall");
items.add("minecraft:red_sandstone_wall");
items.add("minecraft:mossy_stone_brick_wall");
items.add("minecraft:granite_wall");
items.add("minecraft:stone_brick_wall");
items.add("minecraft:andesite_wall");
items.add("minecraft:sandstone_wall");
items.add("minecraft:diorite_wall");
items.add("minecraft:cobbled_deepslate_wall");
items.add("minecraft:polished_deepslate_wall");
items.add("minecraft:deepslate_brick_wall");
items.add("minecraft:deepslate_tile_wall");
items.add("minecraft:candle");
items.add("minecraft:white_candle");
items.add("minecraft:orange_candle");
items.add("minecraft:magenta_candle");
items.add("minecraft:light_blue_candle");
items.add("minecraft:yellow_candle");
items.add("minecraft:lime_candle");
items.add("minecraft:pink_candle");
items.add("minecraft:gray_candle");
items.add("minecraft:light_gray_candle");
items.add("minecraft:cyan_candle");
items.add("minecraft:purple_candle");
items.add("minecraft:blue_candle");
items.add("minecraft:brown_candle");
items.add("minecraft:green_candle");
items.add("minecraft:red_candle");
items.add("minecraft:black_candle");
items.add("supplementaries:stone_tile_slab");
items.add("supplementaries:stone_tile_wall");


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