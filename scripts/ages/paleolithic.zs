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

var message = new TextComponent("You haven't unlocked Paleolithic Age yet").setStyle(<constant:formatting:red>);
var stage = "paleolithic_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Paleolithic Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("minecraft:wooden_sword");
items.add("minecraft:wooden_shovel");
items.add("minecraft:wooden_pickaxe");
items.add("minecraft:wooden_axe");
items.add("minecraft:wooden_hoe");
items.add("minecraft:fishing_rod");
items.add("minecraft:string");
items.add("minecraft:campfire");
items.add("minecraft:chest");
items.add("minecraft:ladder");
items.add("minecraft:armor_stand");
items.add("minecraft:loom");
items.add("minecraft:composter");
items.add("minecraft:barrel");
items.add("minecraft:fletching_table");
items.add("minecraft:bone_block");
items.add("minecraft:bone_meal");
items.add("minecraft:bone");
items.add("parrying:wooden_mace");
items.add("parrying:wooden_hammer");
items.add("parrying:wooden_dagger");
items.add("parrying:wood_flail");
items.add("parrying:wood_spear");
items.add("jousting:lance_wood");
items.add("valhelsia_structures:bone_pile");
items.add("valhelsia_structures:bone_pile_block");
items.add("natprog:bone_pickaxe");
items.add("natprog:bone_knife");
items.add("natprog:bone_shard");
items.add("projectbrazier:bone_war_horn");
items.add("minecraft:coal");
items.add("minecraft:coal_ore");
items.add("minecraft:deepslate_coal_ore");
items.add("minecraft:coal_block");
items.add("minecraft:coal");
items.add("minecraft:scute");
items.add("minecraft:turtle_helmet");
items.add("minecraft:charcoal");
items.add("supplementaries:flax");
items.add("supplementaries:flax_block");
items.add("supplementaries:rope");
items.add("supplementaries:sack");
items.add("supplementaries:doormat");
items.add("minecraft:farmland");
items.add("minecraft:carrot_on_a_stick");
items.add("minecraft:torch");
items.add("supplementaries:feather_block");
items.add("minecraft:rabbit_hide");
items.add("minecraft:rabbit_foot");
items.add("mcwwindows:oak_log_parapet");
items.add("mcwwindows:spruce_log_parapet");
items.add("mcwwindows:birch_log_parapet");
items.add("mcwwindows:jungle_log_parapet");
items.add("mcwwindows:acacia_log_parapet");
items.add("mcwwindows:dark_oak_log_parapet");
items.add("mcwwindows:oak_plank_parapet");
items.add("mcwwindows:spruce_plank_parapet");
items.add("mcwwindows:birch_plank_parapet");
items.add("mcwwindows:jungle_plank_parapet");
items.add("mcwwindows:acacia_plank_parapet");
items.add("mcwwindows:dark_oak_plank_parapet");
items.add("minecraft:brown_mushroom_block");
items.add("minecraft:red_mushroom_block");
items.add("minecraft:mushroom_stem");
items.add("projectbrazier:hoof_fungus");
items.add("minecraft:oak_stairs");
items.add("minecraft:spruce_stairs");
items.add("minecraft:birch_stairs");
items.add("minecraft:jungle_stairs");
items.add("minecraft:acacia_stairs");
items.add("minecraft:dark_oak_stairs");
items.add("minecraft:oak_slab");
items.add("minecraft:spruce_slab");
items.add("minecraft:birch_slab");
items.add("minecraft:jungle_slab");
items.add("minecraft:acacia_slab");
items.add("minecraft:dark_oak_slab");
items.add("minecraft:petrified_oak_slab");
items.add("mowziesmobs:painted_acacia_slab");
items.add("minecraft:oak_fence");
items.add("minecraft:spruce_fence");
items.add("minecraft:birch_fence");
items.add("minecraft:jungle_fence");
items.add("minecraft:acacia_fence");
items.add("minecraft:dark_oak_fence");
items.add("minecraft:oak_sign");
items.add("minecraft:spruce_sign");
items.add("minecraft:birch_sign");
items.add("minecraft:jungle_sign");
items.add("minecraft:acacia_sign");
items.add("minecraft:dark_oak_sign");
items.add("farmersdelight:canvas_sign");
items.add("farmersdelight:white_canvas_sign");
items.add("farmersdelight:orange_canvas_sign");
items.add("farmersdelight:magenta_canvas_sign");
items.add("farmersdelight:light_blue_canvas_sign");
items.add("farmersdelight:yellow_canvas_sign");
items.add("farmersdelight:lime_canvas_sign");
items.add("farmersdelight:pink_canvas_sign");
items.add("farmersdelight:gray_canvas_sign");
items.add("farmersdelight:light_gray_canvas_sign");
items.add("farmersdelight:cyan_canvas_sign");
items.add("farmersdelight:purple_canvas_sign");
items.add("farmersdelight:blue_canvas_sign");
items.add("farmersdelight:brown_canvas_sign");
items.add("farmersdelight:green_canvas_sign");
items.add("farmersdelight:red_canvas_sign");
items.add("farmersdelight:black_canvas_sign");
items.add("minecraft:item_frame");
items.add("minecraft:glow_item_frame");
items.add("minecraft:white_banner");
items.add("minecraft:orange_banner");
items.add("minecraft:magenta_banner");
items.add("minecraft:light_blue_banner");
items.add("minecraft:yellow_banner");
items.add("minecraft:lime_banner");
items.add("minecraft:pink_banner");
items.add("minecraft:gray_banner");
items.add("minecraft:light_gray_banner");
items.add("minecraft:cyan_banner");
items.add("minecraft:purple_banner");
items.add("minecraft:blue_banner");
items.add("minecraft:brown_banner");
items.add("minecraft:green_banner");
items.add("minecraft:red_banner");
items.add("minecraft:black_banner");
items.add("minecraft:oak_button");
items.add("minecraft:spruce_button");
items.add("minecraft:birch_button");
items.add("minecraft:jungle_button");
items.add("minecraft:acacia_button");
items.add("minecraft:dark_oak_button");
items.add("minecraft:oak_pressure_plate");
items.add("minecraft:spruce_pressure_plate");
items.add("minecraft:birch_pressure_plate");
items.add("minecraft:jungle_pressure_plate");
items.add("minecraft:acacia_pressure_plate");
items.add("minecraft:dark_oak_pressure_plate");
items.add("minecraft:oak_door");
items.add("minecraft:spruce_door");
items.add("minecraft:birch_door");
items.add("minecraft:jungle_door");
items.add("minecraft:acacia_door");
items.add("minecraft:dark_oak_door");
items.add("mcwdoors:oak_barn_door");
items.add("mcwdoors:spruce_barn_door");
items.add("mcwdoors:birch_barn_door");
items.add("mcwdoors:jungle_barn_door");
items.add("mcwdoors:acacia_barn_door");
items.add("mcwdoors:dark_oak_barn_door");
items.add("mcwdoors:oak_western_door");
items.add("mcwdoors:spruce_western_door");
items.add("mcwdoors:birch_western_door");
items.add("mcwdoors:jungle_western_door");
items.add("mcwdoors:acacia_western_door");
items.add("mcwdoors:dark_oak_western_door");
items.add("minecraft:oak_trapdoor");
items.add("minecraft:spruce_trapdoor");
items.add("minecraft:birch_trapdoor");
items.add("minecraft:jungle_trapdoor");
items.add("minecraft:acacia_trapdoor");
items.add("minecraft:dark_oak_trapdoor");
items.add("mcwtrpdoors:oak_ranch_trapdoor");
items.add("mcwtrpdoors:spruce_ranch_trapdoor");
items.add("mcwtrpdoors:birch_ranch_trapdoor");
items.add("mcwtrpdoors:jungle_ranch_trapdoor");
items.add("mcwtrpdoors:acacia_ranch_trapdoor");
items.add("mcwtrpdoors:dark_oak_ranch_trapdoor");
items.add("minecraft:white_carpet");
items.add("minecraft:orange_carpet");
items.add("minecraft:magenta_carpet");
items.add("minecraft:light_blue_carpet");
items.add("minecraft:yellow_carpet");
items.add("minecraft:lime_carpet");
items.add("minecraft:pink_carpet");
items.add("minecraft:gray_carpet");
items.add("minecraft:light_gray_carpet");
items.add("minecraft:cyan_carpet");
items.add("minecraft:purple_carpet");
items.add("minecraft:blue_carpet");
items.add("minecraft:brown_carpet");
items.add("minecraft:green_carpet");
items.add("minecraft:red_carpet");
items.add("minecraft:black_carpet");
items.add("minecraft:oak_fence_gate");
items.add("minecraft:spruce_fence_gate");
items.add("minecraft:birch_fence_gate");
items.add("minecraft:jungle_fence_gate");
items.add("minecraft:acacia_fence_gate");
items.add("minecraft:dark_oak_fence_gate");
items.add("supplementaries:sign_post_oak");
items.add("supplementaries:sign_post_spruce");
items.add("supplementaries:sign_post_birch");
items.add("supplementaries:sign_post_jungle");
items.add("supplementaries:sign_post_acacia");
items.add("supplementaries:sign_post_dark_oak");
items.add("supplementaries:valhelsia_structures/sign_post_lapidified_jungle");
items.add("supplementaries:myrtrees/sign_post_rubberwood");
items.add("valhelsia_structures:oak_post");
items.add("valhelsia_structures:spruce_post");
items.add("valhelsia_structures:birch_post");
items.add("valhelsia_structures:jungle_post");
items.add("valhelsia_structures:acacia_post");
items.add("valhelsia_structures:dark_oak_post");
items.add("valhelsia_structures:cut_oak_post");
items.add("valhelsia_structures:cut_spruce_post");
items.add("valhelsia_structures:cut_birch_post");
items.add("valhelsia_structures:cut_jungle_post");
items.add("valhelsia_structures:cut_acacia_post");
items.add("valhelsia_structures:cut_dark_oak_post");
items.add("supplementaries:flag_white");
items.add("supplementaries:flag_orange");
items.add("supplementaries:flag_magenta");
items.add("supplementaries:flag_light_blue");
items.add("supplementaries:flag_yellow");
items.add("supplementaries:flag_lime");
items.add("supplementaries:flag_pink");
items.add("supplementaries:flag_gray");
items.add("supplementaries:flag_light_gray");
items.add("supplementaries:flag_cyan");
items.add("supplementaries:flag_purple");
items.add("supplementaries:flag_blue");
items.add("supplementaries:flag_brown");
items.add("supplementaries:flag_green");
items.add("supplementaries:flag_red");
items.add("supplementaries:flag_black");
items.add("supplementaries:hanging_sign_oak");
items.add("supplementaries:hanging_sign_spruce");
items.add("supplementaries:hanging_sign_birch");
items.add("supplementaries:hanging_sign_jungle");
items.add("supplementaries:hanging_sign_acacia");
items.add("supplementaries:hanging_sign_dark_oak");
items.add("supplementaries:myrtrees/hanging_sign_rubberwood");
items.add("supplementaries:valhelsia_structures/hanging_sign_lapidified_jungle");

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

var listTag as MCTag [] = [
    <tag:items:minecraft:wooden_stairs>,
    <tag:items:minecraft:wooden_slabs>,
    <tag:items:minecraft:wooden_fences>,
    <tag:items:minecraft:signs>,
    <tag:items:minecraft:item_frame>,
    <tag:items:minecraft:banners>,
    <tag:items:minecraft:wooden_buttons>,
    <tag:items:minecraft:wooden_pressure_plates>,
    <tag:items:minecraft:wooden_doors>,
    <tag:items:minecraft:wooden_trapdoors>,
    <tag:items:minecraft:carpets>,
    <tag:items:forge:fence_gates/wooden>,
    //<tag:items:sophisticatedstorage:base_tier_wooden_storage>,
    //<tag:items:supplementaries:hanging_signs>,
    <tag:items:supplementaries:sign_posts>,
    <tag:items:valhelsia_structures:posts>,
    <tag:items:valhelsia_structures:cut_posts>,
    <tag:items:supplementaries:flags>
];
