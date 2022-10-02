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
import crafttweaker.api.tag.manager.ITagManager;

#priority 99

var items as string [] = [
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
    "minecraft:crafting_table",
    "minecraft:oak_log",
    "minecraft:spruce_log",
    "minecraft:birch_log",
    "minecraft:jungle_log",
    "minecraft:acacia_log",
    "minecraft:dark_oak_log",
    "minecraft:stripped_oak_log",
    "minecraft:stripped_spruce_log",
    "minecraft:stripped_birch_log",
    "minecraft:stripped_jungle_log",
    "minecraft:stripped_acacia_log",
    "minecraft:stripped_dark_oak_log",
    "minecraft:stripped_oak_wood",
    "minecraft:stripped_spruce_wood",
    "minecraft:stripped_birch_wood",
    "minecraft:stripped_jungle_wood",
    "minecraft:stripped_acacia_wood",
    "minecraft:stripped_dark_oak_wood",
    "minecraft:oak_wood",
    "minecraft:spruce_wood",
    "minecraft:birch_wood",
    "minecraft:jungle_wood",
    "minecraft:acacia_wood",
    "minecraft:dark_oak_wood",
    "minecraft:white_wool",
    "minecraft:orange_wool",
    "minecraft:magenta_wool",
    "minecraft:light_blue_wool",
    "minecraft:yellow_wool",
    "minecraft:lime_wool",
    "minecraft:pink_wool",
    "minecraft:gray_wool",
    "minecraft:light_gray_wool",
    "minecraft:cyan_wool",
    "minecraft:purple_wool",
    "minecraft:blue_wool",
    "minecraft:brown_wool",
    "minecraft:green_wool",
    "minecraft:red_wool",
    "minecraft:black_wool",
    "minecraft:oak_planks",
    "minecraft:spruce_planks",
    "minecraft:birch_planks",
    "minecraft:jungle_planks",
    "minecraft:acacia_planks",
    "minecraft:dark_oak_planks",
    "minecraft:white_bed",
    "minecraft:orange_bed",
    "minecraft:magenta_bed",
    "minecraft:light_blue_bed",
    "minecraft:yellow_bed",
    "minecraft:lime_bed",
    "minecraft:pink_bed",
    "minecraft:gray_bed",
    "minecraft:light_gray_bed",
    "minecraft:cyan_bed",
    "minecraft:purple_bed",
    "minecraft:blue_bed",
    "minecraft:brown_bed",
    "minecraft:green_bed",
    "minecraft:red_bed",
    "minecraft:black_bed"
];

//set stage to items
for item in items {
    setStageItem("prehistoric_age", item);
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

var message = new TextComponent("You haven't unlocked Prehistoric Age yet").setStyle(<constant:formatting:red>);
var stage = "prehistoric_age";

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


/*
var listStr as string [] = [
    "tag:items:minecraft:wools"
];


for tag in listTag {
    setStagedTag("prehistoric_age", tag); 
}
var listTag as MCTag [] = [
    <tag:items:minecraft:wools>,
    <tag:items:minecraft:logs>,
    <tag:items:minecraft:planks>,
    <tag:items:minecraft:beds>
];

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

for item in listItem {
    //setStagedItem("prehistoric_age", item);
}
*/