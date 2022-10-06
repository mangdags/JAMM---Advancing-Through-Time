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

var message = new TextComponent("You haven't unlocked Cookery yet").setStyle(<constant:formatting:red>);
var stage = "cookery";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Cookery").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("alexsdelight:gongylidia_bruschetta");
items.add("alexsdelight:maggot_salad");
items.add("alexsdelight:kangaroo_stew");
items.add("alexsdelight:acacia_blossom_soup");
items.add("alexsdelight:lobster_pasta");
items.add("alexsdelight:bison_burger");
items.add("alexsdelight:bunfungus_sandwich");
items.add("alexsdelight:kangaroo_pasta");
items.add("alexsdelight:cooked_centipede_leg");
items.add("alexsdelight:cooked_bunfungus");
items.add("alexsdelight:cooked_bison");
items.add("alexsdelight:bison_patty");
items.add("alexsdelight:cooked_catfish_slice");
items.add("alexsdelight:cooked_bunfungus_drumstick");
items.add("alexsdelight:cooked_loose_moose_rib");
items.add("alexsdelight:cooked_kangaroo_shank");
items.add("alexsdelight:raw_bunfungus_drumstick");
items.add("alexsdelight:raw_catfish_slice");
items.add("alexsdelight:raw_bison");
items.add("alexsdelight:raw_bunfungus");
items.add("alexsdelight:kangaroo_shank");
items.add("alexsdelight:loose_moose_rib");
items.add("alexsdelight:bison_mince");
items.add("alexsmobs:moose_ribs");
items.add("alexsmobs:raw_catfish");
items.add("alexsmobs:cooked_lobster_tail");
items.add("alexsmobs:cooked_moose_ribs");
items.add("alexsmobs:cooked_kangaroo_meat");
items.add("alexsmobs:cooked_catfish");
items.add("alexsmobs:kangaroo_burger");
items.add("alexsmobs:shrimp_fried_rice");
items.add("alexsmobs:boiled_emu_egg");
items.add("alexsmobs:sopa_de_macaco");
items.add("alexsmobs:kangaroo_meat");
items.add("alexsmobs:gongylidia");
items.add("minecraft:cake");
items.add("minecraft:cookie");
items.add("minecraft:mushroom_stew");
items.add("minecraft:pumpkin_pie");
items.add("minecraft:rabbit_stew");
items.add("minecraft:beetroot_soup");
items.add("minecraft:smoker");
items.add("minecraft:bowl");
items.add("minecraft:baked_potato");
items.add("minecraft:rabbit");
items.add("minecraft:cooked_rabbit");
items.add("minecraft:mutton");
items.add("minecraft:cooked_mutton");
items.add("minecraft:cooked_porkchop");
items.add("minecraft:cooked_cod");
items.add("minecraft:cooked_salmon");
items.add("minecraft:cooked_chicken");
items.add("minecraft:porkchop");
items.add("minecraft:cooked_beef");
items.add("minecraft:cod");
items.add("minecraft:salmon");
items.add("minecraft:tropical_fish");
items.add("minecraft:beef");
items.add("minecraft:chicken");
items.add("supplementaries:pancake");
items.add("supplementaries:candy");
items.add("farmersdelight:cutting_board");
items.add("farmersdelight:basket");
items.add("farmersdelight:carrot_crate");
items.add("farmersdelight:potato_crate");
items.add("farmersdelight:beetroot_crate");
items.add("farmersdelight:cabbage_crate");
items.add("farmersdelight:tomato_crate");
items.add("farmersdelight:onion_crate");
items.add("farmersdelight:rice_bale");
items.add("farmersdelight:rice_bag");
items.add("farmersdelight:straw_bale");
items.add("farmersdelight:safety_net");
items.add("farmersdelight:oak_cabinet");
items.add("farmersdelight:spruce_cabinet");
items.add("farmersdelight:birch_cabinet");
items.add("farmersdelight:jungle_cabinet");
items.add("farmersdelight:acacia_cabinet");
items.add("farmersdelight:dark_oak_cabinet");
items.add("farmersdelight:tatami");
items.add("farmersdelight:full_tatami_mat");
items.add("farmersdelight:half_tatami_mat");
items.add("farmersdelight:canvas_rug");
items.add("farmersdelight:organic_compost");
items.add("farmersdelight:rich_soil");
items.add("farmersdelight:rich_soil_farmland");
items.add("farmersdelight:rope");
items.add("farmersdelight:iron_knife");
items.add("farmersdelight:straw");
items.add("farmersdelight:canvas");
items.add("farmersdelight:tree_bark");
items.add("farmersdelight:sandy_shrub");
items.add("farmersdelight:wild_cabbages");
items.add("farmersdelight:wild_onions");
items.add("farmersdelight:wild_tomatoes");
items.add("farmersdelight:wild_carrots");
items.add("farmersdelight:wild_potatoes");
items.add("farmersdelight:wild_beetroots");
items.add("farmersdelight:wild_rice");
items.add("farmersdelight:brown_mushroom_colony");
items.add("farmersdelight:red_mushroom_colony");
items.add("farmersdelight:cabbage");
items.add("farmersdelight:tomato");
items.add("farmersdelight:onion");
items.add("farmersdelight:rice_panicle");
items.add("farmersdelight:rice");
items.add("farmersdelight:cabbage_seeds");
items.add("farmersdelight:tomato_seeds");
items.add("farmersdelight:rotten_tomato");
items.add("farmersdelight:fried_egg");
items.add("farmersdelight:milk_bottle");
items.add("farmersdelight:hot_cocoa");
items.add("farmersdelight:apple_cider");
items.add("farmersdelight:melon_juice");
items.add("farmersdelight:tomato_sauce");
items.add("farmersdelight:wheat_dough");
items.add("farmersdelight:raw_pasta");
items.add("farmersdelight:pumpkin_slice");
items.add("farmersdelight:cabbage_leaf");
items.add("farmersdelight:minced_beef");
items.add("farmersdelight:beef_patty");
items.add("farmersdelight:chicken_cuts");
items.add("farmersdelight:cooked_chicken_cuts");
items.add("farmersdelight:bacon");
items.add("farmersdelight:cooked_bacon");
items.add("farmersdelight:cod_slice");
items.add("farmersdelight:cooked_cod_slice");
items.add("farmersdelight:salmon_slice");
items.add("farmersdelight:cooked_salmon_slice");
items.add("farmersdelight:mutton_chops");
items.add("farmersdelight:cooked_mutton_chops");
items.add("farmersdelight:ham");
items.add("farmersdelight:smoked_ham");
items.add("farmersdelight:pie_crust");
items.add("farmersdelight:apple_pie");
items.add("farmersdelight:sweet_berry_cheesecake");
items.add("farmersdelight:chocolate_pie");
items.add("farmersdelight:cake_slice");
items.add("farmersdelight:apple_pie_slice");
items.add("farmersdelight:sweet_berry_cheesecake_slice");
items.add("farmersdelight:chocolate_pie_slice");
items.add("farmersdelight:sweet_berry_cookie");
items.add("farmersdelight:honey_cookie");
items.add("farmersdelight:melon_popsicle");
items.add("farmersdelight:glow_berry_custard");
items.add("farmersdelight:fruit_salad");
items.add("farmersdelight:mixed_salad");
items.add("farmersdelight:barbecue_stick");
items.add("farmersdelight:egg_sandwich");
items.add("farmersdelight:chicken_sandwich");
items.add("farmersdelight:hamburger");
items.add("farmersdelight:bacon_sandwich");
items.add("farmersdelight:mutton_wrap");
items.add("farmersdelight:dumplings");
items.add("farmersdelight:stuffed_potato");
items.add("farmersdelight:cabbage_rolls");
items.add("farmersdelight:salmon_roll");
items.add("farmersdelight:cod_roll");
items.add("farmersdelight:kelp_roll");
items.add("farmersdelight:kelp_roll_slice");
items.add("farmersdelight:cooked_rice");
items.add("farmersdelight:bone_broth");
items.add("farmersdelight:beef_stew");
items.add("farmersdelight:chicken_soup");
items.add("farmersdelight:vegetable_soup");
items.add("farmersdelight:fish_stew");
items.add("farmersdelight:fried_rice");
items.add("farmersdelight:pumpkin_soup");
items.add("farmersdelight:baked_cod_stew");
items.add("farmersdelight:noodle_soup");
items.add("farmersdelight:bacon_and_eggs");
items.add("farmersdelight:pasta_with_meatballs");
items.add("farmersdelight:pasta_with_mutton_chop");
items.add("farmersdelight:mushroom_rice");
items.add("farmersdelight:roasted_mutton_chops");
items.add("farmersdelight:vegetable_noodles");
items.add("farmersdelight:steak_and_potatoes");
items.add("farmersdelight:ratatouille");
items.add("farmersdelight:squid_ink_pasta");
items.add("farmersdelight:grilled_salmon");
items.add("farmersdelight:roast_chicken_block");
items.add("farmersdelight:roast_chicken");
items.add("farmersdelight:stuffed_pumpkin_block");
items.add("farmersdelight:stuffed_pumpkin");
items.add("farmersdelight:honey_glazed_ham_block");
items.add("farmersdelight:honey_glazed_ham");
items.add("farmersdelight:shepherds_pie_block");
items.add("farmersdelight:shepherds_pie");
items.add("farmersdelight:rice_roll_medley_block");
items.add("farmersdelight:dog_food");
items.add("farmersdelight:horse_feed");

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