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

var message = new TextComponent("You haven't unlocked Mesolithic Age yet").setStyle(<constant:formatting:red>);
var stage = "mesolithic_age";

var items as string [] = [
    "alexsmobs:banana",
    "immersiveengineering:ersatz_leather",
    "mcwbridges:bamboo_bridge",
    "mcwbridges:dry_bamboo_bridge",
    "mcwbridges:bamboo_bridge_pier",
    "mcwbridges:dry_bamboo_bridge_pier",
    "mcwbridges:bamboo_bridge_stair",
    "mcwbridges:dry_bamboo_bridge_stair",
    "mcwfences:bamboo_fence",
    "mcwtrpdoors:bamboo_trapdoor",
    "mcwwindows:oak_blinds",
    "mcwwindows:spruce_blinds",
    "mcwwindows:birch_blinds",
    "mcwwindows:jungle_blinds",
    "mcwwindows:acacia_blinds",
    "mcwwindows:dark_oak_blinds",
    "mcwwindows:andesite_parapet",
    "mcwwindows:diorite_parapet",
    "mcwwindows:granite_parapet",
    "minecraft:furnace",
    "minecraft:stone",
    "minecraft:cobblestone",
    "minecraft:leather_helmet",
    "minecraft:leather_chestplate",
    "minecraft:leather_boots",
    "minecraft:leather_leggings",
    "minecraft:leather",
    "minecraft:leather_horse_armor",
    "minecraft:item_frame",
    "minecraft:stone_sword",
    "minecraft:stone_shovel",
    "minecraft:stone_pickaxe",
    "minecraft:stone_axe",
    "minecraft:stone_hoe",
    "minecraft:lapis_ore",
    "minecraft:deepslate_lapis_ore",
    "minecraft:lapis_block",
    "minecraft:lapis_lazuli",
    "minecraft:bamboo",
    "minecraft:scaffolding",
    "minecraft:bow",
    "minecraft:glow_item_frame",
    "minecraft:arrow",
    "minecraft:packed_ice",
    "minecraft:moss_carpet",
    "minecraft:moss_block",
    "parrying:stone_mace",
    "parrying:stone_hammer",
    "parrying:stone_dagger",
    "parrying:stone_flail",
    "parrying:stone_spear",
    "projectbrazier:birch_firewood",
    "projectbrazier:oak_firewood",
    "projectbrazier:acacia_firewood",
    "projectbrazier:jungle_firewood",
    "projectbrazier:dark_oak_firewood",
    "projectbrazier:spruce_firewood",
    "projectbrazier:rope",
    "supplementaries:bamboo_spikes",
    "supplementaries:flute",
    "supplementaries:bellows",
    "supplementaries:lapis_bricks",
    "supplementaries:lapis_bricks_stairs",
    "sophisticatedbackpacks:backpack",
    "minecraft:cobbled_deepslate",
    "minecraft:mossy_cobblestone",
    "minecraft:infested_cobblestone",
    "natprog:cobbled_andesite",
    "natprog:cobbled_diorite",
    "natprog:cobbled_granite",
    "natprog:cobbled_sandstone",
    "natprog:cobbled_red_sandstone",
    "natprog:cobbled_tuff",
    "natprog:cobbled_dripstone_block",
    "minecraft:white_dye",
    "minecraft:orange_dye",
    "minecraft:magenta_dye",
    "minecraft:light_blue_dye",
    "minecraft:yellow_dye",
    "minecraft:lime_dye",
    "minecraft:pink_dye",
    "minecraft:gray_dye",
    "minecraft:light_gray_dye",
    "minecraft:cyan_dye",
    "minecraft:purple_dye",
    "minecraft:blue_dye",
    "minecraft:brown_dye",
    "minecraft:green_dye",
    "minecraft:red_dye",
    "minecraft:black_dye"
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
var toolTip2 = new TextComponent("Unlock Mesolithic Age").setStyle(<constant:formatting:dark_red>);

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
    <item:minecraft:furnace>,
    <item:minecraft:red_nether_brick_stairs>,
    <item:minecraft:red_nether_brick_slab>,
    <item:minecraft:blackstone>,
    <item:minecraft:blackstone_slab>,
    <item:minecraft:blackstone_stairs>,
    <item:minecraft:gilded_blackstone>,
    <item:minecraft:polished_blackstone>,
    <item:minecraft:polished_blackstone_slab>,
    <item:minecraft:polished_blackstone_stairs>,
    <item:minecraft:chiseled_polished_blackstone>,
    <item:minecraft:polished_blackstone_bricks>,
    <item:minecraft:polished_blackstone_brick_slab>,
    <item:minecraft:polished_blackstone_brick_stairs>,
    <item:minecraft:cracked_polished_blackstone_bricks>,
    <item:minecraft:red_nether_brick_wall>,
    <item:minecraft:nether_brick_wall>,
    <item:minecraft:polished_blackstone_wall>,
    <item:minecraft:blackstone_wall>,
    <item:minecraft:polished_blackstone_brick_wall>,
    <item:natprog:cobbled_netherrack>,
    <item:natprog:cobbled_end_stone>,
    <item:fusion:bronze_brick_slab>,
    <item:fusion:steel_brick_slab>,
    <item:fusion:sinisite_brick_slab>,
    <item:fusion:thyrium_brick_slab>,
    <item:fusion:bronze_brick_stairs>,
    <item:fusion:steel_brick_stairs>,
    <item:fusion:sinisite_brick_stairs>,
    <item:fusion:thyrium_brick_stairs>,
    <item:sophisticatedbackpacks:gold_backpack>,
    <item:sophisticatedbackpacks:iron_backpack>,
    <item:sophisticatedbackpacks:diamond_backpack>,
    <item:sophisticatedbackpacks:netherite_backpack>,
    <item:sophisticatedbackpacks:pickup_upgrade>,
    <item:sophisticatedbackpacks:filter_upgrade>,
    <item:sophisticatedbackpacks:advanced_filter_upgrade>,
    <item:sophisticatedbackpacks:magnet_upgrade>,
    <item:sophisticatedbackpacks:feeding_upgrade>,
    <item:sophisticatedbackpacks:compacting_upgrade>,
    <item:sophisticatedbackpacks:void_upgrade>,
    <item:sophisticatedbackpacks:restock_upgrade>,
    <item:sophisticatedbackpacks:deposit_upgrade>,
    <item:sophisticatedbackpacks:refill_upgrade>,
    <item:sophisticatedbackpacks:smelting_upgrade>,
    <item:sophisticatedbackpacks:smoking_upgrade>,
    <item:sophisticatedbackpacks:blasting_upgrade>,
    <item:sophisticatedbackpacks:crafting_upgrade>,
    <item:sophisticatedbackpacks:stonecutter_upgrade>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_1>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_2>,
    <item:sophisticatedbackpacks:tool_swapper_upgrade>,
    <item:sophisticatedbackpacks:tank_upgrade>,
    <item:sophisticatedbackpacks:battery_upgrade>,
    <item:sophisticatedbackpacks:pump_upgrade>,
    <item:sophisticatedbackpacks:upgrade_base>,
    <item:sophisticatedbackpacks:advanced_pickup_upgrade>,
    <item:sophisticatedbackpacks:advanced_magnet_upgrade>,
    <item:sophisticatedbackpacks:advanced_feeding_upgrade>,
    <item:sophisticatedbackpacks:advanced_compacting_upgrade>,
    <item:sophisticatedbackpacks:advanced_void_upgrade>,
    <item:sophisticatedbackpacks:advanced_restock_upgrade>,
    <item:sophisticatedbackpacks:advanced_deposit_upgrade>,
    <item:sophisticatedbackpacks:inception_upgrade>,
    <item:sophisticatedbackpacks:auto_smelting_upgrade>,
    <item:sophisticatedbackpacks:auto_smoking_upgrade>,
    <item:sophisticatedbackpacks:auto_blasting_upgrade>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_3>,
    <item:sophisticatedbackpacks:jukebox_upgrade>,
    <item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>,
    <item:sophisticatedbackpacks:advanced_pump_upgrade>,
    <item:sophisticatedbackpacks:xp_pump_upgrade>,
    <item:sophisticatedbackpacks:everlasting_upgrade>,
    <item:sophisticatedbackpacks:stack_upgrade_tier_4>,
    <item:sophisticatedstorage:pickup_upgrade>,
    <item:sophisticatedstorage:filter_upgrade>,
    <item:sophisticatedstorage:advanced_filter_upgrade>,
    <item:sophisticatedstorage:magnet_upgrade>,
    <item:sophisticatedstorage:feeding_upgrade>,
    <item:sophisticatedstorage:compacting_upgrade>,
    <item:sophisticatedstorage:void_upgrade>,
    <item:sophisticatedstorage:smelting_upgrade>,
    <item:sophisticatedstorage:smoking_upgrade>,
    <item:sophisticatedstorage:blasting_upgrade>,
    <item:sophisticatedstorage:crafting_upgrade>,
    <item:sophisticatedstorage:stonecutter_upgrade>,
    <item:sophisticatedstorage:stack_upgrade_tier_1>,
    <item:sophisticatedstorage:stack_upgrade_tier_2>,
    <item:sophisticatedstorage:stack_upgrade_tier_3>,
    <item:sophisticatedstorage:jukebox_upgrade>,
    <item:sophisticatedstorage:basic_to_iron_tier_upgrade>,
    <item:sophisticatedstorage:iron_to_gold_tier_upgrade>,
    <item:sophisticatedstorage:upgrade_base>
];