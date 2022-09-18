import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:paper>,
    <item:minecraft:copper_ingot>,
    <item:minecraft:copper_ore>,
    <item:minecraft:deepslate_copper_ore>,
    <item:minecraft:raw_copper_block>,
    <item:minecraft:copper_block>,
    <item:minecraft:exposed_copper>,
    <item:minecraft:weathered_copper>,
    <item:minecraft:oxidized_copper>,
    <item:minecraft:cut_copper>,
    <item:minecraft:exposed_cut_copper>,
    <item:minecraft:weathered_cut_copper>,
    <item:minecraft:oxidized_cut_copper>,
    <item:minecraft:cut_copper_stairs>,
    <item:minecraft:exposed_cut_copper_stairs>,
    <item:minecraft:weathered_cut_copper_stairs>,
    <item:minecraft:oxidized_cut_copper_stairs>,
    <item:minecraft:waxed_copper_block>,
    <item:minecraft:waxed_exposed_copper>,
    <item:minecraft:waxed_weathered_copper>,
    <item:minecraft:waxed_oxidized_copper>,
    <item:minecraft:waxed_cut_copper>,
    <item:minecraft:waxed_exposed_cut_copper>,
    <item:minecraft:waxed_weathered_cut_copper>,
    <item:minecraft:waxed_oxidized_cut_copper>,
    <item:minecraft:waxed_cut_copper_stairs>,
    <item:minecraft:waxed_exposed_cut_copper_stairs>,
    <item:minecraft:waxed_weathered_cut_copper_stairs>,
    <item:minecraft:waxed_oxidized_cut_copper_stairs>,
    <item:minecraft:raw_copper>,
    <item:natprog:copper_saw>,
    <item:create:copper_nugget>,
    <item:silentgear:blueprint_paper>,
    <item:silentgear:rod_blueprint>,
    <item:silentgear:tip_blueprint>,
    <item:silentgear:coating_blueprint>,
    <item:silentgear:grip_blueprint>,
    <item:silentgear:binding_blueprint>,
    <item:silentgear:lining_blueprint>,
    <item:silentgear:cord_blueprint>,
    <item:silentgear:fletching_blueprint>,
    <item:silentgear:sword_blueprint>,
    <item:silentgear:katana_blueprint>,
    <item:silentgear:machete_blueprint>,
    <item:silentgear:spear_blueprint>,
    <item:silentgear:knife_blueprint>,
    <item:silentgear:dagger_blueprint>,
    <item:silentgear:pickaxe_blueprint>,
    <item:silentgear:shovel_blueprint>,
    <item:silentgear:axe_blueprint>,
    <item:silentgear:fishing_rod_blueprint>,
    <item:silentgear:bow_blueprint>,
    <item:silentgear:crossbow_blueprint>,
    <item:silentgear:slingshot_blueprint>,
    <item:silentgear:shield_blueprint>,
    <item:silentgear:helmet_blueprint>,
    <item:silentgear:chestplate_blueprint>,
    <item:silentgear:leggings_blueprint>,
    <item:silentgear:boots_blueprint>,
    <item:silentgear:arrow_blueprint>,
    <item:silentgear:ring_blueprint>,
    <item:silentgear:bracelet_blueprint>,
    <item:minecraft:spyglass>,
    <item:valhelsia_structures:paper_wall>,
    <item:supplementaries:wrench>,
    <item:supplementaries:rope_arrow>,
    <item:supplementaries:copper_lantern>,
    <item:minecraft:lightning_rod>,
    <item:supplementaries:notice_board>,
    <item:supplementaries:cog_block>,
    <item:minecraft:flower_banner_pattern>,
    <item:minecraft:creeper_banner_pattern>,
    <item:minecraft:skull_banner_pattern>,
    <item:minecraft:mojang_banner_pattern>,
    <item:minecraft:globe_banner_pattern>,
    <item:minecraft:piglin_banner_pattern>
];

var itemTag as MCTag [] = [
    <tag:items:supplementaries:presents>
];

for item in listItem {
    setStagedItem("calcolithic_age", item);
}

for tag in itemTag {
    setStagedTag("calcolithic_age", tag);
}