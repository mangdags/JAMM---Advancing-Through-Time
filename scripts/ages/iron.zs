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
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Iron Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("alcocraft:spruce_mug_magnet_pilsner");
items.add("create:ornate_iron_window");
items.add("farmersdelight:golden_knife");
items.add("immersiveposts:fence_iron");
items.add("jousting:lance_iron");
items.add("minecraft:anvil");
items.add("minecraft:redstone_ore");
items.add("minecraft:deepslate_redstone_ore");
items.add("minecraft:redstone");
items.add("minecraft:redstone_torch");
items.add("minecraft:redstone_block");
items.add("minecraft:redstone_lamp");
items.add("minecraft:deepslate_iron_ore");
items.add("minecraft:iron_axe");
items.add("minecraft:iron_bars");
items.add("minecraft:iron_block");
items.add("minecraft:iron_boots");
items.add("minecraft:iron_chestplate");
items.add("minecraft:iron_door");
items.add("minecraft:iron_helmet");
items.add("minecraft:iron_hoe");
items.add("minecraft:iron_horse_armor");
items.add("minecraft:iron_ingot");
items.add("minecraft:iron_leggings");
items.add("minecraft:iron_nugget");
items.add("minecraft:iron_ore");
items.add("minecraft:iron_pickaxe");
items.add("minecraft:iron_shovel");
items.add("minecraft:iron_sword");
items.add("minecraft:iron_trapdoor");
items.add("minecraft:raw_iron");
items.add("minecraft:raw_iron_block");
items.add("minecraft:flint_and_steel");
items.add("minecraft:bucket");
items.add("minecraft:shield");
items.add("minecraft:name_tag");
items.add("minecraft:cauldron");
items.add("minecraft:shears");
items.add("minecraft:compass");
items.add("minecraft:water_bucket");
items.add("minecraft:lava_bucket");
items.add("minecraft:powder_snow_bucket");
items.add("minecraft:milk_bucket");
items.add("minecraft:pufferfish_bucket");
items.add("minecraft:salmon_bucket");
items.add("minecraft:cod_bucket");
items.add("minecraft:tropical_fish_bucket");
items.add("minecraft:axolotl_bucket");
items.add("minecraft:tripwire_hook");
items.add("minecraft:blast_furnace");
items.add("minecraft:stonecutter");
items.add("minecraft:lantern");
items.add("minecraft:soul_lantern");
items.add("minecraft:piston");
items.add("minecraft:sticky_piston");
items.add("minecraft:hopper");
items.add("minecraft:heavy_weighted_pressure_plate");
items.add("minecraft:chain");
items.add("minecraft:trapped_chest");
items.add("minecraft:chest_minecart");
items.add("minecraft:smithing_table");
items.add("minecraft:rail");
items.add("minecraft:activator_rail");
items.add("minecraft:detector_rail");
items.add("minecraft:minecart");
items.add("minecraft:furnace_minecart");
items.add("minecraft:tnt_minecart");
items.add("minecraft:hopper_minecart");
items.add("minecraft:crossbow");
items.add("minecraft:redstone");
items.add("minecraft:obsidian");
items.add("minecraft:crying_obsidian");
items.add("minecraft:clock");
items.add("minecraft:enchanting_table");
items.add("minecraft:observer");
items.add("minecraft:dispenser");
items.add("minecraft:dropper");
items.add("minecraft:target");
items.add("minecraft:daylight_detector");
items.add("minecraft:chipped_anvil");
items.add("minecraft:damaged_anvil");
items.add("minecraft:ender_chest");
items.add("fusion:fusion_furnace");
items.add("minecraft:chainmail_helmet");
items.add("minecraft:chainmail_chestplate");
items.add("minecraft:chainmail_leggings");
items.add("minecraft:chainmail_boots");
items.add("minecraft:lever");
items.add("minecraft:lectern");
items.add("minecraft:glass_bottle");
items.add("minecraft:bell");
items.add("minecraft:fermented_spider_eye");
items.add("minecraft:map");
items.add("minecraft:bookshelf");
items.add("minecraft:wither_skeleton_skull");
items.add("minecraft:ender_pearl");
items.add("minecraft:totem_of_undying");
items.add("minecraft:phantom_membrane");
items.add("mcwbridges:iron_bridge_pier");
items.add("mcwbridges:iron_bridge_stair");
items.add("mcwbridges:pliers");
items.add("mcwbridges:iron_bridge");
items.add("mcwdoors:metal_door");
items.add("mcwdoors:metal_warning_door");
items.add("mcwdoors:metal_hospital_door");
items.add("mcwdoors:metal_reinforced_door");
items.add("mcwdoors:metal_windowed_door");
items.add("mcwdoors:jail_door");
items.add("mcwdoors:garage_white_door");
items.add("mcwdoors:garage_silver_door");
items.add("mcwdoors:garage_gray_door");
items.add("mcwdoors:garage_black_door");
items.add("mcwdoors:oak_barn_glass_door");
items.add("mcwdoors:spruce_barn_glass_door");
items.add("mcwdoors:birch_barn_glass_door");
items.add("mcwdoors:jungle_barn_glass_door");
items.add("mcwdoors:acacia_barn_glass_door");
items.add("mcwdoors:dark_oak_barn_glass_door");
items.add("mcwdoors:crimson_barn_glass_door");
items.add("mcwdoors:warped_barn_glass_door");
items.add("mcwdoors:oak_glass_door");
items.add("mcwdoors:spruce_glass_door");
items.add("mcwdoors:birch_glass_door");
items.add("mcwdoors:jungle_glass_door");
items.add("mcwdoors:acacia_glass_door");
items.add("mcwdoors:dark_oak_glass_door");
items.add("mcwdoors:crimson_glass_door");
items.add("mcwdoors:warped_glass_door");
items.add("mcwdoors:oak_bark_glass_door");
items.add("mcwdoors:spruce_bark_glass_door");
items.add("mcwdoors:birch_bark_glass_door");
items.add("mcwdoors:jungle_bark_glass_door");
items.add("mcwdoors:acacia_bark_glass_door");
items.add("mcwdoors:dark_oak_bark_glass_door");
items.add("mcwdoors:crimson_stem_glass_door");
items.add("mcwdoors:warped_stem_glass_door");
items.add("mcwdoors:oak_modern_door");
items.add("mcwdoors:spruce_modern_door");
items.add("mcwdoors:birch_modern_door");
items.add("mcwdoors:jungle_modern_door");
items.add("mcwdoors:acacia_modern_door");
items.add("mcwdoors:dark_oak_modern_door");
items.add("mcwdoors:crimson_modern_door");
items.add("mcwdoors:warped_modern_door");
items.add("mcwdoors:oak_stable_door");
items.add("mcwdoors:spruce_stable_door");
items.add("mcwdoors:birch_stable_door");
items.add("mcwdoors:jungle_stable_door");
items.add("mcwdoors:acacia_stable_door");
items.add("mcwdoors:dark_oak_stable_door");
items.add("mcwdoors:crimson_stable_door");
items.add("mcwdoors:warped_stable_door");
items.add("mcwdoors:oak_stable_head_door");
items.add("mcwdoors:spruce_stable_head_door");
items.add("mcwdoors:birch_stable_head_door");
items.add("mcwdoors:jungle_stable_head_door");
items.add("mcwdoors:acacia_stable_head_door");
items.add("mcwdoors:dark_oak_stable_head_door");
items.add("mcwdoors:crimson_stable_head_door");
items.add("mcwdoors:warped_stable_head_door");
items.add("mcwtrpdoors:metal_full_trapdoor");
items.add("mcwtrpdoors:metal_warning_trapdoor");
items.add("mcwtrpdoors:oak_glass_trapdoor");
items.add("mcwtrpdoors:spruce_glass_trapdoor");
items.add("mcwtrpdoors:birch_glass_trapdoor");
items.add("mcwtrpdoors:jungle_glass_trapdoor");
items.add("mcwtrpdoors:acacia_glass_trapdoor");
items.add("mcwtrpdoors:dark_oak_glass_trapdoor");
items.add("mcwtrpdoors:crimson_glass_trapdoor");
items.add("mcwtrpdoors:warped_glass_trapdoor");
items.add("mcwtrpdoors:oak_bark_trapdoor");
items.add("mcwtrpdoors:spruce_bark_trapdoor");
items.add("mcwtrpdoors:birch_bark_trapdoor");
items.add("mcwtrpdoors:jungle_bark_trapdoor");
items.add("mcwtrpdoors:acacia_bark_trapdoor");
items.add("mcwtrpdoors:dark_oak_bark_trapdoor");
items.add("mcwtrpdoors:crimson_bark_trapdoor");
items.add("mcwtrpdoors:warped_bark_trapdoor");
items.add("mcwtrpdoors:oak_barn_trapdoor");
items.add("mcwtrpdoors:spruce_barn_trapdoor");
items.add("mcwtrpdoors:birch_barn_trapdoor");
items.add("mcwtrpdoors:jungle_barn_trapdoor");
items.add("mcwtrpdoors:acacia_barn_trapdoor");
items.add("mcwtrpdoors:dark_oak_barn_trapdoor");
items.add("mcwwindows:hammer");
items.add("mowziesmobs:naga_fang_dagger");
items.add("natprog:improved_saw");
items.add("parrying:iron_mace");
items.add("parrying:iron_hammer");
items.add("parrying:iron_dagger");
items.add("parrying:iron_spear");
items.add("projectbrazier:nail");
items.add("projectbrazier:iron_brazier");
items.add("projectbrazier:iron_fire_bowl");
items.add("projectbrazier:gold_spyglass");
items.add("projectbrazier:empty_candle_holder");
items.add("projectbrazier:empty_wall_candle_holder");
items.add("projectbrazier:empty_wall_torch_holder");
items.add("projectbrazier:jail_lattice");
items.add("projectbrazier:wall_candle_holder");
items.add("projectbrazier:white_wall_candle_holder");
items.add("projectbrazier:orange_wall_candle_holder");
items.add("projectbrazier:magenta_wall_candle_holder");
items.add("projectbrazier:light_blue_wall_candle_holder");
items.add("projectbrazier:yellow_wall_candle_holder");
items.add("projectbrazier:lime_wall_candle_holder");
items.add("projectbrazier:pink_wall_candle_holder");
items.add("projectbrazier:gray_wall_candle_holder");
items.add("projectbrazier:light_gray_wall_candle_holder");
items.add("projectbrazier:cyan_wall_candle_holder");
items.add("projectbrazier:purple_wall_candle_holder");
items.add("projectbrazier:blue_wall_candle_holder");
items.add("projectbrazier:brown_wall_candle_holder");
items.add("projectbrazier:green_wall_candle_holder");
items.add("projectbrazier:red_wall_candle_holder");
items.add("projectbrazier:black_wall_candle_holder");
items.add("projectbrazier:candle_holder");
items.add("projectbrazier:white_candle_holder");
items.add("projectbrazier:orange_candle_holder");
items.add("projectbrazier:magenta_candle_holder");
items.add("projectbrazier:light_blue_candle_holder");
items.add("projectbrazier:yellow_candle_holder");
items.add("projectbrazier:lime_candle_holder");
items.add("projectbrazier:pink_candle_holder");
items.add("projectbrazier:gray_candle_holder");
items.add("projectbrazier:light_gray_candle_holder");
items.add("projectbrazier:cyan_candle_holder");
items.add("projectbrazier:purple_candle_holder");
items.add("projectbrazier:blue_candle_holder");
items.add("projectbrazier:brown_candle_holder");
items.add("projectbrazier:green_candle_holder");
items.add("projectbrazier:red_candle_holder");
items.add("projectbrazier:black_candle_holder");
items.add("projectbrazier:wall_torch_holder");
items.add("projectbrazier:wall_soul_torch_holder");
items.add("projectbrazier:traces_of_coal_ore");
items.add("projectbrazier:poor_coal_ore");
items.add("projectbrazier:rich_coal_ore");
items.add("projectbrazier:traces_of_deepslate_coal_ore");
items.add("projectbrazier:poor_deepslate_coal_ore");
items.add("projectbrazier:rich_deepslate_coal_ore");
items.add("supplementaries:iron_gate");
items.add("supplementaries:redstone_illuminator");
items.add("supplementaries:hourglass");
items.add("sophisticatedstorage:iron_barrel");
items.add("sophisticatedstorage:iron_chest");
items.add("sophisticatedbackpacks:iron_backpack");
items.add("sophisticatedbackpacks:pickup_upgrade");
items.add("sophisticatedbackpacks:filter_upgrade");
items.add("sophisticatedbackpacks:advanced_filter_upgrade");
items.add("sophisticatedbackpacks:magnet_upgrade");
items.add("sophisticatedbackpacks:feeding_upgrade");
items.add("sophisticatedbackpacks:compacting_upgrade");
items.add("sophisticatedbackpacks:void_upgrade");
items.add("sophisticatedbackpacks:restock_upgrade");
items.add("sophisticatedbackpacks:deposit_upgrade");
items.add("sophisticatedbackpacks:refill_upgrade");
items.add("sophisticatedbackpacks:smelting_upgrade");
items.add("sophisticatedbackpacks:smoking_upgrade");
items.add("sophisticatedbackpacks:blasting_upgrade");
items.add("sophisticatedbackpacks:crafting_upgrade");
items.add("sophisticatedbackpacks:stonecutter_upgrade");
items.add("sophisticatedbackpacks:stack_upgrade_tier_1");
items.add("sophisticatedbackpacks:stack_upgrade_tier_2");
items.add("sophisticatedbackpacks:tool_swapper_upgrade");
items.add("sophisticatedbackpacks:tank_upgrade");
items.add("sophisticatedbackpacks:battery_upgrade");
items.add("sophisticatedbackpacks:pump_upgrade");
items.add("sophisticatedbackpacks:upgrade_base");
items.add("sophisticatedstorage:storage_tool");
items.add("sophisticatedstorage:packing_tape");
items.add("sophisticatedstorage:pickup_upgrade");
items.add("sophisticatedstorage:filter_upgrade");
items.add("sophisticatedstorage:advanced_filter_upgrade");
items.add("sophisticatedstorage:magnet_upgrade");
items.add("sophisticatedstorage:feeding_upgrade");
items.add("sophisticatedstorage:compacting_upgrade");
items.add("sophisticatedstorage:void_upgrade");
items.add("sophisticatedstorage:smelting_upgrade");
items.add("sophisticatedstorage:smoking_upgrade");
items.add("sophisticatedstorage:blasting_upgrade");
items.add("sophisticatedstorage:crafting_upgrade");
items.add("sophisticatedstorage:stonecutter_upgrade");
items.add("sophisticatedstorage:stack_upgrade_tier_1");
items.add("sophisticatedstorage:stack_upgrade_tier_2");
items.add("sophisticatedstorage:stack_upgrade_tier_3");
items.add("sophisticatedstorage:jukebox_upgrade");
items.add("sophisticatedstorage:basic_to_iron_tier_upgrade");
items.add("sophisticatedstorage:iron_to_gold_tier_upgrade");
items.add("sophisticatedstorage:upgrade_base");
items.add("sophisticatedstorage:basic_tier_upgrade");
items.add("supplementaries:trapped_present_white");
items.add("supplementaries:trapped_present_orange");
items.add("supplementaries:trapped_present_magenta");
items.add("supplementaries:trapped_present_light_blue");
items.add("supplementaries:trapped_present_yellow");
items.add("supplementaries:trapped_present_lime");
items.add("supplementaries:trapped_present_pink");
items.add("supplementaries:trapped_present_gray");
items.add("supplementaries:trapped_present_light_gray");
items.add("supplementaries:trapped_present_cyan");
items.add("supplementaries:trapped_present_purple");
items.add("supplementaries:trapped_present_blue");
items.add("supplementaries:trapped_present_brown");
items.add("supplementaries:trapped_present_green");
items.add("supplementaries:trapped_present_red");
items.add("supplementaries:trapped_present_black");
items.add("supplementaries:trapped_present");
items.add("supplementaries:cage");
items.add("supplementaries:spring_launcher");
items.add("supplementaries:soap");
items.add("supplementaries:bubble_blower");
items.add("supplementaries:clock_block");
items.add("supplementaries:pulley_block");
items.add("supplementaries:wind_vane");
items.add("supplementaries:faucet");
items.add("supplementaries:dispenser_minecart");
items.add("supplementaries:bomb");
items.add("supplementaries:jar");
items.add("supplementaries:soap_block");
items.add("supplementaries:goblet");
items.add("supplementaries:lock_block");
items.add("supplementaries:turn_table");
items.add("supplementaries:sconce");
items.add("supplementaries:sconce_soul");
items.add("supplementaries:sconce_lever");
items.add("supplementaries:crank");
items.add("supplementaries:candle_holder");
items.add("supplementaries:candle_holder_white");
items.add("supplementaries:candle_holder_orange");
items.add("supplementaries:candle_holder_magenta");
items.add("supplementaries:candle_holder_light_blue");
items.add("supplementaries:candle_holder_yellow");
items.add("supplementaries:candle_holder_lime");
items.add("supplementaries:candle_holder_pink");
items.add("supplementaries:candle_holder_gray");
items.add("supplementaries:candle_holder_light_gray");
items.add("supplementaries:candle_holder_cyan");
items.add("supplementaries:candle_holder_purple");
items.add("supplementaries:candle_holder_blue");
items.add("supplementaries:candle_holder_brown");
items.add("supplementaries:candle_holder_green");
items.add("supplementaries:candle_holder_red");
items.add("supplementaries:candle_holder_black");
items.add("supplementaries:relayer");
items.add("theoneprobe:iron_helmet_probe");
items.add("toolleveling:tool_leveling_table");
items.add("toms_storage:ts.paint_kit");
items.add("toms_storage:ts.level_emitter");
items.add("toms_storage:ts.inventory_hopper_basic");
items.add("toms_storage:ts.paint_kit");
items.add("valhelsia_structures:metal_framed_glass");
items.add("valhelsia_structures:metal_framed_glass_pane");
items.add("valhelsia_structures:brazier");
items.add("valhelsia_structures:special_spawner");
items.add("minecraft:tinted_glass");
items.add("minecraft:white_stained_glass");
items.add("minecraft:orange_stained_glass");
items.add("minecraft:magenta_stained_glass");
items.add("minecraft:light_blue_stained_glass");
items.add("minecraft:yellow_stained_glass");
items.add("minecraft:lime_stained_glass");
items.add("minecraft:pink_stained_glass");
items.add("minecraft:gray_stained_glass");
items.add("minecraft:light_gray_stained_glass");
items.add("minecraft:cyan_stained_glass");
items.add("minecraft:purple_stained_glass");
items.add("minecraft:blue_stained_glass");
items.add("minecraft:brown_stained_glass");
items.add("minecraft:green_stained_glass");
items.add("minecraft:red_stained_glass");
items.add("minecraft:black_stained_glass");
items.add("minecraft:white_stained_glass_pane");
items.add("minecraft:orange_stained_glass_pane");
items.add("minecraft:magenta_stained_glass_pane");
items.add("minecraft:light_blue_stained_glass_pane");
items.add("minecraft:yellow_stained_glass_pane");
items.add("minecraft:lime_stained_glass_pane");
items.add("minecraft:pink_stained_glass_pane");
items.add("minecraft:gray_stained_glass_pane");
items.add("minecraft:light_gray_stained_glass_pane");
items.add("minecraft:cyan_stained_glass_pane");
items.add("minecraft:purple_stained_glass_pane");
items.add("minecraft:blue_stained_glass_pane");
items.add("minecraft:brown_stained_glass_pane");
items.add("minecraft:green_stained_glass_pane");
items.add("minecraft:red_stained_glass_pane");
items.add("minecraft:black_stained_glass_pane");
items.add("minecraft:cut_copper_slab");
items.add("minecraft:exposed_cut_copper_slab");
items.add("minecraft:weathered_cut_copper_slab");
items.add("minecraft:oxidized_cut_copper_slab");
items.add("minecraft:waxed_cut_copper_slab");
items.add("minecraft:waxed_exposed_cut_copper_slab");
items.add("minecraft:waxed_weathered_cut_copper_slab");
items.add("minecraft:waxed_oxidized_cut_copper_slab");
items.add("minecraft:glass");
items.add("minecraft:glass_pane");

for item in game.items {
    if (item.registryName.namespace == "myrtrees"){
        items.add(item.registryName.toString());
    }
}

//set stage to items
for item in items {
    setStageItem(stage, item);
}

tagToList(items, <tag:items:forge:books>);

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
