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

var message = new TextComponent("You haven't unlocked Bronze Age yet").setStyle(<constant:formatting:red>);
var stage = "bronze_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Bronze Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("fusion:bronze_ingot");
items.add("fusion:bronze_helmet");
items.add("fusion:bronze_leggings");
items.add("fusion:bronze_chestplate");
items.add("fusion:bronze_boots");
items.add("fusion:bronze_sword");
items.add("fusion:bronze_pickaxe");
items.add("fusion:bronze_axe");
items.add("fusion:bronze_shovel");
items.add("fusion:bronze_hoe");
items.add("fusion:bronze_shears");
items.add("fusion:bronze_block");
items.add("fusion:bronze_bricks");
items.add("fusion:bronze_brick_slab");
items.add("fusion:bronze_brick_stairs");
items.add("fusion:bronze_bars");
items.add("fusion:bronze_door");
items.add("fusion:bronze_nugget");
items.add("fusion:large_bronze_chunk");
items.add("fusion:medium_bronze_chunk");
items.add("jousting:lance_gold");
items.add("mekanism:ingot_bronze");
items.add("mekanism:nugget_bronze");
items.add("mekanism:block_bronze");
items.add("mekanism:ingot_tin");
items.add("mekanism:raw_tin");
items.add("mekanism:nugget_tin");
items.add("mekanism:block_tin");
items.add("mekanism:block_raw_tin");
items.add("mekanism:tin_ore");
items.add("mekanism:deepslate_tin_ore");
items.add("minecraft:raw_gold");
items.add("minecraft:light_weighted_pressure_plate");
items.add("minecraft:golden_boots");
items.add("minecraft:golden_helmet");
items.add("minecraft:golden_sword");
items.add("minecraft:raw_gold_block");
items.add("minecraft:golden_horse_armor");
items.add("minecraft:golden_carrot");
items.add("minecraft:glistering_melon_slice");
items.add("minecraft:gold_ore");
items.add("minecraft:golden_pickaxe");
items.add("minecraft:gold_nugget");
items.add("minecraft:gold_ingot");
items.add("minecraft:golden_apple");
items.add("minecraft:golden_shovel");
items.add("minecraft:deepslate_gold_ore");
items.add("minecraft:golden_axe");
items.add("minecraft:gold_block");
items.add("minecraft:golden_leggings");
items.add("minecraft:golden_hoe");
items.add("minecraft:golden_chestplate");
items.add("natprog:bronze_saw");
items.add("natprog:golden_saw");
items.add("parrying:golden_hammer");
items.add("parrying:golden_mace");
items.add("parrying:golden_dagger");
items.add("parrying:gold_spear");
items.add("parrying:gold_flail");
items.add("sophisticatedstorage:gold_barrel");
items.add("sophisticatedstorage:gold_chest");
items.add("sophisticatedbackpacks:gold_backpack");
items.add("supplementaries:gold_door");
items.add("supplementaries:gold_trapdoor");
items.add("supplementaries:key");
items.add("toms_storage:ts.inventory_connector");
items.add("toms_storage:ts.storage_terminal");
items.add("toms_storage:ts.open_crate");
items.add("toms_storage:ts.trim");
items.add("toms_storage:ts.inventory_cable");
items.add("toms_storage:ts.inventory_cable_framed");
items.add("toms_storage:ts.inventory_cable_connector");
items.add("toms_storage:ts.inventory_cable_connector_filtered");
items.add("toms_storage:ts.inventory_proxy");
items.add("toms_storage:ts.crafting_terminal");
items.add("toms_storage:ts.inventory_cable_connector_framed");

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