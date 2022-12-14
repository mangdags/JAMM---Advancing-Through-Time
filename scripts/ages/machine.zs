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

var message = new TextComponent("You haven't unlocked Machine Age yet").setStyle(<constant:formatting:red>);
var stage = "machine_age";
var toolTip1 = new TextComponent("UNAVAILABLE ITEM").withStyle(style => style.withColor(<constant:minecraft:formatting:gold>).withItalic(true));
var toolTip2 = new TextComponent("Unlock Machine Age").setStyle(<constant:formatting:dark_red>);

var items = new stdlib.List<string>;

items.add("jousting:lance_netherite");
items.add("minecraft:netherite_ingot");
items.add("minecraft:lodestone");
items.add("parrying:netherite_mace");
items.add("parrying:netherite_hammer");
items.add("parrying:netherite_dagger");
items.add("parrying:netherite_flail");
items.add("parrying:netherite_spear");
items.add("supplementaries:lead_door");
items.add("supplementaries:silver_door");
items.add("supplementaries:lead_lantern");
items.add("supplementaries:silver_trapdoor");
items.add("supplementaries:lead_trapdoor");
items.add("toms_storage:ts.adv_wireless_terminal");
items.add("mekanism:ingot_uranium");
items.add("mekanism:raw_uranium");
items.add("mekanism:nugget_uranium");
items.add("mekanism:block_uranium");
items.add("mekanism:block_raw_uranium");
items.add("mekanism:uranium_ore");
items.add("mekanism:deepslate_uranium_ore");
items.add("mekanism:dust_tin");
items.add("mekanism:block_lead");
items.add("immersiveposts:postbase");
items.add("immersiveposts:fence_gold");
items.add("immersiveposts:fence_copper");
items.add("immersiveposts:fence_lead");
items.add("immersiveposts:fence_silver");
items.add("immersiveposts:fence_nickel");
items.add("immersiveposts:fence_constantan");
items.add("immersiveposts:fence_electrum");
items.add("immersiveposts:fence_uranium");
items.add("immersiveposts:stick_gold");
items.add("immersiveposts:stick_copper");
items.add("immersiveposts:stick_lead");
items.add("immersiveposts:stick_silver");
items.add("immersiveposts:stick_nickel");
items.add("immersiveposts:stick_constantan");
items.add("immersiveposts:stick_electrum");
items.add("immersiveposts:stick_uranium");
items.add("immersiveengineering:creosote_bucket");
items.add("immersiveengineering:plantoil_bucket");
items.add("immersiveengineering:ethanol_bucket");
items.add("immersiveengineering:biodiesel_bucket");
items.add("immersiveengineering:concrete_bucket");
items.add("immersiveengineering:herbicide_bucket");
items.add("immersiveengineering:redstone_acid_bucket");
items.add("immersiveengineering:acetaldehyde_bucket");
items.add("immersiveengineering:phenolic_resin_bucket");
items.add("immersiveengineering:cushion");
items.add("immersiveengineering:balloon");
items.add("immersiveengineering:strip_curtain");
items.add("immersiveengineering:coke_oven");
items.add("immersiveengineering:blast_furnace");
items.add("immersiveengineering:alloy_smelter");
items.add("immersiveengineering:advanced_blast_furnace");
items.add("immersiveengineering:metal_press");
items.add("immersiveengineering:crusher");
items.add("immersiveengineering:sawmill");
items.add("immersiveengineering:tank");
items.add("immersiveengineering:silo");
items.add("immersiveengineering:assembler");
items.add("immersiveengineering:auto_workbench");
items.add("immersiveengineering:bottling_machine");
items.add("immersiveengineering:squeezer");
items.add("immersiveengineering:fermenter");
items.add("immersiveengineering:refinery");
items.add("immersiveengineering:diesel_generator");
items.add("immersiveengineering:excavator");
items.add("immersiveengineering:bucket_wheel");
items.add("immersiveengineering:arc_furnace");
items.add("immersiveengineering:lightning_rod");
items.add("immersiveengineering:mixer");
items.add("immersiveengineering:cokebrick");
items.add("immersiveengineering:blastbrick");
items.add("immersiveengineering:blastbrick_reinforced");
items.add("immersiveengineering:coke");
items.add("immersiveengineering:slag_gravel");
items.add("immersiveengineering:hempcrete");
items.add("immersiveengineering:concrete");
items.add("immersiveengineering:concrete_tile");
items.add("immersiveengineering:concrete_leaded");
items.add("immersiveengineering:insulating_glass");
items.add("immersiveengineering:slag_glass");
items.add("immersiveengineering:concrete_sprayed");
items.add("immersiveengineering:alloybrick");
items.add("immersiveengineering:concrete_sheet");
items.add("immersiveengineering:concrete_quarter");
items.add("immersiveengineering:concrete_three_quarter");
items.add("immersiveengineering:duroplast");
items.add("immersiveengineering:craftingtable");
items.add("immersiveengineering:workbench");
items.add("immersiveengineering:circuit_table");
items.add("immersiveengineering:gunpowder_barrel");
items.add("immersiveengineering:wooden_barrel");
items.add("immersiveengineering:turntable");
items.add("immersiveengineering:crate");
items.add("immersiveengineering:reinforced_crate");
items.add("immersiveengineering:sorter");
items.add("immersiveengineering:item_batcher");
items.add("immersiveengineering:fluid_sorter");
items.add("immersiveengineering:windmill");
items.add("immersiveengineering:watermill");
items.add("immersiveengineering:treated_wallmount");
items.add("immersiveengineering:logic_unit");
items.add("immersiveengineering:razor_wire");
items.add("immersiveengineering:capacitor_lv");
items.add("immersiveengineering:capacitor_mv");
items.add("immersiveengineering:capacitor_hv");
items.add("immersiveengineering:capacitor_creative");
items.add("immersiveengineering:metal_barrel");
items.add("immersiveengineering:fluid_pump");
items.add("immersiveengineering:fluid_placer");
items.add("immersiveengineering:blastfurnace_preheater");
items.add("immersiveengineering:furnace_heater");
items.add("immersiveengineering:dynamo");
items.add("immersiveengineering:thermoelectric_generator");
items.add("immersiveengineering:electric_lantern");
items.add("immersiveengineering:charging_station");
items.add("immersiveengineering:fluid_pipe");
items.add("immersiveengineering:sample_drill");
items.add("immersiveengineering:tesla_coil");
items.add("immersiveengineering:floodlight");
items.add("immersiveengineering:turret_chem");
items.add("immersiveengineering:turret_gun");
items.add("immersiveengineering:cloche");
items.add("immersiveengineering:coil_lv");
items.add("immersiveengineering:coil_mv");
items.add("immersiveengineering:coil_hv");
items.add("immersiveengineering:rs_engineering");
items.add("immersiveengineering:heavy_engineering");
items.add("immersiveengineering:light_engineering");
items.add("immersiveengineering:generator");
items.add("immersiveengineering:radiator");
items.add("immersiveengineering:steel_fence");
items.add("immersiveengineering:alu_fence");
items.add("immersiveengineering:steel_wallmount");
items.add("immersiveengineering:alu_wallmount");
items.add("immersiveengineering:steel_post");
items.add("immersiveengineering:lantern");
items.add("immersiveengineering:steel_slope");
items.add("immersiveengineering:alu_slope");
items.add("immersiveengineering:connector_structural");
items.add("immersiveengineering:transformer");
items.add("immersiveengineering:transformer_hv");
items.add("immersiveengineering:breaker_switch");
items.add("immersiveengineering:redstone_breaker");
items.add("immersiveengineering:current_transformer");
items.add("immersiveengineering:connector_redstone");
items.add("immersiveengineering:connector_probe");
items.add("immersiveengineering:connector_bundled");
items.add("immersiveengineering:feedthrough");
items.add("immersiveengineering:sheetmetal_copper");
items.add("immersiveengineering:slab_sheetmetal_copper");
items.add("immersiveengineering:sheetmetal_aluminum");
items.add("immersiveengineering:slab_sheetmetal_aluminum");
items.add("immersiveengineering:storage_aluminum");
items.add("immersiveengineering:slab_storage_aluminum");
items.add("immersiveengineering:sheetmetal_lead");
items.add("immersiveengineering:slab_sheetmetal_lead");
items.add("immersiveengineering:ore_lead");
items.add("immersiveengineering:deepslate_ore_lead");
items.add("immersiveengineering:raw_block_lead");
items.add("immersiveengineering:storage_lead");
items.add("immersiveengineering:slab_storage_lead");
items.add("immersiveengineering:sheetmetal_silver");
items.add("immersiveengineering:slab_sheetmetal_silver");
items.add("immersiveengineering:ore_silver");
items.add("immersiveengineering:deepslate_ore_silver");
items.add("immersiveengineering:raw_block_silver");
items.add("immersiveengineering:storage_silver");
items.add("immersiveengineering:slab_storage_silver");
items.add("immersiveengineering:sheetmetal_nickel");
items.add("immersiveengineering:slab_sheetmetal_nickel");
items.add("immersiveengineering:ore_nickel");
items.add("immersiveengineering:deepslate_ore_nickel");
items.add("immersiveengineering:raw_block_nickel");
items.add("immersiveengineering:storage_nickel");
items.add("immersiveengineering:slab_storage_nickel");
items.add("immersiveengineering:sheetmetal_uranium");
items.add("immersiveengineering:slab_sheetmetal_uranium");
items.add("immersiveengineering:ore_uranium");
items.add("immersiveengineering:deepslate_ore_uranium");
items.add("immersiveengineering:raw_block_uranium");
items.add("immersiveengineering:storage_uranium");
items.add("immersiveengineering:slab_storage_uranium");
items.add("immersiveengineering:sheetmetal_constantan");
items.add("immersiveengineering:slab_sheetmetal_constantan");
items.add("immersiveengineering:storage_constantan");
items.add("immersiveengineering:slab_storage_constantan");
items.add("immersiveengineering:sheetmetal_electrum");
items.add("immersiveengineering:slab_sheetmetal_electrum");
items.add("immersiveengineering:storage_electrum");
items.add("immersiveengineering:slab_storage_electrum");
items.add("immersiveengineering:sheetmetal_steel");
items.add("immersiveengineering:slab_sheetmetal_steel");
items.add("immersiveengineering:storage_steel");
items.add("immersiveengineering:slab_storage_steel");
items.add("immersiveengineering:sheetmetal_iron");
items.add("immersiveengineering:slab_sheetmetal_iron");
items.add("immersiveengineering:sheetmetal_gold");
items.add("immersiveengineering:slab_sheetmetal_gold");
items.add("immersiveengineering:treated_fence");
items.add("immersiveengineering:treated_scaffold");
items.add("immersiveengineering:treated_post");
items.add("immersiveengineering:sawdust");
items.add("immersiveengineering:fiberboard");
items.add("immersiveengineering:treated_wood_horizontal");
items.add("immersiveengineering:slab_treated_wood_horizontal");
items.add("immersiveengineering:stairs_treated_wood_horizontal");
items.add("immersiveengineering:treated_wood_vertical");
items.add("immersiveengineering:slab_treated_wood_vertical");
items.add("immersiveengineering:stairs_treated_wood_vertical");
items.add("immersiveengineering:treated_wood_packaged");
items.add("immersiveengineering:slab_treated_wood_packaged");
items.add("immersiveengineering:stairs_treated_wood_packaged");
items.add("immersiveengineering:sheetmetal_colored_white");
items.add("immersiveengineering:slab_sheetmetal_colored_white");
items.add("immersiveengineering:sheetmetal_colored_orange");
items.add("immersiveengineering:slab_sheetmetal_colored_orange");
items.add("immersiveengineering:sheetmetal_colored_magenta");
items.add("immersiveengineering:slab_sheetmetal_colored_magenta");
items.add("immersiveengineering:sheetmetal_colored_light_blue");
items.add("immersiveengineering:slab_sheetmetal_colored_light_blue");
items.add("immersiveengineering:sheetmetal_colored_yellow");
items.add("immersiveengineering:slab_sheetmetal_colored_yellow");
items.add("immersiveengineering:sheetmetal_colored_lime");
items.add("immersiveengineering:slab_sheetmetal_colored_lime");
items.add("immersiveengineering:sheetmetal_colored_pink");
items.add("immersiveengineering:slab_sheetmetal_colored_pink");
items.add("immersiveengineering:sheetmetal_colored_gray");
items.add("immersiveengineering:slab_sheetmetal_colored_gray");
items.add("immersiveengineering:sheetmetal_colored_light_gray");
items.add("immersiveengineering:slab_sheetmetal_colored_light_gray");
items.add("immersiveengineering:sheetmetal_colored_cyan");
items.add("immersiveengineering:slab_sheetmetal_colored_cyan");
items.add("immersiveengineering:sheetmetal_colored_purple");
items.add("immersiveengineering:slab_sheetmetal_colored_purple");
items.add("immersiveengineering:sheetmetal_colored_blue");
items.add("immersiveengineering:slab_sheetmetal_colored_blue");
items.add("immersiveengineering:sheetmetal_colored_brown");
items.add("immersiveengineering:slab_sheetmetal_colored_brown");
items.add("immersiveengineering:sheetmetal_colored_green");
items.add("immersiveengineering:slab_sheetmetal_colored_green");
items.add("immersiveengineering:sheetmetal_colored_red");
items.add("immersiveengineering:slab_sheetmetal_colored_red");
items.add("immersiveengineering:sheetmetal_colored_black");
items.add("immersiveengineering:slab_sheetmetal_colored_black");
items.add("immersiveengineering:metal_ladder_none");
items.add("immersiveengineering:metal_ladder_alu");
items.add("immersiveengineering:metal_ladder_steel");
items.add("immersiveengineering:steel_scaffolding_standard");
items.add("immersiveengineering:slab_steel_scaffolding_standard");
items.add("immersiveengineering:stairs_steel_scaffolding_standard");
items.add("immersiveengineering:steel_scaffolding_grate_top");
items.add("immersiveengineering:slab_steel_scaffolding_grate_top");
items.add("immersiveengineering:stairs_steel_scaffolding_grate_top");
items.add("immersiveengineering:steel_scaffolding_wooden_top");
items.add("immersiveengineering:slab_steel_scaffolding_wooden_top");
items.add("immersiveengineering:stairs_steel_scaffolding_wooden_top");
items.add("immersiveengineering:chute_iron");
items.add("immersiveengineering:chute_steel");
items.add("immersiveengineering:chute_aluminum");
items.add("immersiveengineering:chute_copper");
items.add("immersiveengineering:connector_lv");
items.add("immersiveengineering:connector_lv_relay");
items.add("immersiveengineering:connector_mv");
items.add("immersiveengineering:connector_mv_relay");
items.add("immersiveengineering:connector_hv");
items.add("immersiveengineering:connector_hv_relay");
items.add("immersiveengineering:slab_cokebrick");
items.add("immersiveengineering:slab_blastbrick");
items.add("immersiveengineering:slab_blastbrick_reinforced");
items.add("immersiveengineering:slab_coke");
items.add("immersiveengineering:slab_hempcrete");
items.add("immersiveengineering:slab_concrete");
items.add("immersiveengineering:slab_concrete_tile");
items.add("immersiveengineering:slab_concrete_leaded");
items.add("immersiveengineering:slab_insulating_glass");
items.add("immersiveengineering:slab_alloybrick");
items.add("immersiveengineering:stairs_hempcrete");
items.add("immersiveengineering:stairs_concrete");
items.add("immersiveengineering:stairs_concrete_tile");
items.add("immersiveengineering:stairs_concrete_leaded");
items.add("immersiveengineering:mold_plate");
items.add("immersiveengineering:mold_gear");
items.add("immersiveengineering:mold_rod");
items.add("immersiveengineering:mold_bullet_casing");
items.add("immersiveengineering:mold_wire");
items.add("immersiveengineering:mold_packing_4");
items.add("immersiveengineering:mold_packing_9");
items.add("immersiveengineering:mold_unpacking");
items.add("immersiveengineering:stick_treated");
items.add("immersiveengineering:stick_steel");
items.add("immersiveengineering:hemp_fiber");
items.add("immersiveengineering:hemp_fabric");
items.add("immersiveengineering:coal_coke");
items.add("immersiveengineering:slag");
items.add("immersiveengineering:component_iron");
items.add("immersiveengineering:component_steel");
items.add("immersiveengineering:component_electronic");
items.add("immersiveengineering:component_electronic_adv");
items.add("immersiveengineering:waterwheel_segment");
items.add("immersiveengineering:windmill_blade");
items.add("immersiveengineering:windmill_sail");
items.add("immersiveengineering:wooden_grip");
items.add("immersiveengineering:gunpart_barrel");
items.add("immersiveengineering:gunpart_drum");
items.add("immersiveengineering:gunpart_hammer");
items.add("immersiveengineering:dust_coke");
items.add("immersiveengineering:dust_hop_graphite");
items.add("immersiveengineering:ingot_hop_graphite");
items.add("immersiveengineering:wire_copper");
items.add("immersiveengineering:wire_electrum");
items.add("immersiveengineering:wire_aluminum");
items.add("immersiveengineering:wire_steel");
items.add("immersiveengineering:wire_lead");
items.add("immersiveengineering:dust_saltpeter");
items.add("immersiveengineering:dust_sulfur");
items.add("immersiveengineering:dust_wood");
items.add("immersiveengineering:light_bulb");
items.add("immersiveengineering:electron_tube");
items.add("immersiveengineering:circuit_board");
items.add("immersiveengineering:plate_duroplast");
items.add("immersiveengineering:empty_casing");
items.add("immersiveengineering:empty_shell");
items.add("immersiveengineering:nugget_copper");
items.add("immersiveengineering:plate_copper");
items.add("immersiveengineering:dust_copper");
items.add("immersiveengineering:nugget_aluminum");
items.add("immersiveengineering:plate_aluminum");
items.add("immersiveengineering:dust_aluminum");
items.add("immersiveengineering:ingot_lead");
items.add("immersiveengineering:nugget_lead");
items.add("immersiveengineering:raw_lead");
items.add("immersiveengineering:plate_lead");
items.add("immersiveengineering:dust_lead");
items.add("immersiveengineering:ingot_silver");
items.add("immersiveengineering:nugget_silver");
items.add("immersiveengineering:raw_silver");
items.add("immersiveengineering:plate_silver");
items.add("immersiveengineering:dust_silver");
items.add("immersiveengineering:ingot_nickel");
items.add("immersiveengineering:nugget_nickel");
items.add("immersiveengineering:raw_nickel");
items.add("immersiveengineering:plate_nickel");
items.add("immersiveengineering:dust_nickel");
items.add("immersiveengineering:ingot_uranium");
items.add("immersiveengineering:nugget_uranium");
items.add("immersiveengineering:raw_uranium");
items.add("immersiveengineering:plate_uranium");
items.add("immersiveengineering:dust_uranium");
items.add("immersiveengineering:ingot_constantan");
items.add("immersiveengineering:nugget_constantan");
items.add("immersiveengineering:plate_constantan");
items.add("immersiveengineering:dust_constantan");
items.add("immersiveengineering:ingot_electrum");
items.add("immersiveengineering:nugget_electrum");
items.add("immersiveengineering:plate_electrum");
items.add("immersiveengineering:dust_electrum");
items.add("immersiveengineering:ingot_steel");
items.add("immersiveengineering:nugget_steel");
items.add("immersiveengineering:plate_steel");
items.add("immersiveengineering:dust_steel");
items.add("immersiveengineering:plate_iron");
items.add("immersiveengineering:dust_iron");
items.add("immersiveengineering:plate_gold");
items.add("immersiveengineering:dust_gold");
items.add("immersiveengineering:wirecutter");
items.add("immersiveengineering:screwdriver");
items.add("immersiveengineering:manual");
items.add("immersiveengineering:voltmeter");
items.add("immersiveengineering:pickaxe_steel");
items.add("immersiveengineering:shovel_steel");
items.add("immersiveengineering:axe_steel");
items.add("immersiveengineering:hoe_steel");
items.add("immersiveengineering:sword_steel");
items.add("immersiveengineering:toolbox");
items.add("immersiveengineering:drill");
items.add("immersiveengineering:drillhead_steel");
items.add("immersiveengineering:drillhead_iron");
items.add("immersiveengineering:buzzsaw");
items.add("immersiveengineering:sawblade");
items.add("immersiveengineering:rockcutter");
items.add("immersiveengineering:grindingdisk");
items.add("immersiveengineering:survey_tools");
items.add("immersiveengineering:glider");
items.add("immersiveengineering:armor_steel_feet");
items.add("immersiveengineering:armor_steel_legs");
items.add("immersiveengineering:armor_steel_chest");
items.add("immersiveengineering:armor_steel_head");
items.add("immersiveengineering:revolver");
items.add("immersiveengineering:speedloader");
items.add("immersiveengineering:chemthrower");
items.add("immersiveengineering:railgun");
items.add("immersiveengineering:casull");
items.add("immersiveengineering:armor_piercing");
items.add("immersiveengineering:buckshot");
items.add("immersiveengineering:he");
items.add("immersiveengineering:silver");
items.add("immersiveengineering:dragons_breath");
items.add("immersiveengineering:potion");
items.add("immersiveengineering:flare");
items.add("immersiveengineering:firework");
items.add("immersiveengineering:homing");
items.add("immersiveengineering:wolfpack");
items.add("immersiveengineering:bannerpattern_hammer");
items.add("immersiveengineering:bannerpattern_bevels");
items.add("immersiveengineering:bannerpattern_ornate");
items.add("immersiveengineering:bannerpattern_treated_wood");
items.add("immersiveengineering:bannerpattern_windmill");
items.add("immersiveengineering:bannerpattern_wolf_r");
items.add("immersiveengineering:bannerpattern_wolf_l");
items.add("immersiveengineering:bannerpattern_wolf");
items.add("immersiveengineering:minecart_woodencrate");
items.add("immersiveengineering:minecart_reinforcedcrate");
items.add("immersiveengineering:minecart_woodenbarrel");
items.add("immersiveengineering:minecart_metalbarrel");
items.add("immersiveengineering:seed");
items.add("immersiveengineering:jerrycan");
items.add("immersiveengineering:blueprint");
items.add("immersiveengineering:skyhook");
items.add("immersiveengineering:shader");
items.add("immersiveengineering:earmuffs");
items.add("immersiveengineering:coresample");
items.add("immersiveengineering:graphite_electrode");
items.add("immersiveengineering:fluorescent_tube");
items.add("immersiveengineering:powerpack");
items.add("immersiveengineering:shield");
items.add("immersiveengineering:maintenance_kit");
items.add("immersiveengineering:logic_circuit");
items.add("immersiveengineering:fertilizer");
items.add("immersiveengineering:fake_icon_birthday");
items.add("immersiveengineering:fake_icon_lucky");
items.add("immersiveengineering:fake_icon_drillbreak");
items.add("immersiveengineering:fake_icon_ravenholm");
items.add("immersiveengineering:fake_icon_fried");
items.add("immersiveengineering:potion_bucket");
items.add("immersiveengineering:wirecoil_copper");
items.add("immersiveengineering:wirecoil_electrum");
items.add("immersiveengineering:wirecoil_steel");
items.add("immersiveengineering:wirecoil_structure_rope");
items.add("immersiveengineering:wirecoil_structure_steel");
items.add("immersiveengineering:wirecoil_redstone");
items.add("immersiveengineering:wirecoil_copper_ins");
items.add("immersiveengineering:wirecoil_electrum_ins");
items.add("immersiveengineering:toolupgrade_drill_waterproof");
items.add("immersiveengineering:toolupgrade_drill_lube");
items.add("immersiveengineering:toolupgrade_drill_damage");
items.add("immersiveengineering:toolupgrade_drill_capacity");
items.add("immersiveengineering:toolupgrade_revolver_bayonet");
items.add("immersiveengineering:toolupgrade_revolver_magazine");
items.add("immersiveengineering:toolupgrade_revolver_electro");
items.add("immersiveengineering:toolupgrade_chemthrower_focus");
items.add("immersiveengineering:toolupgrade_railgun_scope");
items.add("immersiveengineering:toolupgrade_railgun_capacitors");
items.add("immersiveengineering:toolupgrade_shield_flash");
items.add("immersiveengineering:toolupgrade_shield_shock");
items.add("immersiveengineering:toolupgrade_shield_magnet");
items.add("immersiveengineering:toolupgrade_chemthrower_multitank");
items.add("immersiveengineering:toolupgrade_buzzsaw_spareblades");
items.add("immersiveengineering:armor_faraday_feet");
items.add("immersiveengineering:armor_faraday_legs");
items.add("immersiveengineering:armor_faraday_chest");
items.add("immersiveengineering:armor_faraday_head");
items.add("immersiveengineering:conveyor_basic");
items.add("immersiveengineering:conveyor_redstone");
items.add("immersiveengineering:conveyor_dropper");
items.add("immersiveengineering:conveyor_vertical");
items.add("immersiveengineering:conveyor_splitter");
items.add("immersiveengineering:conveyor_extract");
items.add("immersiveengineering:shader_bag_uncommon");
items.add("immersiveengineering:shader_bag_rare");
items.add("immersiveengineering:shader_bag_ie_masterwork");
items.add("immersiveengineering:shader_bag_epic");
items.add("immersiveengineering:shader_bag_common");

for item in game.items {
    if(item.registryName.namespace == "mtmechs") {
        items.add(item.registryName.toString());
    }
}

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