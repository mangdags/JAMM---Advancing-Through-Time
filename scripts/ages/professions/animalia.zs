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

var message = new TextComponent("You haven't unlocked Animalia yet").setStyle(<constant:formatting:red>);
var stage = "animalia";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Animalia").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;
items.add("alexsmobs:falconry_glove");
items.add("alexsmobs:tab_icon");
items.add("alexsmobs:bear_fur");
items.add("alexsmobs:bear_dust");
items.add("alexsmobs:roadrunner_feather");
items.add("alexsmobs:roadrunner_boots");
items.add("alexsmobs:lava_bottle");
items.add("alexsmobs:bone_serpent_tooth");
items.add("alexsmobs:gazelle_horn");
items.add("alexsmobs:crocodile_scute");
items.add("alexsmobs:crocodile_chestplate");
items.add("alexsmobs:maggot");
items.add("alexsmobs:banana");
items.add("alexsmobs:ancient_dart");
items.add("alexsmobs:halo");
items.add("alexsmobs:blood_sac");
items.add("alexsmobs:mosquito_proboscis");
items.add("alexsmobs:blood_sprayer");
items.add("alexsmobs:rattlesnake_rattle");
items.add("alexsmobs:chorus_on_a_stick");
items.add("alexsmobs:shark_tooth");
items.add("alexsmobs:shark_tooth_arrow");
items.add("alexsmobs:lobster_tail");
items.add("alexsmobs:lobster_bucket");
items.add("alexsmobs:komodo_spit");
items.add("alexsmobs:komodo_spit_bottle");
items.add("alexsmobs:poison_bottle");
items.add("alexsmobs:centipede_leg");
items.add("alexsmobs:centipede_leggings");
items.add("alexsmobs:mosquito_larva");
items.add("alexsmobs:moose_antler");
items.add("alexsmobs:moose_headgear");
items.add("alexsmobs:mimicream");
items.add("alexsmobs:raccoon_tail");
items.add("alexsmobs:frontier_cap");
items.add("alexsmobs:blobfish");
items.add("alexsmobs:fish_oil");
items.add("alexsmobs:maraca");
items.add("alexsmobs:sombrero");
items.add("alexsmobs:cockroach_wing_fragment");
items.add("alexsmobs:cockroach_wing");
items.add("alexsmobs:cockroach_ootheca");
items.add("alexsmobs:soul_heart");
items.add("alexsmobs:spiked_scute");
items.add("alexsmobs:spiked_turtle_shell");
items.add("alexsmobs:guster_eye");
items.add("alexsmobs:pocket_sand");
items.add("alexsmobs:warped_muscle");
items.add("alexsmobs:hemolymph_sac");
items.add("alexsmobs:hemolymph_blaster");
items.add("alexsmobs:warped_mixture");
items.add("alexsmobs:straddlite");
items.add("alexsmobs:stradpole_bucket");
items.add("alexsmobs:straddleboard");
items.add("alexsmobs:emu_egg");
items.add("alexsmobs:emu_feather");
items.add("alexsmobs:emu_leggings");
items.add("alexsmobs:platypus_bucket");
items.add("alexsmobs:fedora");
items.add("alexsmobs:dropbear_claw");
items.add("alexsmobs:kangaroo_hide");
items.add("alexsmobs:ambergris");
items.add("alexsmobs:cachalot_whale_tooth");
items.add("alexsmobs:echolocator");
items.add("alexsmobs:endolocator");
items.add("alexsmobs:leafcutter_ant_pupa");
items.add("alexsmobs:enderiophage_rocket");
items.add("alexsmobs:falconry_glove_inventory");
items.add("alexsmobs:falconry_glove_hand");
items.add("alexsmobs:falconry_hood");
items.add("alexsmobs:tarantula_hawk_wing_fragment");
items.add("alexsmobs:tarantula_hawk_wing");
items.add("alexsmobs:tarantula_hawk_elytra");
items.add("alexsmobs:mysterious_worm");
items.add("alexsmobs:dimensional_carver");
items.add("alexsmobs:serrated_shark_tooth");
items.add("alexsmobs:frilled_shark_bucket");
items.add("alexsmobs:shield_of_the_deep");
items.add("alexsmobs:mimic_octopus_bucket");
items.add("alexsmobs:froststalker_horn");
items.add("alexsmobs:froststalker_helmet");
items.add("alexsmobs:pigshoes");
items.add("alexsmobs:straddle_helmet");
items.add("alexsmobs:straddle_saddle");
items.add("alexsmobs:cosmic_cod");
items.add("alexsmobs:shed_snake_skin");
items.add("alexsmobs:vine_lasso_inventory");
items.add("alexsmobs:vine_lasso_hand");
items.add("alexsmobs:vine_lasso");
items.add("alexsmobs:rocky_shell");
items.add("alexsmobs:rocky_chestplate");
items.add("alexsmobs:potted_flutter");
items.add("alexsmobs:terrapin_bucket");
items.add("alexsmobs:comb_jelly_bucket");
items.add("alexsmobs:rainbow_jelly");
items.add("alexsmobs:cosmic_cod_bucket");
items.add("alexsmobs:mungal_spores");
items.add("alexsmobs:bison_fur");
items.add("alexsmobs:lost_tentacle");
items.add("alexsmobs:squid_grapple");
items.add("alexsmobs:devils_hole_pupfish_bucket");
items.add("alexsmobs:pupfish_locator");
items.add("alexsmobs:small_catfish_bucket");
items.add("alexsmobs:medium_catfish_bucket");
items.add("alexsmobs:large_catfish_bucket");
items.add("alexsmobs:flying_fish");
items.add("alexsmobs:flying_fish_boots");
items.add("alexsmobs:flying_fish_bucket");
items.add("alexsmobs:fish_bones");
items.add("alexsmobs:skelewag_sword_inventory");
items.add("alexsmobs:skelewag_sword_hand");
items.add("alexsmobs:skelewag_sword");
items.add("alexsmobs:novelty_hat");
items.add("alexsmobs:music_disc_thime");
items.add("alexsmobs:music_disc_daze");
items.add("alexsmobs:spawn_egg_grizzly_bear");
items.add("alexsmobs:spawn_egg_roadrunner");
items.add("alexsmobs:spawn_egg_bone_serpent");
items.add("alexsmobs:spawn_egg_gazelle");
items.add("alexsmobs:spawn_egg_crocodile");
items.add("alexsmobs:spawn_egg_fly");
items.add("alexsmobs:spawn_egg_hummingbird");
items.add("alexsmobs:spawn_egg_orca");
items.add("alexsmobs:spawn_egg_sunbird");
items.add("alexsmobs:spawn_egg_gorilla");
items.add("alexsmobs:spawn_egg_crimson_mosquito");
items.add("alexsmobs:spawn_egg_rattlesnake");
items.add("alexsmobs:spawn_egg_endergrade");
items.add("alexsmobs:spawn_egg_hammerhead_shark");
items.add("alexsmobs:spawn_egg_lobster");
items.add("alexsmobs:spawn_egg_komodo_dragon");
items.add("alexsmobs:spawn_egg_capuchin_monkey");
items.add("alexsmobs:spawn_egg_centipede");
items.add("alexsmobs:spawn_egg_warped_toad");
items.add("alexsmobs:spawn_egg_moose");
items.add("alexsmobs:spawn_egg_mimicube");
items.add("alexsmobs:spawn_egg_raccoon");
items.add("alexsmobs:spawn_egg_blobfish");
items.add("alexsmobs:spawn_egg_seal");
items.add("alexsmobs:spawn_egg_cockroach");
items.add("alexsmobs:spawn_egg_shoebill");
items.add("alexsmobs:spawn_egg_elephant");
items.add("alexsmobs:spawn_egg_soul_vulture");
items.add("alexsmobs:spawn_egg_snow_leopard");
items.add("alexsmobs:spawn_egg_spectre");
items.add("alexsmobs:spawn_egg_crow");
items.add("alexsmobs:spawn_egg_alligator_snapping_turtle");
items.add("alexsmobs:spawn_egg_mungus");
items.add("alexsmobs:spawn_egg_mantis_shrimp");
items.add("alexsmobs:spawn_egg_guster");
items.add("alexsmobs:spawn_egg_warped_mosco");
items.add("alexsmobs:spawn_egg_straddler");
items.add("alexsmobs:spawn_egg_stradpole");
items.add("alexsmobs:spawn_egg_emu");
items.add("alexsmobs:spawn_egg_platypus");
items.add("alexsmobs:spawn_egg_dropbear");
items.add("alexsmobs:spawn_egg_tasmanian_devil");
items.add("alexsmobs:spawn_egg_kangaroo");
items.add("alexsmobs:spawn_egg_cachalot_whale");
items.add("alexsmobs:spawn_egg_leafcutter_ant");
items.add("alexsmobs:spawn_egg_enderiophage");
items.add("alexsmobs:spawn_egg_bald_eagle");
items.add("alexsmobs:spawn_egg_tiger");
items.add("alexsmobs:spawn_egg_tarantula_hawk");
items.add("alexsmobs:spawn_egg_void_worm");
items.add("alexsmobs:spawn_egg_frilled_shark");
items.add("alexsmobs:spawn_egg_mimic_octopus");
items.add("alexsmobs:spawn_egg_seagull");
items.add("alexsmobs:spawn_egg_froststalker");
items.add("alexsmobs:spawn_egg_tusklin");
items.add("alexsmobs:spawn_egg_laviathan");
items.add("alexsmobs:spawn_egg_cosmaw");
items.add("alexsmobs:spawn_egg_toucan");
items.add("alexsmobs:spawn_egg_maned_wolf");
items.add("alexsmobs:spawn_egg_anaconda");
items.add("alexsmobs:spawn_egg_anteater");
items.add("alexsmobs:spawn_egg_rocky_roller");
items.add("alexsmobs:spawn_egg_flutter");
items.add("alexsmobs:spawn_egg_gelada_monkey");
items.add("alexsmobs:spawn_egg_jerboa");
items.add("alexsmobs:spawn_egg_terrapin");
items.add("alexsmobs:spawn_egg_comb_jelly");
items.add("alexsmobs:spawn_egg_cosmic_cod");
items.add("alexsmobs:spawn_egg_bunfungus");
items.add("alexsmobs:spawn_egg_bison");
items.add("alexsmobs:spawn_egg_giant_squid");
items.add("alexsmobs:spawn_egg_devils_hole_pupfish");
items.add("alexsmobs:spawn_egg_catfish");
items.add("alexsmobs:spawn_egg_flying_fish");
items.add("alexsmobs:spawn_egg_skelewag");
items.add("alexsmobs:banner_pattern_bear");
items.add("alexsmobs:banner_pattern_australia_0");
items.add("alexsmobs:banner_pattern_australia_1");
items.add("alexsmobs:banner_pattern_new_mexico");
items.add("alexsmobs:banner_pattern_brazil");
items.add("alexsmobs:banana_peel");
items.add("alexsmobs:hummingbird_feeder");
items.add("alexsmobs:crocodile_egg");
items.add("alexsmobs:gustmaker");
items.add("alexsmobs:straddlite_block");
items.add("alexsmobs:leafcutter_anthill");
items.add("alexsmobs:leafcutter_ant_chamber");
items.add("alexsmobs:capsid");
items.add("alexsmobs:terrapin_egg");
items.add("alexsmobs:rainbow_glass");
items.add("alexsmobs:bison_fur_block");
items.add("alexsmobs:bison_carpet");
items.add("alexsmobs:sand_circle");
items.add("alexsmobs:red_sand_circle");


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