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
    <item:jousting:lance_netherite>,
    <item:bygonenether:gilded_netherite_helmet>,
    <item:bygonenether:gilded_netherite_chestplate>,
    <item:bygonenether:gilded_netherite_leggings>,
    <item:bygonenether:gilded_netherite_boots>,
    <item:minecraft:lodestone>,
    <item:toms_storage:ts.adv_wireless_terminal>,
    <item:supplementaries:lead_door>,
    <item:supplementaries:silver_door>,
    <item:supplementaries:lead_lantern>,
    <item:supplementaries:bomb_spiky>,
    <item:mekanism:ingot_uranium>,
    <item:mekanism:raw_uranium>,
    <item:mekanism:nugget_uranium>,
    <item:mekanism:block_uranium>,
    <item:mekanism:block_raw_uranium>,
    <item:mekanism:uranium_ore>,
    <item:mekanism:deepslate_uranium_ore>,
    <item:mekanism:dust_tin>,
    <item:mekanism:block_lead>
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