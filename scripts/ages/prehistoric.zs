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


var message = new TextComponent("You haven't unlocked Prehistoric Age yet").setStyle(<constant:formatting:red>);
var stage = "prehistoric_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Prehistoric Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("natprog:flint_hatchet");
items.add("farmersdelight:flint_knife");
items.add("minecraft:flint");
items.add("natprog:basic_saw");
items.add("supplementaries:flint_block");
items.add("minecraft:sand");
items.add("minecraft:gravel");
items.add("minecraft:carrot");
items.add("minecraft:potato");
items.add("minecraft:wheat");
items.add("minecraft:bread");
items.add("minecraft:beetroot");
items.add("minecraft:apple");
items.add("minecraft:wheat_seeds");
items.add("projectbrazier:white_cabbage");
items.add("minecraft:stick");
items.add("minecraft:crafting_table");
items.add("minecraft:oak_log");
items.add("minecraft:spruce_log");
items.add("minecraft:birch_log");
items.add("minecraft:jungle_log");
items.add("minecraft:acacia_log");
items.add("minecraft:dark_oak_log");
items.add("minecraft:stripped_oak_log");
items.add("minecraft:stripped_spruce_log");
items.add("minecraft:stripped_birch_log");
items.add("minecraft:stripped_jungle_log");
items.add("minecraft:stripped_acacia_log");
items.add("minecraft:stripped_dark_oak_log");
items.add("minecraft:stripped_oak_wood");
items.add("minecraft:stripped_spruce_wood");
items.add("minecraft:stripped_birch_wood");
items.add("minecraft:stripped_jungle_wood");
items.add("minecraft:stripped_acacia_wood");
items.add("minecraft:stripped_dark_oak_wood");
items.add("minecraft:oak_wood");
items.add("minecraft:spruce_wood");
items.add("minecraft:birch_wood");
items.add("minecraft:jungle_wood");
items.add("minecraft:acacia_wood");
items.add("minecraft:dark_oak_wood");
items.add("minecraft:white_wool");
items.add("minecraft:orange_wool");
items.add("minecraft:magenta_wool");
items.add("minecraft:light_blue_wool");
items.add("minecraft:yellow_wool");
items.add("minecraft:lime_wool");
items.add("minecraft:pink_wool");
items.add("minecraft:gray_wool");
items.add("minecraft:light_gray_wool");
items.add("minecraft:cyan_wool");
items.add("minecraft:purple_wool");
items.add("minecraft:blue_wool");
items.add("minecraft:brown_wool");
items.add("minecraft:green_wool");
items.add("minecraft:red_wool");
items.add("minecraft:black_wool");
items.add("minecraft:oak_planks");
items.add("minecraft:spruce_planks");
items.add("minecraft:birch_planks");
items.add("minecraft:jungle_planks");
items.add("minecraft:acacia_planks");
items.add("minecraft:dark_oak_planks");
items.add("mowziesmobs:painted_acacia");
items.add("minecraft:white_bed");
items.add("minecraft:orange_bed");
items.add("minecraft:magenta_bed");
items.add("minecraft:light_blue_bed");
items.add("minecraft:yellow_bed");
items.add("minecraft:lime_bed");
items.add("minecraft:pink_bed");
items.add("minecraft:gray_bed");
items.add("minecraft:light_gray_bed");
items.add("minecraft:cyan_bed");
items.add("minecraft:purple_bed");
items.add("minecraft:blue_bed");
items.add("minecraft:brown_bed");
items.add("minecraft:green_bed");
items.add("minecraft:red_bed");
items.add("minecraft:black_bed");

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
    <item:minecraft:crimson_planks>,
    <item:minecraft:warped_planks>,
    <item:minecraft:crimson_slab>,
    <item:minecraft:warped_slab>,
    <item:minecraft:crimson_stem>,
    <item:minecraft:warped_stem>,
    <item:immersiveengineering:fiberboard>
];

