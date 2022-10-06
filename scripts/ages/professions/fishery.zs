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

var message = new TextComponent("You haven't unlocked Fishery yet").setStyle(<constant:formatting:red>);
var stage = "fishery";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Fishery").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("minecraft:dead_tube_coral_block");
items.add("minecraft:dead_brain_coral_block");
items.add("minecraft:dead_bubble_coral_block");
items.add("minecraft:dead_fire_coral_block");
items.add("minecraft:dead_horn_coral_block");
items.add("minecraft:tube_coral_block");
items.add("minecraft:brain_coral_block");
items.add("minecraft:bubble_coral_block");
items.add("minecraft:fire_coral_block");
items.add("minecraft:horn_coral_block");
items.add("minecraft:tube_coral");
items.add("minecraft:brain_coral");
items.add("minecraft:bubble_coral");
items.add("minecraft:fire_coral");
items.add("minecraft:horn_coral");
items.add("minecraft:dead_brain_coral");
items.add("minecraft:dead_bubble_coral");
items.add("minecraft:dead_fire_coral");
items.add("minecraft:dead_horn_coral");
items.add("minecraft:dead_tube_coral");
items.add("minecraft:tube_coral_fan");
items.add("minecraft:brain_coral_fan");
items.add("minecraft:bubble_coral_fan");
items.add("minecraft:fire_coral_fan");
items.add("minecraft:horn_coral_fan");
items.add("minecraft:dead_tube_coral_fan");
items.add("minecraft:dead_brain_coral_fan");
items.add("minecraft:dead_bubble_coral_fan");
items.add("minecraft:dead_fire_coral_fan");
items.add("minecraft:dead_horn_coral_fan");
items.add("minecraft:seagrass");
items.add("minecraft:sea_pickle");
items.add("minecraft:heart_of_the_sea");
items.add("minecraft:sea_lantern");
items.add("minecraft:dried_kelp");
items.add("minecraft:dried_kelp_block");
items.add("minecraft:conduit");
items.add("minecraft:nautilus_shell");
items.add("minecraft:prismarine_shard");
items.add("minecraft:prismarine_crystals");
items.add("minecraft:kelp");
items.add("minecraft:pufferfish");
items.add("minecraft:ink_sac");
items.add("minecraft:glow_ink_sac");
items.add("minecraft:oak_boat");
items.add("minecraft:spruce_boat");
items.add("minecraft:birch_boat");
items.add("minecraft:jungle_boat");
items.add("minecraft:acacia_boat");
items.add("minecraft:dark_oak_boat");

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