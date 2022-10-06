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

var message = new TextComponent("You haven't unlocked Farming yet").setStyle(<constant:formatting:red>);
var stage = "farming";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Farming").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("alexsmobs:acacia_blossom");
items.add("alexsmobs:acacia_blossom");
items.add("minecraft:pumpkin_seeds");
items.add("minecraft:beetroot_seeds");
items.add("minecraft:melon_seeds");
items.add("minecraft:dandelion");
items.add("minecraft:poppy");
items.add("minecraft:blue_orchid");
items.add("minecraft:allium");
items.add("minecraft:azure_bluet");
items.add("minecraft:red_tulip");
items.add("minecraft:orange_tulip");
items.add("minecraft:white_tulip");
items.add("minecraft:pink_tulip");
items.add("minecraft:oxeye_daisy");
items.add("minecraft:cornflower");
items.add("minecraft:lily_of_the_valley");
items.add("minecraft:lilac");
items.add("minecraft:brown_mushroom");
items.add("minecraft:red_mushroom");
items.add("minecraft:rose_bush");
items.add("minecraft:peony");
items.add("minecraft:fern");
items.add("minecraft:dead_bush");
items.add("minecraft:wither_rose");
items.add("minecraft:dirt_path");
items.add("minecraft:bee_nest");
items.add("minecraft:beehive");
items.add("minecraft:honeycomb_block");
items.add("minecraft:honey_bottle");
items.add("minecraft:honey_block");
items.add("minecraft:saddle");
items.add("minecraft:melon");
items.add("minecraft:hay_block");
items.add("minecraft:cocoa_beans");
items.add("minecraft:pumpkin");
items.add("minecraft:carved_pumpkin");
items.add("minecraft:jack_o_lantern");
items.add("minecraft:melon_slice");
items.add("minecraft:sugar_cane");
items.add("minecraft:sugar");
items.add("minecraft:sweet_berries");
items.add("minecraft:cactus");
items.add("minecraft:sunflower");
items.add("minecraft:flower_pot");
items.add("mowziesmobs:thatch_block");
items.add("projectbrazier:cauliflower_seeds");
items.add("projectbrazier:white_cabbage_seeds");
items.add("projectbrazier:cauliflower");
items.add("projectbrazier:orange_flower_barrel");
items.add("projectbrazier:apple_flower_barrel");
items.add("projectbrazier:birch_flower_barrel");
items.add("projectbrazier:oak_flower_barrel");
items.add("projectbrazier:acacia_flower_barrel");
items.add("projectbrazier:jungle_flower_barrel");
items.add("projectbrazier:dark_oak_flower_barrel");
items.add("projectbrazier:spruce_flower_barrel");
items.add("projectbrazier:orange_flower_bucket");
items.add("projectbrazier:apple_flower_bucket");
items.add("projectbrazier:birch_flower_bucket");
items.add("projectbrazier:oak_flower_bucket");
items.add("projectbrazier:acacia_flower_bucket");
items.add("projectbrazier:jungle_flower_bucket");
items.add("projectbrazier:dark_oak_flower_bucket");
items.add("projectbrazier:spruce_flower_bucket");
items.add("supplementaries:flax_seeds");
items.add("supplementaries:wild_flax");
items.add("supplementaries:fodder");
items.add("supplementaries:sugar_cube");
items.add("supplementaries:flower_box");

for item in game.items {
    if (item.registryName.namespace == "flowerseeds") {
        items.add(item.registryName.toString());
    }
}

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