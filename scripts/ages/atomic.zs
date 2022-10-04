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

var message = new TextComponent("You haven't unlocked Atomic Age yet").setStyle(<constant:formatting:red>);
var stage = "atomic_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Atomic Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("alexsmobs:void_worm_beak");
items.add("alexsmobs:void_worm_effigy");
items.add("alexsmobs:void_worm_mandible");
items.add("alexsmobs:void_worm_eye");
items.add("alcocraft:spruce_mug_chorus_ale");
items.add("alcocraft:spruce_mug_nether_star_lager");
items.add("minecraft:purpur_block");
items.add("minecraft:purpur_pillar");
items.add("minecraft:purpur_stairs");
items.add("minecraft:end_stone");
items.add("minecraft:end_stone_bricks");
items.add("minecraft:end_stone_brick_stairs");
items.add("minecraft:chorus_plant");
items.add("minecraft:chorus_flower");
items.add("minecraft:dragon_head");
items.add("minecraft:end_crystal");
items.add("minecraft:beacon");
items.add("minecraft:chorus_fruit");
items.add("minecraft:popped_chorus_fruit");
items.add("minecraft:shulker_shell");
items.add("minecraft:elytra");
items.add("minecraft:dragon_breath");
items.add("minecraft:end_rod");
items.add("minecraft:end_portal_frame");
items.add("mcwfences:modern_end_brick_wall");
items.add("mcwfences:railing_end_brick_wall");
items.add("mcwfences:end_brick_railing_gate");
items.add("mcwwindows:end_brick_gothic");
items.add("mcwwindows:ender_brick_arrow_slit");
items.add("natprog:cobbled_end_stone");
items.add("sophisticatedstorage:shulker_box");
items.add("sophisticatedstorage:iron_shulker_box");
items.add("sophisticatedstorage:gold_shulker_box");
items.add("sophisticatedstorage:diamond_shulker_box");
items.add("sophisticatedstorage:netherite_shulker_box");
items.add("sophisticatedbackpacks:everlasting_upgrade");
items.add("supplementaries:end_stone_lamp");
items.add("mekanism:robit");
items.add("mekanism:energy_tablet");
items.add("mekanism:configurator");
items.add("mekanism:network_reader");
items.add("mekanism:dictionary");
items.add("mekanism:portable_teleporter");
items.add("mekanism:configuration_card");
items.add("mekanism:crafting_formula");
items.add("mekanism:seismic_reader");
items.add("mekanism:gauge_dropper");
items.add("mekanism:geiger_counter");
items.add("mekanism:dosimeter");
items.add("mekanism:canteen");
items.add("mekanism:portable_qio_dashboard");
items.add("mekanism:qio_drive_base");
items.add("mekanism:qio_drive_hyper_dense");
items.add("mekanism:qio_drive_time_dilating");
items.add("mekanism:qio_drive_supermassive");
items.add("mekanism:atomic_disassembler");
items.add("mekanism:electric_bow");
items.add("mekanism:flamethrower");
items.add("mekanism:meka_tool");
items.add("mekanism:free_runners");
items.add("mekanism:free_runners_armored");
items.add("mekanism:scuba_mask");
items.add("mekanism:scuba_tank");
items.add("mekanism:jetpack");
items.add("mekanism:jetpack_armored");
items.add("mekanism:hdpe_elytra");
items.add("mekanism:hazmat_mask");
items.add("mekanism:hazmat_gown");
items.add("mekanism:hazmat_pants");
items.add("mekanism:hazmat_boots");
items.add("mekanism:mekasuit_helmet");
items.add("mekanism:mekasuit_bodyarmor");
items.add("mekanism:mekasuit_pants");
items.add("mekanism:mekasuit_boots");
items.add("mekanism:module_base");
items.add("mekanism:module_energy_unit");
items.add("mekanism:module_laser_dissipation_unit");
items.add("mekanism:module_radiation_shielding_unit");
items.add("mekanism:module_excavation_escalation_unit");
items.add("mekanism:module_attack_amplification_unit");
items.add("mekanism:module_farming_unit");
items.add("mekanism:module_shearing_unit");
items.add("mekanism:module_silk_touch_unit");
items.add("mekanism:module_fortune_unit");
items.add("mekanism:module_blasting_unit");
items.add("mekanism:module_vein_mining_unit");
items.add("mekanism:module_teleportation_unit");
items.add("mekanism:module_electrolytic_breathing_unit");
items.add("mekanism:module_inhalation_purification_unit");
items.add("mekanism:module_vision_enhancement_unit");
items.add("mekanism:module_nutritional_injection_unit");
items.add("mekanism:module_dosimeter_unit");
items.add("mekanism:module_geiger_unit");
items.add("mekanism:module_jetpack_unit");
items.add("mekanism:module_charge_distribution_unit");
items.add("mekanism:module_gravitational_modulating_unit");
items.add("mekanism:module_elytra_unit");
items.add("mekanism:module_gyroscopic_stabilization_unit");
items.add("mekanism:module_hydrostatic_repulsor_unit");
items.add("mekanism:module_locomotive_boosting_unit");
items.add("mekanism:module_hydraulic_propulsion_unit");
items.add("mekanism:module_magnetic_attraction_unit");
items.add("mekanism:module_frost_walker_unit");
items.add("mekanism:upgrade_speed");
items.add("mekanism:upgrade_energy");
items.add("mekanism:upgrade_filter");
items.add("mekanism:upgrade_muffling");
items.add("mekanism:upgrade_gas");
items.add("mekanism:upgrade_anchor");
items.add("mekanism:upgrade_stone_generator");
items.add("mekanism:basic_tier_installer");
items.add("mekanism:advanced_tier_installer");
items.add("mekanism:elite_tier_installer");
items.add("mekanism:ultimate_tier_installer");
items.add("mekanism:basic_control_circuit");
items.add("mekanism:advanced_control_circuit");
items.add("mekanism:elite_control_circuit");
items.add("mekanism:ultimate_control_circuit");
items.add("mekanism:alloy_infused");
items.add("mekanism:alloy_reinforced");
items.add("mekanism:alloy_atomic");
items.add("mekanism:enriched_carbon");
items.add("mekanism:enriched_redstone");
items.add("mekanism:enriched_diamond");
items.add("mekanism:enriched_refined_obsidian");
items.add("mekanism:enriched_gold");
items.add("mekanism:enriched_tin");
items.add("mekanism:hdpe_pellet");
items.add("mekanism:hdpe_rod");
items.add("mekanism:hdpe_sheet");
items.add("mekanism:hdpe_stick");
items.add("mekanism:electrolytic_core");
items.add("mekanism:teleportation_core");
items.add("mekanism:pellet_antimatter");
items.add("mekanism:pellet_plutonium");
items.add("mekanism:pellet_polonium");
items.add("mekanism:reprocessed_fissile_fragment");
items.add("mekanism:enriched_iron");
items.add("mekanism:sawdust");
items.add("mekanism:salt");
items.add("mekanism:substrate");
items.add("mekanism:bio_fuel");
items.add("mekanism:dye_base");
items.add("mekanism:fluorite_gem");
items.add("mekanism:yellow_cake_uranium");
items.add("mekanism:dirty_netherite_scrap");
items.add("mekanism:dust_bronze");
items.add("mekanism:dust_lapis_lazuli");
items.add("mekanism:dust_coal");
items.add("mekanism:dust_charcoal");
items.add("mekanism:dust_quartz");
items.add("mekanism:dust_emerald");
items.add("mekanism:dust_diamond");
items.add("mekanism:dust_netherite");
items.add("mekanism:dust_steel");
items.add("mekanism:dust_sulfur");
items.add("mekanism:dust_lithium");
items.add("mekanism:dust_refined_obsidian");
items.add("mekanism:dust_obsidian");
items.add("mekanism:dust_fluorite");
items.add("mekanism:ingot_refined_obsidian");
items.add("mekanism:ingot_refined_glowstone");
items.add("mekanism:ingot_steel");
items.add("mekanism:nugget_refined_obsidian");
items.add("mekanism:nugget_refined_glowstone");
items.add("mekanism:nugget_steel");
items.add("mekanism:shard_iron");
items.add("mekanism:shard_gold");
items.add("mekanism:shard_osmium");
items.add("mekanism:shard_copper");
items.add("mekanism:shard_tin");
items.add("mekanism:shard_lead");
items.add("mekanism:shard_uranium");
items.add("mekanism:crystal_iron");
items.add("mekanism:crystal_gold");
items.add("mekanism:crystal_osmium");
items.add("mekanism:crystal_copper");
items.add("mekanism:crystal_tin");
items.add("mekanism:crystal_lead");
items.add("mekanism:crystal_uranium");
items.add("mekanism:dust_iron");
items.add("mekanism:dust_gold");
items.add("mekanism:dust_osmium");
items.add("mekanism:dust_copper");
items.add("mekanism:dust_lead");
items.add("mekanism:dust_uranium");
items.add("mekanism:dirty_dust_iron");
items.add("mekanism:dirty_dust_gold");
items.add("mekanism:dirty_dust_osmium");
items.add("mekanism:dirty_dust_copper");
items.add("mekanism:dirty_dust_tin");
items.add("mekanism:dirty_dust_lead");
items.add("mekanism:dirty_dust_uranium");
items.add("mekanism:clump_iron");
items.add("mekanism:clump_gold");
items.add("mekanism:clump_osmium");
items.add("mekanism:clump_copper");
items.add("mekanism:clump_tin");
items.add("mekanism:clump_lead");
items.add("mekanism:clump_uranium");
items.add("mekanism:ingot_osmium");
items.add("mekanism:raw_osmium");
items.add("mekanism:nugget_osmium");
items.add("mekanism:basic_smelting_factory");
items.add("mekanism:basic_enriching_factory");
items.add("mekanism:basic_crushing_factory");
items.add("mekanism:basic_compressing_factory");
items.add("mekanism:basic_combining_factory");
items.add("mekanism:basic_purifying_factory");
items.add("mekanism:basic_injecting_factory");
items.add("mekanism:basic_infusing_factory");
items.add("mekanism:basic_sawing_factory");
items.add("mekanism:advanced_smelting_factory");
items.add("mekanism:advanced_enriching_factory");
items.add("mekanism:advanced_crushing_factory");
items.add("mekanism:advanced_compressing_factory");
items.add("mekanism:advanced_combining_factory");
items.add("mekanism:advanced_purifying_factory");
items.add("mekanism:advanced_injecting_factory");
items.add("mekanism:advanced_infusing_factory");
items.add("mekanism:advanced_sawing_factory");
items.add("mekanism:elite_smelting_factory");
items.add("mekanism:elite_enriching_factory");
items.add("mekanism:elite_crushing_factory");
items.add("mekanism:elite_compressing_factory");
items.add("mekanism:elite_combining_factory");
items.add("mekanism:elite_purifying_factory");
items.add("mekanism:elite_injecting_factory");
items.add("mekanism:elite_infusing_factory");
items.add("mekanism:elite_sawing_factory");
items.add("mekanism:ultimate_smelting_factory");
items.add("mekanism:ultimate_enriching_factory");
items.add("mekanism:ultimate_crushing_factory");
items.add("mekanism:ultimate_compressing_factory");
items.add("mekanism:ultimate_combining_factory");
items.add("mekanism:ultimate_purifying_factory");
items.add("mekanism:ultimate_injecting_factory");
items.add("mekanism:ultimate_infusing_factory");
items.add("mekanism:ultimate_sawing_factory");
items.add("mekanism:block_osmium");
items.add("mekanism:block_raw_osmium");
items.add("mekanism:block_lead");
items.add("mekanism:osmium_ore");
items.add("mekanism:deepslate_osmium_ore");
items.add("mekanism:fluorite_ore");
items.add("mekanism:deepslate_fluorite_ore");
items.add("mekanism:block_refined_obsidian");
items.add("mekanism:block_charcoal");
items.add("mekanism:block_refined_glowstone");
items.add("mekanism:block_steel");
items.add("mekanism:block_fluorite");
items.add("mekanism:basic_bin");
items.add("mekanism:advanced_bin");
items.add("mekanism:elite_bin");
items.add("mekanism:ultimate_bin");
items.add("mekanism:creative_bin");
items.add("mekanism:teleporter_frame");
items.add("mekanism:steel_casing");
items.add("mekanism:dynamic_tank");
items.add("mekanism:structural_glass");
items.add("mekanism:dynamic_valve");
items.add("mekanism:thermal_evaporation_controller");
items.add("mekanism:thermal_evaporation_valve");
items.add("mekanism:thermal_evaporation_block");
items.add("mekanism:induction_casing");
items.add("mekanism:induction_port");
items.add("mekanism:basic_induction_cell");
items.add("mekanism:advanced_induction_cell");
items.add("mekanism:elite_induction_cell");
items.add("mekanism:ultimate_induction_cell");
items.add("mekanism:basic_induction_provider");
items.add("mekanism:advanced_induction_provider");
items.add("mekanism:elite_induction_provider");
items.add("mekanism:ultimate_induction_provider");
items.add("mekanism:superheating_element");
items.add("mekanism:pressure_disperser");
items.add("mekanism:boiler_casing");
items.add("mekanism:boiler_valve");
items.add("mekanism:security_desk");
items.add("mekanism:radioactive_waste_barrel");
items.add("mekanism:industrial_alarm");
items.add("mekanism:enrichment_chamber");
items.add("mekanism:osmium_compressor");
items.add("mekanism:combiner");
items.add("mekanism:crusher");
items.add("mekanism:digital_miner");
items.add("mekanism:metallurgic_infuser");
items.add("mekanism:purification_chamber");
items.add("mekanism:energized_smelter");
items.add("mekanism:teleporter");
items.add("mekanism:electric_pump");
items.add("mekanism:personal_barrel");
items.add("mekanism:personal_chest");
items.add("mekanism:chargepad");
items.add("mekanism:logistical_sorter");
items.add("mekanism:rotary_condensentrator");
items.add("mekanism:chemical_oxidizer");
items.add("mekanism:chemical_infuser");
items.add("mekanism:chemical_injection_chamber");
items.add("mekanism:electrolytic_separator");
items.add("mekanism:precision_sawmill");
items.add("mekanism:chemical_dissolution_chamber");
items.add("mekanism:chemical_washer");
items.add("mekanism:chemical_crystallizer");
items.add("mekanism:seismic_vibrator");
items.add("mekanism:pressurized_reaction_chamber");
items.add("mekanism:isotopic_centrifuge");
items.add("mekanism:nutritional_liquifier");
items.add("mekanism:basic_fluid_tank");
items.add("mekanism:advanced_fluid_tank");
items.add("mekanism:elite_fluid_tank");
items.add("mekanism:ultimate_fluid_tank");
items.add("mekanism:creative_fluid_tank");
items.add("mekanism:fluidic_plenisher");
items.add("mekanism:laser");
items.add("mekanism:laser_amplifier");
items.add("mekanism:laser_tractor_beam");
items.add("mekanism:quantum_entangloporter");
items.add("mekanism:solar_neutron_activator");
items.add("mekanism:oredictionificator");
items.add("mekanism:resistive_heater");
items.add("mekanism:formulaic_assemblicator");
items.add("mekanism:fuelwood_heater");
items.add("mekanism:modification_station");
items.add("mekanism:antiprotonic_nucleosynthesizer");
items.add("mekanism:pigment_extractor");
items.add("mekanism:pigment_mixer");
items.add("mekanism:painting_machine");
items.add("mekanism:sps_casing");
items.add("mekanism:sps_port");
items.add("mekanism:supercharged_coil");
items.add("mekanism:dimensional_stabilizer");
items.add("mekanism:qio_drive_array");
items.add("mekanism:qio_dashboard");
items.add("mekanism:qio_importer");
items.add("mekanism:qio_exporter");
items.add("mekanism:qio_redstone_adapter");
items.add("mekanism:basic_energy_cube");
items.add("mekanism:advanced_energy_cube");
items.add("mekanism:elite_energy_cube");
items.add("mekanism:ultimate_energy_cube");
items.add("mekanism:creative_energy_cube");
items.add("mekanism:basic_universal_cable");
items.add("mekanism:advanced_universal_cable");
items.add("mekanism:elite_universal_cable");
items.add("mekanism:ultimate_universal_cable");
items.add("mekanism:basic_mechanical_pipe");
items.add("mekanism:advanced_mechanical_pipe");
items.add("mekanism:elite_mechanical_pipe");
items.add("mekanism:ultimate_mechanical_pipe");
items.add("mekanism:basic_pressurized_tube");
items.add("mekanism:advanced_pressurized_tube");
items.add("mekanism:elite_pressurized_tube");
items.add("mekanism:ultimate_pressurized_tube");
items.add("mekanism:basic_logistical_transporter");
items.add("mekanism:advanced_logistical_transporter");
items.add("mekanism:elite_logistical_transporter");
items.add("mekanism:ultimate_logistical_transporter");
items.add("mekanism:restrictive_transporter");
items.add("mekanism:diversion_transporter");
items.add("mekanism:basic_thermodynamic_conductor");
items.add("mekanism:advanced_thermodynamic_conductor");
items.add("mekanism:elite_thermodynamic_conductor");
items.add("mekanism:ultimate_thermodynamic_conductor");
items.add("mekanism:bounding_block");
items.add("mekanism:basic_chemical_tank");
items.add("mekanism:advanced_chemical_tank");
items.add("mekanism:elite_chemical_tank");
items.add("mekanism:ultimate_chemical_tank");
items.add("mekanism:creative_chemical_tank");
items.add("mekanism:cardboard_box");
items.add("mekanism:block_salt");
items.add("mekanism:hydrogen_bucket");
items.add("mekanism:oxygen_bucket");
items.add("mekanism:chlorine_bucket");
items.add("mekanism:sulfur_dioxide_bucket");
items.add("mekanism:sulfur_trioxide_bucket");
items.add("mekanism:sulfuric_acid_bucket");
items.add("mekanism:hydrogen_chloride_bucket");
items.add("mekanism:hydrofluoric_acid_bucket");
items.add("mekanism:uranium_oxide_bucket");
items.add("mekanism:uranium_hexafluoride_bucket");
items.add("mekanism:ethene_bucket");
items.add("mekanism:sodium_bucket");
items.add("mekanism:superheated_sodium_bucket");
items.add("mekanism:brine_bucket");
items.add("mekanism:lithium_bucket");
items.add("mekanism:steam_bucket");
items.add("mekanism:heavy_water_bucket");
items.add("mekanism:nutritional_paste_bucket");


for item in game.items {
    if(item.registryName.namespace == "endrem") {
        items.add(item.registryName.toString());
    }
    if(item.registryName.namespace == "mekanismgenerators") {
        items.add(item.registryName.toString());
    }

    if(item.registryName.namespace == "mekanism") {
        println(item.registryName.toString());
    }
}

tagToList(items, <tag:items:forge:shulker_boxes>);

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