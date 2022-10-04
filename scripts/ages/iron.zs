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

var message = new TextComponent("You haven't unlocked Iron Age yet").setStyle(<constant:formatting:red>);
var stage = "iron_age";

var items as string [] = [
    "alcocraft:spruce_mug_magnet_pilsner",
    "create:ornate_iron_window",
    "farmersdelight:golden_knife",
    "immersiveposts:fence_iron",
    "jousting:lance_iron",
    "minecraft:anvil",
    "minecraft:redstone_ore",
    "minecraft:deepslate_redstone_ore",
    "minecraft:redstone",
    "minecraft:redstone_torch",
    "minecraft:redstone_block",
    "minecraft:redstone_lamp",
    "minecraft:deepslate_iron_ore",
    "minecraft:iron_axe",
    "minecraft:iron_bars",
    "minecraft:iron_block",
    "minecraft:iron_boots",
    "minecraft:iron_chestplate",
    "minecraft:iron_door",
    "minecraft:iron_helmet",
    "minecraft:iron_hoe",
    "minecraft:iron_horse_armor",
    "minecraft:iron_ingot",
    "minecraft:iron_leggings",
    "minecraft:iron_nugget",
    "minecraft:iron_ore",
    "minecraft:iron_pickaxe",
    "minecraft:iron_shovel",
    "minecraft:iron_sword",
    "minecraft:iron_trapdoor",
    "minecraft:raw_iron",
    "minecraft:raw_iron_block",
    "minecraft:flint_and_steel",
    "minecraft:bucket",
    "minecraft:shield",
    "minecraft:name_tag",
    "minecraft:cauldron",
    "minecraft:shears",
    "minecraft:compass",
    "minecraft:water_bucket",
    "minecraft:lava_bucket",
    "minecraft:powder_snow_bucket",
    "minecraft:milk_bucket",
    "minecraft:pufferfish_bucket",
    "minecraft:salmon_bucket",
    "minecraft:cod_bucket",
    "minecraft:tropical_fish_bucket",
    "minecraft:axolotl_bucket",
    "minecraft:tripwire_hook",
    "minecraft:blast_furnace",
    "minecraft:stonecutter",
    "minecraft:lantern",
    "minecraft:soul_lantern",
    "minecraft:piston",
    "minecraft:sticky_piston",
    "minecraft:hopper",
    "minecraft:heavy_weighted_pressure_plate",
    "minecraft:chain",
    "minecraft:trapped_chest",
    "minecraft:chest_minecart",
    "minecraft:smithing_table",
    "minecraft:rail",
    "minecraft:activator_rail",
    "minecraft:detector_rail",
    "minecraft:minecart",
    "minecraft:furnace_minecart",
    "minecraft:tnt_minecart",
    "minecraft:hopper_minecart",
    "minecraft:crossbow",
    "minecraft:redstone",
    "minecraft:obsidian",
    "minecraft:crying_obsidian",
    "minecraft:clock",
    "minecraft:enchanting_table",
    "minecraft:observer",
    "minecraft:dispenser",
    "minecraft:dropper",
    "minecraft:target",
    "minecraft:daylight_detector",
    "minecraft:chipped_anvil",
    "minecraft:damaged_anvil",
    "minecraft:ender_chest",
    "fusion:fusion_furnace",
    "minecraft:chainmail_helmet",
    "minecraft:chainmail_chestplate",
    "minecraft:chainmail_leggings",
    "minecraft:chainmail_boots",
    "minecraft:lever",
    "minecraft:lectern",
    "minecraft:glass_bottle",
    "minecraft:bell",
    "minecraft:fermented_spider_eye",
    "minecraft:map",
    "minecraft:bookshelf",
    "minecraft:wither_skeleton_skull",
    "minecraft:ender_pearl",
    "minecraft:totem_of_undying",
    "minecraft:phantom_membrane",
    "mcwbridges:iron_bridge_pier",
    "mcwbridges:iron_bridge_stair",
    "mcwbridges:pliers",
    "mcwbridges:iron_bridge",
    "mcwdoors:metal_door",
    "mcwdoors:metal_warning_door",
    "mcwdoors:metal_hospital_door",
    "mcwdoors:metal_reinforced_door",
    "mcwdoors:metal_windowed_door",
    "mcwdoors:jail_door",
    "mcwdoors:garage_white_door",
    "mcwdoors:garage_silver_door",
    "mcwdoors:garage_gray_door",
    "mcwdoors:garage_black_door",
    "mcwdoors:oak_barn_glass_door",
    "mcwdoors:spruce_barn_glass_door",
    "mcwdoors:birch_barn_glass_door",
    "mcwdoors:jungle_barn_glass_door",
    "mcwdoors:acacia_barn_glass_door",
    "mcwdoors:dark_oak_barn_glass_door",
    "mcwdoors:crimson_barn_glass_door",
    "mcwdoors:warped_barn_glass_door",
    "mcwdoors:oak_glass_door",
    "mcwdoors:spruce_glass_door",
    "mcwdoors:birch_glass_door",
    "mcwdoors:jungle_glass_door",
    "mcwdoors:acacia_glass_door",
    "mcwdoors:dark_oak_glass_door",
    "mcwdoors:crimson_glass_door",
    "mcwdoors:warped_glass_door",
    "mcwdoors:oak_bark_glass_door",
    "mcwdoors:spruce_bark_glass_door",
    "mcwdoors:birch_bark_glass_door",
    "mcwdoors:jungle_bark_glass_door",
    "mcwdoors:acacia_bark_glass_door",
    "mcwdoors:dark_oak_bark_glass_door",
    "mcwdoors:crimson_stem_glass_door",
    "mcwdoors:warped_stem_glass_door",
    "mcwdoors:oak_modern_door",
    "mcwdoors:spruce_modern_door",
    "mcwdoors:birch_modern_door",
    "mcwdoors:jungle_modern_door",
    "mcwdoors:acacia_modern_door",
    "mcwdoors:dark_oak_modern_door",
    "mcwdoors:crimson_modern_door",
    "mcwdoors:warped_modern_door",
    "mcwdoors:oak_stable_door",
    "mcwdoors:spruce_stable_door",
    "mcwdoors:birch_stable_door",
    "mcwdoors:jungle_stable_door",
    "mcwdoors:acacia_stable_door",
    "mcwdoors:dark_oak_stable_door",
    "mcwdoors:crimson_stable_door",
    "mcwdoors:warped_stable_door",
    "mcwdoors:oak_stable_head_door",
    "mcwdoors:spruce_stable_head_door",
    "mcwdoors:birch_stable_head_door",
    "mcwdoors:jungle_stable_head_door",
    "mcwdoors:acacia_stable_head_door",
    "mcwdoors:dark_oak_stable_head_door",
    "mcwdoors:crimson_stable_head_door",
    "mcwdoors:warped_stable_head_door",
    "mcwtrpdoors:metal_full_trapdoor",
    "mcwtrpdoors:metal_warning_trapdoor",
    "mcwtrpdoors:oak_glass_trapdoor",
    "mcwtrpdoors:spruce_glass_trapdoor",
    "mcwtrpdoors:birch_glass_trapdoor",
    "mcwtrpdoors:jungle_glass_trapdoor",
    "mcwtrpdoors:acacia_glass_trapdoor",
    "mcwtrpdoors:dark_oak_glass_trapdoor",
    "mcwtrpdoors:crimson_glass_trapdoor",
    "mcwtrpdoors:warped_glass_trapdoor",
    "mcwtrpdoors:oak_bark_trapdoor",
    "mcwtrpdoors:spruce_bark_trapdoor",
    "mcwtrpdoors:birch_bark_trapdoor",
    "mcwtrpdoors:jungle_bark_trapdoor",
    "mcwtrpdoors:acacia_bark_trapdoor",
    "mcwtrpdoors:dark_oak_bark_trapdoor",
    "mcwtrpdoors:crimson_bark_trapdoor",
    "mcwtrpdoors:warped_bark_trapdoor",
    "mcwtrpdoors:spruce_barn_trapdoor",
    "mcwtrpdoors:birch_barn_trapdoor",
    "mcwtrpdoors:jungle_barn_trapdoor",
    "mcwtrpdoors:acacia_barn_trapdoor",
    "mcwwindows:hammer",
    "mowziesmobs:naga_fang_dagger",
    "natprog:improved_saw",
    "parrying:iron_mace",
    "parrying:iron_hammer",
    "parrying:iron_dagger",
    "parrying:iron_spear",
    "projectbrazier:nail",
    "projectbrazier:iron_brazier",
    "projectbrazier:iron_fire_bowl",
    "projectbrazier:gold_spyglass",
    "projectbrazier:empty_candle_holder",
    "projectbrazier:empty_wall_candle_holder",
    "projectbrazier:empty_wall_torch_holder",
    "projectbrazier:jail_lattice",
    "projectbrazier:wall_candle_holder",
    "projectbrazier:white_wall_candle_holder",
    "projectbrazier:orange_wall_candle_holder",
    "projectbrazier:magenta_wall_candle_holder",
    "projectbrazier:light_blue_wall_candle_holder",
    "projectbrazier:yellow_wall_candle_holder",
    "projectbrazier:lime_wall_candle_holder",
    "projectbrazier:pink_wall_candle_holder",
    "projectbrazier:gray_wall_candle_holder",
    "projectbrazier:light_gray_wall_candle_holder",
    "projectbrazier:cyan_wall_candle_holder",
    "projectbrazier:purple_wall_candle_holder",
    "projectbrazier:blue_wall_candle_holder",
    "projectbrazier:brown_wall_candle_holder",
    "projectbrazier:green_wall_candle_holder",
    "projectbrazier:red_wall_candle_holder",
    "projectbrazier:black_wall_candle_holder",
    "projectbrazier:candle_holder",
    "projectbrazier:white_candle_holder",
    "projectbrazier:orange_candle_holder",
    "projectbrazier:magenta_candle_holder",
    "projectbrazier:light_blue_candle_holder",
    "projectbrazier:yellow_candle_holder",
    "projectbrazier:lime_candle_holder",
    "projectbrazier:pink_candle_holder",
    "projectbrazier:gray_candle_holder",
    "projectbrazier:light_gray_candle_holder",
    "projectbrazier:cyan_candle_holder",
    "projectbrazier:purple_candle_holder",
    "projectbrazier:blue_candle_holder",
    "projectbrazier:brown_candle_holder",
    "projectbrazier:green_candle_holder",
    "projectbrazier:red_candle_holder",
    "projectbrazier:black_candle_holder",
    "projectbrazier:wall_torch_holder",
    "projectbrazier:wall_soul_torch_holder",
    "projectbrazier:traces_of_coal_ore",
    "projectbrazier:poor_coal_ore",
    "projectbrazier:rich_coal_ore",
    "projectbrazier:traces_of_deepslate_coal_ore",
    "projectbrazier:poor_deepslate_coal_ore",
    "projectbrazier:rich_deepslate_coal_ore",
    "supplementaries:iron_gate",
    "supplementaries:redstone_illuminator",
    "supplementaries:hourglass",
    "sophisticatedstorage:iron_barrel",
    "sophisticatedstorage:iron_chest",
    "sophisticatedbackpacks:iron_backpack",
    "sophisticatedbackpacks:pickup_upgrade",
    "sophisticatedbackpacks:filter_upgrade",
    "sophisticatedbackpacks:advanced_filter_upgrade",
    "sophisticatedbackpacks:magnet_upgrade",
    "sophisticatedbackpacks:feeding_upgrade",
    "sophisticatedbackpacks:compacting_upgrade",
    "sophisticatedbackpacks:void_upgrade",
    "sophisticatedbackpacks:restock_upgrade",
    "sophisticatedbackpacks:deposit_upgrade",
    "sophisticatedbackpacks:refill_upgrade",
    "sophisticatedbackpacks:smelting_upgrade",
    "sophisticatedbackpacks:smoking_upgrade",
    "sophisticatedbackpacks:blasting_upgrade",
    "sophisticatedbackpacks:crafting_upgrade",
    "sophisticatedbackpacks:stonecutter_upgrade",
    "sophisticatedbackpacks:stack_upgrade_tier_1",
    "sophisticatedbackpacks:stack_upgrade_tier_2",
    "sophisticatedbackpacks:tool_swapper_upgrade",
    "sophisticatedbackpacks:tank_upgrade",
    "sophisticatedbackpacks:battery_upgrade",
    "sophisticatedbackpacks:pump_upgrade",
    "sophisticatedbackpacks:upgrade_base",
    "sophisticatedstorage:storage_tool",
    "sophisticatedstorage:packing_tape",
    "sophisticatedstorage:pickup_upgrade",
    "sophisticatedstorage:filter_upgrade",
    "sophisticatedstorage:advanced_filter_upgrade",
    "sophisticatedstorage:magnet_upgrade",
    "sophisticatedstorage:feeding_upgrade",
    "sophisticatedstorage:compacting_upgrade",
    "sophisticatedstorage:void_upgrade",
    "sophisticatedstorage:smelting_upgrade",
    "sophisticatedstorage:smoking_upgrade",
    "sophisticatedstorage:blasting_upgrade",
    "sophisticatedstorage:crafting_upgrade",
    "sophisticatedstorage:stonecutter_upgrade",
    "sophisticatedstorage:stack_upgrade_tier_1",
    "sophisticatedstorage:stack_upgrade_tier_2",
    "sophisticatedstorage:stack_upgrade_tier_3",
    "sophisticatedstorage:jukebox_upgrade",
    "sophisticatedstorage:basic_to_iron_tier_upgrade",
    "sophisticatedstorage:iron_to_gold_tier_upgrade",
    "sophisticatedstorage:upgrade_base",
    "sophisticatedstorage:basic_tier_upgrade",
    "supplementaries:trapped_present_white",
    "supplementaries:trapped_present_orange",
    "supplementaries:trapped_present_magenta",
    "supplementaries:trapped_present_light_blue",
    "supplementaries:trapped_present_yellow",
    "supplementaries:trapped_present_lime",
    "supplementaries:trapped_present_pink",
    "supplementaries:trapped_present_gray",
    "supplementaries:trapped_present_light_gray",
    "supplementaries:trapped_present_cyan",
    "supplementaries:trapped_present_purple",
    "supplementaries:trapped_present_blue",
    "supplementaries:trapped_present_brown",
    "supplementaries:trapped_present_green",
    "supplementaries:trapped_present_red",
    "supplementaries:trapped_present_black",
    "supplementaries:trapped_present",
    "supplementaries:cage",
    "supplementaries:spring_launcher",
    "supplementaries:soap",
    "supplementaries:bubble_blower",
    "supplementaries:clock_block",
    "supplementaries:pulley_block",
    "supplementaries:wind_vane",
    "supplementaries:faucet",
    "supplementaries:dispenser_minecart",
    "supplementaries:bomb",
    "supplementaries:jar",
    "supplementaries:soap_block",
    "supplementaries:goblet",
    "supplementaries:lock_block",
    "supplementaries:turn_table",
    "supplementaries:sconce",
    "supplementaries:sconce_soul",
    "supplementaries:sconce_lever",
    "supplementaries:crank",
    "supplementaries:candle_holder",
    "supplementaries:candle_holder_white",
    "supplementaries:candle_holder_orange",
    "supplementaries:candle_holder_magenta",
    "supplementaries:candle_holder_light_blue",
    "supplementaries:candle_holder_yellow",
    "supplementaries:candle_holder_lime",
    "supplementaries:candle_holder_pink",
    "supplementaries:candle_holder_gray",
    "supplementaries:candle_holder_light_gray",
    "supplementaries:candle_holder_cyan",
    "supplementaries:candle_holder_purple",
    "supplementaries:candle_holder_blue",
    "supplementaries:candle_holder_brown",
    "supplementaries:candle_holder_green",
    "supplementaries:candle_holder_red",
    "supplementaries:candle_holder_black",
    "supplementaries:relayer",
    "theoneprobe:iron_helmet_probe",
    "toolleveling:tool_leveling_table",
    "toms_storage:ts.paint_kit",
    "toms_storage:ts.level_emitter",
    "toms_storage:ts.inventory_hopper_basic",
    "toms_storage:ts.paint_kit",
    "valhelsia_structures:metal_framed_glass_pane",
    "valhelsia_structures:brazier",
    "valhelsia_structures:special_spawner",
    "createaddition:iron_rod",
    "minecraft:tinted_glass",
    "minecraft:white_stained_glass",
    "minecraft:orange_stained_glass",
    "minecraft:magenta_stained_glass",
    "minecraft:light_blue_stained_glass",
    "minecraft:yellow_stained_glass",
    "minecraft:lime_stained_glass",
    "minecraft:pink_stained_glass",
    "minecraft:gray_stained_glass",
    "minecraft:light_gray_stained_glass",
    "minecraft:cyan_stained_glass",
    "minecraft:purple_stained_glass",
    "minecraft:blue_stained_glass",
    "minecraft:brown_stained_glass",
    "minecraft:green_stained_glass",
    "minecraft:red_stained_glass",
    "minecraft:black_stained_glass",
    "minecraft:white_stained_glass_pane",
    "minecraft:orange_stained_glass_pane",
    "minecraft:magenta_stained_glass_pane",
    "minecraft:light_blue_stained_glass_pane",
    "minecraft:yellow_stained_glass_pane",
    "minecraft:lime_stained_glass_pane",
    "minecraft:pink_stained_glass_pane",
    "minecraft:gray_stained_glass_pane",
    "minecraft:light_gray_stained_glass_pane",
    "minecraft:cyan_stained_glass_pane",
    "minecraft:purple_stained_glass_pane",
    "minecraft:blue_stained_glass_pane",
    "minecraft:brown_stained_glass_pane",
    "minecraft:green_stained_glass_pane",
    "minecraft:red_stained_glass_pane",
    "minecraft:black_stained_glass_pane"
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
var toolTip2 = new TextComponent("Unlock Iron Age").setStyle(<constant:formatting:dark_red>);

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


var listTag as MCTag [] = [
    <tag:items:forge:ingots/iron>,
    <tag:items:forge:rods/iron>,
    <tag:items:forge:glass>,
    <tag:items:forge:glass_panes>,
    <tag:items:forge:books>
];

var listMod as string [] = [
    "myrtrees"
];

var exceptItem as IItemStack [] = [
    <item:sophisticatedbackpacks:diamond_backpack>,
    <item:sophisticatedbackpacks:netherite_backpack>,
    <item:immersiveengineering:stick_iron>,
    <item:create:crimson_window_pane>,
    <item:create:warped_window_pane>,
    <item:createaddition:iron_rod>,
    <item:myrtrees:rubberwood_leaves>,
    <item:myrtrees:rubberwood_sapling>
];
