import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:parrying:netherite_mace>,
    <item:parrying:netherite_hammer>,
    <item:parrying:netherite_dagger>,
    <item:parrying:netherite_flail>,
    <item:parrying:netherite_spear>,
    <item:minecraft:netherite_ingot>,
    <item:locksmith:lockpick>,
    <item:jousting:lance_netherite>,
    <item:bygonenether:gilded_netherite_helmet>,
    <item:bygonenether:gilded_netherite_chestplate>,
    <item:bygonenether:gilded_netherite_leggings>,
    <item:bygonenether:gilded_netherite_boots>,
    <item:silentgear:crimson_iron_ore>,
    <item:silentgear:raw_crimson_iron_block>,
    <item:silentgear:crimson_iron_block>,
    <item:silentgear:crimson_steel_block>,
    <item:silentgear:crimson_repair_kit>,
    <item:silentgear:crimson_iron_ingot>,
    <item:silentgear:crimson_steel_ingot>,
    <item:silentgear:crimson_iron_nugget>,
    <item:silentgear:crimson_steel_nugget>,
    <item:silentgear:raw_crimson_iron>,
    <item:silentgear:crimson_iron_dust>,
    <item:silentgear:crimson_steel_dust>,
    <item:silentgear:azure_repair_kit>,
    <item:silentgear:material_grader>,
    <item:silentgear:salvager>,
    <item:silentgear:starlight_charger>,
    <item:silentgear:metal_alloyer>,
    <item:silentgear:recrystallizer>,
    <item:silentgear:refabricator>,
    <item:silentgear:metal_press>,
    <item:minecraft:lodestone>,
    <item:toms_storage:ts.adv_wireless_terminal>,
    <item:supplementaries:lead_door>,
    <item:supplementaries:silver_door>,
    <item:supplementaries:lead_lantern>,
    <item:supplementaries:bomb_spiky>
];

var modList as string [] = [
    "mtmechs",
    "immersiveengineering",
    "immersiveposts"
];

var exceptItem as IItemStack [] = [
    <item:immersiveengineering:hammer>,
    <item:immersiveengineering:alu_post>,
    <item:immersiveengineering:ingot_aluminum>,
    <item:immersiveengineering:raw_aluminum>,
    <item:immersiveengineering:raw_block_aluminum>,
    <item:immersiveengineering:deepslate_ore_aluminum>,
    <item:immersiveengineering:ore_aluminum>,
    <item:immersiveengineering:alu_scaffolding_standard>,
    <item:immersiveengineering:slab_alu_scaffolding_standard>,
    <item:immersiveengineering:stairs_alu_scaffolding_standard>,
    <item:immersiveengineering:alu_scaffolding_grate_top>,
    <item:immersiveengineering:slab_alu_scaffolding_grate_top>,
    <item:immersiveengineering:stairs_alu_scaffolding_grate_top>,
    <item:immersiveengineering:alu_scaffolding_wooden_top>,
    <item:immersiveengineering:slab_alu_scaffolding_wooden_top>,
    <item:immersiveengineering:stairs_alu_scaffolding_wooden_top>,
    <item:immersiveengineering:stick_aluminum>,
    <item:immersiveengineering:stick_iron>,
    <item:immersiveengineering:chute_iron>,
    <item:immersiveengineering:component_iron>,
    <item:immersiveengineering:drillhead_iron>,
    <item:immersiveengineering:dust_iron>,
    <item:immersiveengineering:plate_iron>,
    <item:immersiveposts:fence_iron>,
    <item:immersiveengineering:ersatz_leather>
];

for item in listItem {
    setStagedItem("machine_age", item);
}

for mod in modList {
    setStagedMod("machine_age", mod);
}

for item in exceptItem {
    removeStagedItem(item);
}