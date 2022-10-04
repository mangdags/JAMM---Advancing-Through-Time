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

var message = new TextComponent("You haven't unlocked Bronze Age yet").setStyle(<constant:formatting:red>);
var stage = "bronze_age";

var items as string [] = [
    "fusion:bronze_ingot",
    "fusion:bronze_helmet",
    "fusion:bronze_leggings",
    "fusion:bronze_chestplate",
    "fusion:bronze_boots",
    "fusion:bronze_sword",
    "fusion:bronze_pickaxe",
    "fusion:bronze_axe",
    "fusion:bronze_shovel",
    "fusion:bronze_hoe",
    "fusion:bronze_shears",
    "fusion:bronze_block",
    "fusion:bronze_bricks",
    "fusion:bronze_brick_slab",
    "fusion:bronze_brick_stairs",
    "fusion:bronze_bars",
    "fusion:bronze_door",
    "fusion:bronze_nugget",
    "fusion:large_bronze_chunk",
    "fusion:medium_bronze_chunk",
    "jousting:lance_gold",
    "mekanism:ingot_bronze",
    "mekanism:nugget_bronze",
    "mekanism:block_bronze",
    "mekanism:ingot_tin",
    "mekanism:raw_tin",
    "mekanism:nugget_tin",
    "mekanism:block_tin",
    "mekanism:block_raw_tin",
    "mekanism:tin_ore",
    "mekanism:deepslate_tin_ore",
    "minecraft:raw_gold",
    "minecraft:light_weighted_pressure_plate",
    "minecraft:golden_boots",
    "minecraft:golden_helmet",
    "minecraft:golden_sword",
    "minecraft:raw_gold_block",
    "minecraft:golden_horse_armor",
    "minecraft:golden_carrot",
    "minecraft:glistering_melon_slice",
    "minecraft:gold_ore",
    "minecraft:golden_pickaxe",
    "minecraft:gold_nugget",
    "minecraft:gold_ingot",
    "minecraft:golden_apple",
    "minecraft:golden_shovel",
    "minecraft:deepslate_gold_ore",
    "minecraft:golden_axe",
    "minecraft:gold_block",
    "minecraft:golden_leggings",
    "minecraft:golden_hoe",
    "minecraft:golden_chestplate",
    "natprog:bronze_saw",
    "natprog:golden_saw",
    "parrying:golden_hammer",
    "parrying:golden_mace",
    "parrying:golden_dagger",
    "parrying:gold_spear",
    "parrying:gold_flail",
    "sophisticatedstorage:gold_barrel",
    "sophisticatedstorage:gold_chest",
    "sophisticatedbackpacks:gold_backpack",
    "supplementaries:gold_door",
    "supplementaries:gold_trapdoor",
    "supplementaries:key",
    "toms_storage:ts.inventory_connector",
    "toms_storage:ts.storage_terminal",
    "toms_storage:ts.open_crate",
    "toms_storage:ts.trim",
    "toms_storage:ts.inventory_cable",
    "toms_storage:ts.inventory_cable_framed",
    "toms_storage:ts.inventory_cable_connector",
    "toms_storage:ts.inventory_cable_connector_filtered",
    "toms_storage:ts.inventory_proxy",
    "toms_storage:ts.crafting_terminal",
    "toms_storage:ts.inventory_cable_connector_framed"
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
var toolTip2 = new TextComponent("Unlock Bronze Age").setStyle(<constant:formatting:dark_red>);

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