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

var message = new TextComponent("You haven't unlocked Mesolithic Age yet").setStyle(<constant:formatting:red>);
var stage = "mesolithic_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Mesolithic Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("alexsmobs:banana");
items.add("immersiveengineering:ersatz_leather");
items.add("mcwbridges:bamboo_bridge");
items.add("mcwbridges:dry_bamboo_bridge");
items.add("mcwbridges:bamboo_bridge_pier");
items.add("mcwbridges:dry_bamboo_bridge_pier");
items.add("mcwbridges:bamboo_bridge_stair");
items.add("mcwbridges:dry_bamboo_bridge_stair");
items.add("mcwfences:bamboo_fence");
items.add("mcwtrpdoors:bamboo_trapdoor");
items.add("mcwwindows:oak_blinds");
items.add("mcwwindows:spruce_blinds");
items.add("mcwwindows:birch_blinds");
items.add("mcwwindows:jungle_blinds");
items.add("mcwwindows:acacia_blinds");
items.add("mcwwindows:dark_oak_blinds");
items.add("mcwwindows:andesite_parapet");
items.add("mcwwindows:diorite_parapet");
items.add("mcwwindows:granite_parapet");
items.add("minecraft:furnace");
items.add("minecraft:stone");
items.add("minecraft:cobblestone");
items.add("minecraft:leather_helmet");
items.add("minecraft:leather_chestplate");
items.add("minecraft:leather_boots");
items.add("minecraft:leather_leggings");
items.add("minecraft:leather");
items.add("minecraft:leather_horse_armor");
items.add("minecraft:item_frame");
items.add("minecraft:stone_sword");
items.add("minecraft:stone_shovel");
items.add("minecraft:stone_pickaxe");
items.add("minecraft:stone_axe");
items.add("minecraft:stone_hoe");
items.add("minecraft:lapis_ore");
items.add("minecraft:deepslate_lapis_ore");
items.add("minecraft:lapis_block");
items.add("minecraft:lapis_lazuli");
items.add("minecraft:bamboo");
items.add("minecraft:scaffolding");
items.add("minecraft:bow");
items.add("minecraft:glow_item_frame");
items.add("minecraft:packed_ice");
items.add("minecraft:moss_carpet");
items.add("minecraft:moss_block");
items.add("parrying:stone_mace");
items.add("parrying:stone_hammer");
items.add("parrying:stone_dagger");
items.add("parrying:stone_flail");
items.add("parrying:stone_spear");
items.add("projectbrazier:birch_firewood");
items.add("projectbrazier:oak_firewood");
items.add("projectbrazier:acacia_firewood");
items.add("projectbrazier:jungle_firewood");
items.add("projectbrazier:dark_oak_firewood");
items.add("projectbrazier:spruce_firewood");
items.add("projectbrazier:rope");
items.add("supplementaries:bamboo_spikes");
items.add("supplementaries:flute");
items.add("supplementaries:bellows");
items.add("supplementaries:lapis_bricks");
items.add("supplementaries:lapis_bricks_stairs");
items.add("sophisticatedbackpacks:backpack");
items.add("minecraft:cobbled_deepslate");
items.add("minecraft:mossy_cobblestone");
items.add("minecraft:infested_cobblestone");
items.add("natprog:cobbled_andesite");
items.add("natprog:cobbled_diorite");
items.add("natprog:cobbled_granite");
items.add("natprog:cobbled_sandstone");
items.add("natprog:cobbled_red_sandstone");
items.add("natprog:cobbled_tuff");
items.add("natprog:cobbled_dripstone_block");

//set stage to items
for item in items {
    setStageItem(stage, item);
}

tagToList(items, <tag:items:minecraft:arrows>);
tagToList(items, <tag:items:minecraft:dyes>);

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