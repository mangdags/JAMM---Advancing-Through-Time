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

var message = new TextComponent("You haven't unlocked Calcolithic Age yet").setStyle(<constant:formatting:red>);
var stage = "calcolithic_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Calcolithic Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("create:copper_nugget");
items.add("minecraft:paper");
items.add("minecraft:copper_ingot");
items.add("minecraft:copper_ore");
items.add("minecraft:deepslate_copper_ore");
items.add("minecraft:raw_copper_block");
items.add("minecraft:copper_block");
items.add("minecraft:exposed_copper");
items.add("minecraft:weathered_copper");
items.add("minecraft:oxidized_copper");
items.add("minecraft:cut_copper");
items.add("minecraft:exposed_cut_copper");
items.add("minecraft:weathered_cut_copper");
items.add("minecraft:oxidized_cut_copper");
items.add("minecraft:cut_copper_stairs");
items.add("minecraft:exposed_cut_copper_stairs");
items.add("minecraft:weathered_cut_copper_stairs");
items.add("minecraft:oxidized_cut_copper_stairs");
items.add("minecraft:waxed_copper_block");
items.add("minecraft:waxed_exposed_copper");
items.add("minecraft:waxed_weathered_copper");
items.add("minecraft:waxed_oxidized_copper");
items.add("minecraft:waxed_cut_copper");
items.add("minecraft:waxed_exposed_cut_copper");
items.add("minecraft:waxed_weathered_cut_copper");
items.add("minecraft:waxed_oxidized_cut_copper");
items.add("minecraft:waxed_cut_copper_stairs");
items.add("minecraft:waxed_exposed_cut_copper_stairs");
items.add("minecraft:waxed_weathered_cut_copper_stairs");
items.add("minecraft:waxed_oxidized_cut_copper_stairs");
items.add("minecraft:raw_copper");
items.add("minecraft:flower_banner_pattern");
items.add("minecraft:creeper_banner_pattern");
items.add("minecraft:skull_banner_pattern");
items.add("minecraft:mojang_banner_pattern");
items.add("minecraft:globe_banner_pattern");
items.add("minecraft:piglin_banner_pattern");
items.add("minecraft:spyglass");
items.add("minecraft:lightning_rod");
items.add("mcwdoors:spruce_japanese_door");
items.add("mcwdoors:birch_japanese_door");
items.add("mcwdoors:jungle_japanese_door");
items.add("mcwdoors:acacia_japanese_door");
items.add("mcwdoors:dark_oak_japanese_door");
items.add("mcwdoors:oak_japanese_door");
items.add("mcwdoors:crimson_japanese_door");
items.add("mcwdoors:warped_japanese_door");
items.add("mcwdoors:oak_japanese2_door");
items.add("mcwdoors:spruce_japanese2_door");
items.add("mcwdoors:birch_japanese2_door");
items.add("mcwdoors:jungle_japanese2_door");
items.add("mcwdoors:acacia_japanese2_door");
items.add("mcwdoors:dark_oak_japanese2_door");
items.add("mcwdoors:crimson_japanese2_door");
items.add("mcwdoors:warped_japanese2_door");
items.add("mcwdoors:oak_paper_door");
items.add("mcwdoors:spruce_paper_door");
items.add("mcwdoors:jungle_paper_door");
items.add("mcwdoors:acacia_paper_door");
items.add("mcwdoors:dark_oak_paper_door");
items.add("mcwdoors:crimson_paper_door");
items.add("mcwdoors:warped_paper_door");
items.add("mcwdoors:oak_cottage_door");
items.add("mcwdoors:birch_cottage_door");
items.add("mcwdoors:jungle_cottage_door");
items.add("mcwdoors:acacia_cottage_door");
items.add("mcwdoors:dark_oak_cottage_door");
items.add("mcwdoors:crimson_cottage_door");
items.add("mcwdoors:warped_cottage_door");
items.add("mcwdoors:spruce_classic_door");
items.add("mcwdoors:birch_classic_door");
items.add("mcwdoors:jungle_classic_door");
items.add("mcwdoors:acacia_classic_door");
items.add("mcwdoors:dark_oak_classic_door");
items.add("mcwdoors:crimson_classic_door");
items.add("mcwdoors:warped_classic_door");
items.add("mcwdoors:oak_beach_door");
items.add("mcwdoors:spruce_beach_door");
items.add("mcwdoors:birch_beach_door");
items.add("mcwdoors:acacia_beach_door");
items.add("mcwdoors:dark_oak_beach_door");
items.add("mcwdoors:crimson_beach_door");
items.add("mcwdoors:warped_beach_door");
items.add("mcwdoors:oak_four_panel_door");
items.add("mcwdoors:spruce_four_panel_door");
items.add("mcwdoors:birch_four_panel_door");
items.add("mcwdoors:jungle_four_panel_door");
items.add("mcwdoors:acacia_four_panel_door");
items.add("mcwdoors:crimson_four_panel_door");
items.add("mcwdoors:warped_four_panel_door");
items.add("mcwdoors:oak_tropical_door");
items.add("mcwdoors:spruce_tropical_door");
items.add("mcwdoors:birch_tropical_door");
items.add("mcwdoors:jungle_tropical_door");
items.add("mcwdoors:dark_oak_tropical_door");
items.add("mcwdoors:crimson_tropical_door");
items.add("mcwdoors:warped_tropical_door");
items.add("mcwdoors:oak_mystic_door");
items.add("mcwdoors:spruce_mystic_door");
items.add("mcwdoors:birch_mystic_door");
items.add("mcwdoors:jungle_mystic_door");
items.add("mcwdoors:acacia_mystic_door");
items.add("mcwdoors:dark_oak_mystic_door");
items.add("mcwdoors:crimson_mystic_door");
items.add("mcwdoors:oak_nether_door");
items.add("mcwdoors:spruce_nether_door");
items.add("mcwdoors:birch_nether_door");
items.add("mcwdoors:jungle_nether_door");
items.add("mcwdoors:acacia_nether_door");
items.add("mcwdoors:dark_oak_nether_door");
items.add("mcwdoors:warped_nether_door");
items.add("mcwdoors:oak_swamp_door");
items.add("mcwdoors:spruce_swamp_door");
items.add("mcwdoors:birch_swamp_door");
items.add("mcwdoors:jungle_swamp_door");
items.add("mcwdoors:acacia_swamp_door");
items.add("mcwdoors:dark_oak_swamp_door");
items.add("mcwdoors:crimson_swamp_door");
items.add("mcwdoors:warped_swamp_door");
items.add("mcwtrpdoors:oak_paper_trapdoor");
items.add("mcwtrpdoors:spruce_paper_trapdoor");
items.add("mcwtrpdoors:jungle_paper_trapdoor");
items.add("mcwtrpdoors:acacia_paper_trapdoor");
items.add("mcwtrpdoors:dark_oak_paper_trapdoor");
items.add("mcwtrpdoors:crimson_paper_trapdoor");
items.add("mcwtrpdoors:warped_paper_trapdoor");
items.add("mcwtrpdoors:oak_barred_trapdoor");
items.add("mcwtrpdoors:oak_beach_trapdoor");
items.add("mcwtrpdoors:oak_cottage_trapdoor");
items.add("mcwtrpdoors:oak_four_panel_trapdoor");
items.add("mcwtrpdoors:oak_mystic_trapdoor");
items.add("mcwtrpdoors:oak_tropical_trapdoor");
items.add("mcwtrpdoors:oak_swamp_trapdoor");
items.add("mcwtrpdoors:spruce_barred_trapdoor");
items.add("mcwtrpdoors:spruce_beach_trapdoor");
items.add("mcwtrpdoors:spruce_classic_trapdoor");
items.add("mcwtrpdoors:spruce_four_panel_trapdoor");
items.add("mcwtrpdoors:spruce_mystic_trapdoor");
items.add("mcwtrpdoors:spruce_tropical_trapdoor");
items.add("mcwtrpdoors:spruce_swamp_trapdoor");
items.add("mcwtrpdoors:birch_barred_trapdoor");
items.add("mcwtrpdoors:birch_beach_trapdoor");
items.add("mcwtrpdoors:birch_classic_trapdoor");
items.add("mcwtrpdoors:birch_cottage_trapdoor");
items.add("mcwtrpdoors:birch_four_panel_trapdoor");
items.add("mcwtrpdoors:birch_mystic_trapdoor");
items.add("mcwtrpdoors:birch_tropical_trapdoor");
items.add("mcwtrpdoors:birch_swamp_trapdoor");
items.add("mcwtrpdoors:jungle_barred_trapdoor");
items.add("mcwtrpdoors:jungle_classic_trapdoor");
items.add("mcwtrpdoors:jungle_cottage_trapdoor");
items.add("mcwtrpdoors:jungle_four_panel_trapdoor");
items.add("mcwtrpdoors:jungle_mystic_trapdoor");
items.add("mcwtrpdoors:jungle_tropical_trapdoor");
items.add("mcwtrpdoors:jungle_swamp_trapdoor");
items.add("mcwtrpdoors:acacia_barred_trapdoor");
items.add("mcwtrpdoors:acacia_beach_trapdoor");
items.add("mcwtrpdoors:acacia_classic_trapdoor");
items.add("mcwtrpdoors:acacia_cottage_trapdoor");
items.add("mcwtrpdoors:acacia_four_panel_trapdoor");
items.add("mcwtrpdoors:acacia_mystic_trapdoor");
items.add("mcwtrpdoors:acacia_swamp_trapdoor");
items.add("mcwtrpdoors:dark_oak_barred_trapdoor");
items.add("mcwtrpdoors:dark_oak_beach_trapdoor");
items.add("mcwtrpdoors:dark_oak_classic_trapdoor");
items.add("mcwtrpdoors:dark_oak_cottage_trapdoor");
items.add("mcwtrpdoors:dark_oak_mystic_trapdoor");
items.add("mcwtrpdoors:dark_oak_tropical_trapdoor");
items.add("mcwtrpdoors:dark_oak_swamp_trapdoor");
items.add("mcwtrpdoors:crimson_beach_trapdoor");
items.add("mcwtrpdoors:crimson_classic_trapdoor");
items.add("mcwtrpdoors:crimson_cottage_trapdoor");
items.add("mcwtrpdoors:crimson_four_panel_trapdoor");
items.add("mcwtrpdoors:crimson_mystic_trapdoor");
items.add("mcwtrpdoors:crimson_tropical_trapdoor");
items.add("mcwtrpdoors:crimson_swamp_trapdoor");
items.add("mcwtrpdoors:warped_barred_trapdoor");
items.add("mcwtrpdoors:warped_beach_trapdoor");
items.add("mcwtrpdoors:warped_classic_trapdoor");
items.add("mcwtrpdoors:warped_cottage_trapdoor");
items.add("mcwtrpdoors:warped_four_panel_trapdoor");
items.add("mcwtrpdoors:warped_tropical_trapdoor");
items.add("mcwtrpdoors:warped_swamp_trapdoor");
items.add("natprog:copper_saw");
items.add("supplementaries:wrench");
items.add("supplementaries:copper_lantern");
items.add("supplementaries:notice_board");
items.add("supplementaries:cog_block");
items.add("sereneseasons:calendar");
items.add("valhelsia_structures:paper_wall");

//set stage to items
for item in items {
    setStageItem(stage, item);
}

tagToList(items, <tag:items:supplementaries:presents>);

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