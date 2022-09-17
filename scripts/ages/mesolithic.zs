import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:stone>,
    <item:minecraft:cobblestone>,
    <item:minecraft:leather_helmet>,
    <item:minecraft:leather_chestplate>,
    <item:minecraft:leather_boots>,
    <item:minecraft:leather_leggings>,
    <item:minecraft:leather>,
    <item:minecraft:leather_horse_armor>,
    <item:immersiveengineering:ersatz_leather>,
    <item:silentgear:leather_scrap>,
    <item:minecraft:item_frame>,
    <item:minecraft:stone_sword>,
    <item:minecraft:stone_shovel>,
    <item:minecraft:stone_pickaxe>,
    <item:minecraft:stone_axe>,
    <item:minecraft:stone_hoe>,
    <item:parrying:stone_mace>,
    <item:parrying:stone_hammer>,
    <item:parrying:stone_dagger>,
    <item:parrying:stone_flail>,
    <item:parrying:stone_spear>,
    <item:silentgear:template_board>,
    <item:silentgear:rod_template>,
    <item:silentgear:tip_template>,
    <item:silentgear:coating_template>,
    <item:silentgear:grip_template>,
    <item:silentgear:binding_template>,
    <item:silentgear:lining_template>,
    <item:silentgear:cord_template>,
    <item:silentgear:fletching_template>,
    <item:silentgear:sword_template>,
    <item:silentgear:katana_template>,
    <item:silentgear:machete_template>,
    <item:silentgear:spear_template>,
    <item:silentgear:knife_template>,
    <item:silentgear:dagger_template>,
    <item:silentgear:pickaxe_template>,
    <item:silentgear:shovel_template>,
    <item:silentgear:axe_template>,
    <item:silentgear:fishing_rod_template>,
    <item:silentgear:bow_template>,
    <item:silentgear:crossbow_template>,
    <item:silentgear:slingshot_template>,
    <item:silentgear:shield_template>,
    <item:silentgear:helmet_template>,
    <item:silentgear:chestplate_template>,
    <item:silentgear:leggings_template>,
    <item:silentgear:boots_template>,
    <item:silentgear:arrow_template>,
    <item:silentgear:ring_template>,
    <item:silentgear:bracelet_template>,
    <item:minecraft:lapis_ore>,
    <item:minecraft:deepslate_lapis_ore>,
    <item:minecraft:lapis_block>,
    <item:minecraft:lapis_lazuli>,
    <item:minecraft:bamboo>,
    <item:mcwbridges:bamboo_bridge>,
    <item:mcwbridges:dry_bamboo_bridge>,
    <item:mcwbridges:bamboo_bridge_pier>,
    <item:mcwbridges:dry_bamboo_bridge_pier>,
    <item:mcwbridges:bamboo_bridge_stair>,
    <item:mcwbridges:dry_bamboo_bridge_stair>,
    <item:mcwfences:bamboo_fence>,
    <item:supplementaries:bamboo_spikes>,
    <item:supplementaries:flute>,
    <item:minecraft:scaffolding>,
    <item:minecraft:bow>,
    <item:silentgear:rough_rod>,
    <item:silentgear:fine_silk_cloth>,
    <item:silentgear:fine_silk>,
    <item:silentgear:fluffy_puff>,
    <item:silentgear:fluffy_feather>,
    <item:silentgear:fluffy_string>,
    <item:silentgear:fluffy_fabric>,
    <item:silentgear:stone_rod>,
    <item:minecraft:glow_item_frame>,
    <item:minecraft:arrow>,
    <item:silentgear:flax_string>,
    <item:silentgear:flax_fiber>,
    <item:silentgear:sinew_fiber>,
    <item:silentgear:dried_sinew>,
    <item:silentgear:sinew>,
    <item:supplementaries:bellows>,
    <item:minecraft:packed_ice>,
    <item:minecraft:moss_carpet>,
    <item:minecraft:moss_block>
];

var modList as string [] = [
    "sophisticatedbackpacks"
];

var listTag as MCTag [] = [
    <tag:items:forge:cobblestone>,
    <tag:items:forge:dyes>,
    <tag:items:silentgear:fluffy_blocks>
];

var exceptItem as IItemStack [] = [
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
    <item:sophisticatedbackpacks:netherite_backpack>
];

for item in listItem {
    setStagedItem("mesolithic_age", item);
}

for mod in modList {
    setStagedMod("mesolithic_age", mod);
}

for tag in listTag {
    setStagedTag("mesolithic_age", tag);
}

for item in exceptItem {
    removeStagedItem(item);
}