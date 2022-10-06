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

var message = new TextComponent("You haven't unlocked Pottery yet").setStyle(<constant:formatting:red>);
var stage = "pottery";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Pottery").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("valhelsia_structures:glazed_jar");
items.add("valhelsia_structures:cracked_glazed_jar");
items.add("valhelsia_structures:white_glazed_jar");
items.add("valhelsia_structures:orange_glazed_jar");
items.add("valhelsia_structures:magenta_glazed_jar");
items.add("valhelsia_structures:light_blue_glazed_jar");
items.add("valhelsia_structures:yellow_glazed_jar");
items.add("valhelsia_structures:lime_glazed_jar");
items.add("valhelsia_structures:pink_glazed_jar");
items.add("valhelsia_structures:gray_glazed_jar");
items.add("valhelsia_structures:light_gray_glazed_jar");
items.add("valhelsia_structures:cyan_glazed_jar");
items.add("valhelsia_structures:purple_glazed_jar");
items.add("valhelsia_structures:blue_glazed_jar");
items.add("valhelsia_structures:brown_glazed_jar");
items.add("valhelsia_structures:green_glazed_jar");
items.add("valhelsia_structures:red_glazed_jar");
items.add("valhelsia_structures:black_glazed_jar");
items.add("valhelsia_structures:big_glazed_jar");
items.add("valhelsia_structures:cracked_big_glazed_jar");
items.add("valhelsia_structures:big_white_glazed_jar");
items.add("valhelsia_structures:big_orange_glazed_jar");
items.add("valhelsia_structures:big_magenta_glazed_jar");
items.add("valhelsia_structures:big_light_blue_glazed_jar");
items.add("valhelsia_structures:big_yellow_glazed_jar");
items.add("valhelsia_structures:big_lime_glazed_jar");
items.add("valhelsia_structures:big_pink_glazed_jar");
items.add("valhelsia_structures:big_gray_glazed_jar");
items.add("valhelsia_structures:big_light_gray_glazed_jar");
items.add("valhelsia_structures:big_cyan_glazed_jar");
items.add("valhelsia_structures:big_purple_glazed_jar");
items.add("valhelsia_structures:big_blue_glazed_jar");
items.add("valhelsia_structures:big_brown_glazed_jar");
items.add("valhelsia_structures:big_green_glazed_jar");
items.add("valhelsia_structures:big_red_glazed_jar");
items.add("valhelsia_structures:big_black_glazed_jar");
items.add("minecraft:white_glazed_terracotta");
items.add("minecraft:orange_glazed_terracotta");
items.add("minecraft:magenta_glazed_terracotta");
items.add("minecraft:light_blue_glazed_terracotta");
items.add("minecraft:yellow_glazed_terracotta");
items.add("minecraft:lime_glazed_terracotta");
items.add("minecraft:pink_glazed_terracotta");
items.add("minecraft:gray_glazed_terracotta");
items.add("minecraft:light_gray_glazed_terracotta");
items.add("minecraft:cyan_glazed_terracotta");
items.add("minecraft:purple_glazed_terracotta");
items.add("minecraft:blue_glazed_terracotta");
items.add("minecraft:brown_glazed_terracotta");
items.add("minecraft:green_glazed_terracotta");
items.add("minecraft:red_glazed_terracotta");
items.add("minecraft:black_glazed_terracotta");

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