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


var message = new TextComponent("You haven't unlocked Calcolithic Age yet").setStyle(<constant:formatting:red>);
var stage = "calcolithic_age";

var items as string [] = [
    "create:copper_nugget",
    "minecraft:paper",
    "minecraft:copper_ingot",
    "minecraft:copper_ore",
    "minecraft:deepslate_copper_ore",
    "minecraft:raw_copper_block",
    "minecraft:copper_block",
    "minecraft:exposed_copper",
    "minecraft:weathered_copper",
    "minecraft:oxidized_copper",
    "minecraft:cut_copper",
    "minecraft:exposed_cut_copper",
    "minecraft:weathered_cut_copper",
    "minecraft:oxidized_cut_copper",
    "minecraft:cut_copper_stairs",
    "minecraft:exposed_cut_copper_stairs",
    "minecraft:weathered_cut_copper_stairs",
    "minecraft:oxidized_cut_copper_stairs",
    "minecraft:waxed_copper_block",
    "minecraft:waxed_exposed_copper",
    "minecraft:waxed_weathered_copper",
    "minecraft:waxed_oxidized_copper",
    "minecraft:waxed_cut_copper",
    "minecraft:waxed_exposed_cut_copper",
    "minecraft:waxed_weathered_cut_copper",
    "minecraft:waxed_oxidized_cut_copper",
    "minecraft:waxed_cut_copper_stairs",
    "minecraft:waxed_exposed_cut_copper_stairs",
    "minecraft:waxed_weathered_cut_copper_stairs",
    "minecraft:waxed_oxidized_cut_copper_stairs",
    "minecraft:raw_copper",
    "minecraft:flower_banner_pattern",
    "minecraft:creeper_banner_pattern",
    "minecraft:skull_banner_pattern",
    "minecraft:mojang_banner_pattern",
    "minecraft:globe_banner_pattern",
    "minecraft:piglin_banner_pattern",
    "minecraft:spyglass",
    "minecraft:lightning_rod",
    "mcwdoors:spruce_japanese_door",
    "mcwdoors:birch_japanese_door",
    "mcwdoors:jungle_japanese_door",
    "mcwdoors:acacia_japanese_door",
    "mcwdoors:dark_oak_japanese_door",
    "mcwdoors:oak_japanese_door",
    "mcwdoors:crimson_japanese_door",
    "mcwdoors:warped_japanese_door",
    "mcwdoors:oak_japanese2_door",
    "mcwdoors:spruce_japanese2_door",
    "mcwdoors:birch_japanese2_door",
    "mcwdoors:jungle_japanese2_door",
    "mcwdoors:acacia_japanese2_door",
    "mcwdoors:dark_oak_japanese2_door",
    "mcwdoors:crimson_japanese2_door",
    "mcwdoors:warped_japanese2_door",
    "mcwdoors:oak_paper_door",
    "mcwdoors:spruce_paper_door",
    "mcwdoors:jungle_paper_door",
    "mcwdoors:acacia_paper_door",
    "mcwdoors:dark_oak_paper_door",
    "mcwdoors:crimson_paper_door",
    "mcwdoors:warped_paper_door",
    "mcwdoors:oak_cottage_door",
    "mcwdoors:birch_cottage_door",
    "mcwdoors:jungle_cottage_door",
    "mcwdoors:acacia_cottage_door",
    "mcwdoors:dark_oak_cottage_door",
    "mcwdoors:crimson_cottage_door",
    "mcwdoors:warped_cottage_door",
    "mcwdoors:spruce_classic_door",
    "mcwdoors:birch_classic_door",
    "mcwdoors:jungle_classic_door",
    "mcwdoors:acacia_classic_door",
    "mcwdoors:dark_oak_classic_door",
    "mcwdoors:crimson_classic_door",
    "mcwdoors:warped_classic_door",
    "mcwdoors:oak_beach_door",
    "mcwdoors:spruce_beach_door",
    "mcwdoors:birch_beach_door",
    "mcwdoors:acacia_beach_door",
    "mcwdoors:dark_oak_beach_door",
    "mcwdoors:crimson_beach_door",
    "mcwdoors:warped_beach_door",
    "mcwdoors:oak_four_panel_door",
    "mcwdoors:spruce_four_panel_door",
    "mcwdoors:birch_four_panel_door",
    "mcwdoors:jungle_four_panel_door",
    "mcwdoors:acacia_four_panel_door",
    "mcwdoors:crimson_four_panel_door",
    "mcwdoors:warped_four_panel_door",
    "mcwdoors:oak_tropical_door",
    "mcwdoors:spruce_tropical_door",
    "mcwdoors:birch_tropical_door",
    "mcwdoors:jungle_tropical_door",
    "mcwdoors:dark_oak_tropical_door",
    "mcwdoors:crimson_tropical_door",
    "mcwdoors:warped_tropical_door",
    "mcwdoors:oak_mystic_door",
    "mcwdoors:spruce_mystic_door",
    "mcwdoors:birch_mystic_door",
    "mcwdoors:jungle_mystic_door",
    "mcwdoors:acacia_mystic_door",
    "mcwdoors:dark_oak_mystic_door",
    "mcwdoors:crimson_mystic_door",
    "mcwdoors:oak_nether_door",
    "mcwdoors:spruce_nether_door",
    "mcwdoors:birch_nether_door",
    "mcwdoors:jungle_nether_door",
    "mcwdoors:acacia_nether_door",
    "mcwdoors:dark_oak_nether_door",
    "mcwdoors:warped_nether_door",
    "mcwdoors:oak_swamp_door",
    "mcwdoors:spruce_swamp_door",
    "mcwdoors:birch_swamp_door",
    "mcwdoors:jungle_swamp_door",
    "mcwdoors:acacia_swamp_door",
    "mcwdoors:dark_oak_swamp_door",
    "mcwdoors:crimson_swamp_door",
    "mcwdoors:warped_swamp_door",
    "mcwtrpdoors:oak_paper_trapdoor",
    "mcwtrpdoors:spruce_paper_trapdoor",
    "mcwtrpdoors:jungle_paper_trapdoor",
    "mcwtrpdoors:acacia_paper_trapdoor",
    "mcwtrpdoors:dark_oak_paper_trapdoor",
    "mcwtrpdoors:crimson_paper_trapdoor",
    "mcwtrpdoors:warped_paper_trapdoor",
    "mcwtrpdoors:oak_barred_trapdoor",
    "mcwtrpdoors:oak_beach_trapdoor",
    "mcwtrpdoors:oak_cottage_trapdoor",
    "mcwtrpdoors:oak_four_panel_trapdoor",
    "mcwtrpdoors:oak_mystic_trapdoor",
    "mcwtrpdoors:oak_tropical_trapdoor",
    "mcwtrpdoors:oak_swamp_trapdoor",
    "mcwtrpdoors:spruce_barred_trapdoor",
    "mcwtrpdoors:spruce_beach_trapdoor",
    "mcwtrpdoors:spruce_classic_trapdoor",
    "mcwtrpdoors:spruce_four_panel_trapdoor",
    "mcwtrpdoors:spruce_mystic_trapdoor",
    "mcwtrpdoors:spruce_tropical_trapdoor",
    "mcwtrpdoors:spruce_swamp_trapdoor",
    "mcwtrpdoors:birch_barred_trapdoor",
    "mcwtrpdoors:birch_beach_trapdoor",
    "mcwtrpdoors:birch_classic_trapdoor",
    "mcwtrpdoors:birch_cottage_trapdoor",
    "mcwtrpdoors:birch_four_panel_trapdoor",
    "mcwtrpdoors:birch_mystic_trapdoor",
    "mcwtrpdoors:birch_tropical_trapdoor",
    "mcwtrpdoors:birch_swamp_trapdoor",
    "mcwtrpdoors:jungle_barred_trapdoor",
    "mcwtrpdoors:jungle_classic_trapdoor",
    "mcwtrpdoors:jungle_cottage_trapdoor",
    "mcwtrpdoors:jungle_four_panel_trapdoor",
    "mcwtrpdoors:jungle_mystic_trapdoor",
    "mcwtrpdoors:jungle_tropical_trapdoor",
    "mcwtrpdoors:jungle_swamp_trapdoor",
    "mcwtrpdoors:acacia_barred_trapdoor",
    "mcwtrpdoors:acacia_beach_trapdoor",
    "mcwtrpdoors:acacia_classic_trapdoor",
    "mcwtrpdoors:acacia_cottage_trapdoor",
    "mcwtrpdoors:acacia_four_panel_trapdoor",
    "mcwtrpdoors:acacia_mystic_trapdoor",
    "mcwtrpdoors:acacia_swamp_trapdoor",
    "mcwtrpdoors:dark_oak_barred_trapdoor",
    "mcwtrpdoors:dark_oak_beach_trapdoor",
    "mcwtrpdoors:dark_oak_classic_trapdoor",
    "mcwtrpdoors:dark_oak_cottage_trapdoor",
    "mcwtrpdoors:dark_oak_mystic_trapdoor",
    "mcwtrpdoors:dark_oak_tropical_trapdoor",
    "mcwtrpdoors:dark_oak_swamp_trapdoor",
    "mcwtrpdoors:crimson_beach_trapdoor",
    "mcwtrpdoors:crimson_classic_trapdoor",
    "mcwtrpdoors:crimson_cottage_trapdoor",
    "mcwtrpdoors:crimson_four_panel_trapdoor",
    "mcwtrpdoors:crimson_mystic_trapdoor",
    "mcwtrpdoors:crimson_tropical_trapdoor",
    "mcwtrpdoors:crimson_swamp_trapdoor",
    "mcwtrpdoors:warped_barred_trapdoor",
    "mcwtrpdoors:warped_beach_trapdoor",
    "mcwtrpdoors:warped_classic_trapdoor",
    "mcwtrpdoors:warped_cottage_trapdoor",
    "mcwtrpdoors:warped_four_panel_trapdoor",
    "mcwtrpdoors:warped_tropical_trapdoor",
    "mcwtrpdoors:warped_swamp_trapdoor",
    "natprog:copper_saw",
    "supplementaries:wrench",
    "supplementaries:rope_arrow",
    "supplementaries:copper_lantern",
    "supplementaries:notice_board",
    "supplementaries:cog_block",
    "sereneseasons:calendar",
    "valhelsia_structures:paper_wall",
    "supplementaries:present_white",
    "supplementaries:present_orange",
    "supplementaries:present_magenta",
    "supplementaries:present_light_blue",
    "supplementaries:present_yellow",
    "supplementaries:present_lime",
    "supplementaries:present_pink",
    "supplementaries:present_gray",
    "supplementaries:present_light_gray",
    "supplementaries:present_cyan",
    "supplementaries:present_purple",
    "supplementaries:present_blue",
    "supplementaries:present_brown",
    "supplementaries:present_green",
    "supplementaries:present_red",
    "supplementaries:present_black",
    "supplementaries:present"
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
var toolTip2 = new TextComponent("Unlock Calcolithic Age").setStyle(<constant:formatting:dark_red>);

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