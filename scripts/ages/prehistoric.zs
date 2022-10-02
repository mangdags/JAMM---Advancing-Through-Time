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
import crafttweaker.api.event.entity.player.interact.PlayerInteractEvent;
import crafttweaker.api.item.type.block.BlockItem;

#priority 99

var listItem as IItemStack [] = [
    <item:natprog:flint_hatchet>,
    <item:farmersdelight:flint_knife>,
    <item:minecraft:flint>,
    <item:natprog:basic_saw>,
    <item:supplementaries:flint_block>,
    <item:minecraft:sand>,
    <item:minecraft:gravel>,
    <item:minecraft:carrot>,
    <item:minecraft:potato>,
    <item:minecraft:wheat>,
    <item:minecraft:bread>,
    <item:minecraft:beetroot>,
    <item:minecraft:apple>,
    <item:minecraft:wheat_seeds>,
    <item:projectbrazier:white_cabbage>,
    <item:minecraft:stick>,
    <item:minecraft:crafting_table>
];

var listBlock as IItemStack [] = [
    <block:supplementaries:flint_block>,
    <block:minecraft:sand>,
    <block:minecraft:gravel>,
    <block:minecraft:wheat>,
    <block:minecraft:crafting_table>
];

var testString as string [] = [
    "natprog:flint_hatchet",
    "farmersdelight:flint_knife",
    "minecraft:flint",
    "natprog:basic_saw",
    "supplementaries:flint_block",
    "minecraft:sand",
    "minecraft:gravel",
    "minecraft:carrot",
    "minecraft:potato",
    "minecraft:wheat",
    "minecraft:bread",
    "minecraft:beetroot",
    "minecraft:apple",
    "minecraft:wheat_seeds",
    "projectbrazier:white_cabbage",
    "minecraft:stick",
    "minecraft:crafting_table"
];

for item in listItem {
    setStagedItem("prehistoric_age", item);
}

var listTag as MCTag [] = [
    <tag:items:minecraft:wools>,
    <tag:items:minecraft:logs>,
    <tag:items:minecraft:planks>,
    <tag:items:minecraft:beds>
];


for tag in listTag {
    setStagedTag("prehistoric_age", tag); 
}

var exceptItem as IItemStack [] = [
    <item:minecraft:crimson_planks>,
    <item:minecraft:warped_planks>,
    <item:minecraft:crimson_slab>,
    <item:minecraft:warped_slab>,
    <item:minecraft:crimson_stem>,
    <item:minecraft:warped_stem>,
    <item:immersiveengineering:fiberboard>
];

for item in exceptItem {
    removeStagedItem(item);
}

public class ExceptionTest {
    public var message as string;
  
    public this(mess as string) {
        this.message = mess;
    }  
}

//empty hand
CTEventManager.register<PlayerInteractEvent>((event) =>{
    var player = event.player;
    var level = player.level;
    var pos = event.blockPos;
    
    var message = new TextComponent("You cannot interact with this item").setStyle(<constant:formatting:red>);

    for item in testString {
        if event.getItemStack().registryName.toString() == item && level.getBlockState(pos).block.registryName.toString() != "minecraft:air"{
            if !player.hasGameStage("prehistoric_age") {
                player.displayClientMessage(message, true);
                event.cancel();
            }
        }
    }

});



CTEventManager.register<LeftClickBlockEvent>((event) => {
    var player = event.player;
    var level = player.level;
    var pos = event.blockPos;
    var usedItem = event.getUseItem();
    var usedBlock = event.getUseBlock();

    var message = new TextComponent("You cannot break this block").setStyle(<constant:formatting:red>);

    for block in testString {
        if level.getBlockState(pos).block.registryName.toString() == block {
            if !player.hasGameStage("prehistoric_age") {
                player.displayClientMessage(message, true);
                event.cancel();
            }
        }
    }

    

    for tag in listTag {
        if level.getBlockState(pos).block == tag{
            if !player.hasGameStage("prehistoric_age") {
                player.displayClientMessage(message, true);
                event.cancel();
            }
        }
    }
});

CTEventManager.register<RightClickBlockEvent>((event) => {
    var player = event.player;
    var level = player.level;
    var pos = event.blockPos;
    var message = new TextComponent("You cannot use this block").setStyle(<constant:formatting:red>);

    for item in testString {
        if level.getBlockState(pos).block.registryName.toString() == item{
            println(item);
            if !player.hasGameStage("prehistoric_age") {
                player.displayClientMessage(message, true);
                event.cancel();
            }
        }
    }

});

