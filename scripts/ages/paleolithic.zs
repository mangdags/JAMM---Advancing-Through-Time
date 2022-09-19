import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:wooden_sword>,
    <item:minecraft:wooden_shovel>,
    <item:minecraft:wooden_pickaxe>,
    <item:minecraft:wooden_axe>,
    <item:minecraft:wooden_hoe>,
    <item:minecraft:fishing_rod>,
    <item:minecraft:string>,
    <item:minecraft:campfire>,
    <item:minecraft:chest>,
    <item:minecraft:ladder>,
    <item:minecraft:armor_stand>,
    <item:minecraft:loom>,
    <item:minecraft:composter>,
    <item:minecraft:barrel>,
    <item:minecraft:fletching_table>,
    <item:minecraft:bone_block>,
    <item:minecraft:bone_meal>,
    <item:minecraft:bone>,
    <item:parrying:wooden_mace>,
    <item:parrying:wooden_hammer>,
    <item:parrying:wooden_dagger>,
    <item:parrying:wood_flail>,
    <item:parrying:wood_spear>,
    <item:jousting:lance_wood>,
    <item:valhelsia_structures:bone_pile>,
    <item:valhelsia_structures:bone_pile_block>,
    <item:natprog:bone_pickaxe>,
    <item:natprog:bone_knife>,
    <item:natprog:bone_shard>,
    <item:alexsmobs:bone_serpent_tooth>,
    <item:alexsmobs:fish_bones>,
    <item:projectbrazier:bone_war_horn>,
    <item:minecraft:coal>,
    <item:minecraft:coal_ore>,
    <item:minecraft:deepslate_coal_ore>,
    <item:minecraft:coal_block>,
    <item:minecraft:coal>,
    <item:minecraft:scute>,
    <item:minecraft:turtle_helmet>,
    <item:minecraft:charcoal>,
    <item:projectbrazier:traces_of_coal_ore>,
    <item:projectbrazier:poor_coal_ore>,
    <item:projectbrazier:rich_coal_ore>,
    <item:projectbrazier:traces_of_deepslate_coal_ore>,
    <item:projectbrazier:poor_deepslate_coal_ore>,
    <item:projectbrazier:rich_deepslate_coal_ore>,
    <item:supplementaries:flax>,
    <item:supplementaries:flax_block>,
    <item:supplementaries:rope>,
    <item:supplementaries:sack>,
    <item:supplementaries:doormat>,
    <item:minecraft:farmland>,
    <item:minecraft:carrot_on_a_stick>,
    <item:minecraft:torch>,
    <item:supplementaries:feather_block>,
    <item:minecraft:rabbit_hide>,
    <item:minecraft:rabbit_foot>,
    <item:mcwwindows:oak_log_parapet>,
    <item:mcwwindows:spruce_log_parapet>,
    <item:mcwwindows:birch_log_parapet>,
    <item:mcwwindows:jungle_log_parapet>,
    <item:mcwwindows:acacia_log_parapet>,
    <item:mcwwindows:dark_oak_log_parapet>,
    <item:mcwwindows:oak_plank_parapet>,
    <item:mcwwindows:spruce_plank_parapet>,
    <item:mcwwindows:birch_plank_parapet>,
    <item:mcwwindows:jungle_plank_parapet>,
    <item:mcwwindows:acacia_plank_parapet>,
    <item:mcwwindows:dark_oak_plank_parapet>
];

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
    <tag:items:sophisticatedstorage:base_tier_wooden_storage>,
    <tag:items:supplementaries:hanging_signs>,
    <tag:items:supplementaries:sign_posts>,
    <tag:items:valhelsia_structures:posts>,
    <tag:items:valhelsia_structures:cut_posts>,
    <tag:items:supplementaries:flags>
];

var exceptItem as IItemStack [] = [
    <item:minecraft:crimson_sign>,
    <item:minecraft:warped_sign>,
    <item:minecraft:crimson_door>,
    <item:minecraft:warped_door>,
    <item:minecraft:crimson_trapdoor>,
    <item:minecraft:warped_trapdoor>,
    <item:minecraft:crimson_fence_gate>,
    <item:minecraft:warped_fence_gate>,
    <item:minecraft:crimson_planks>,
    <item:minecraft:warped_planks>,
    <item:minecraft:crimson_slab>,
    <item:minecraft:warped_slab>,
    <item:minecraft:crimson_stem>,
    <item:minecraft:warped_stem>,
    <item:fusion:bronze_door>,
    <item:fusion:steel_door>,
    <item:fusion:thyrium_door>,
    <item:fusion:sinisite_door>,
    <item:silentgear:netherwood_slab>
];

var exceptTag as MCTag  [] = [
    <tag:items:minecraft:stairs>
];

for item in listItem {
    setStagedItem("paleolithic_age", item);
}

for tag in listTag {
    setStagedTag("paleolithic_age", tag);
}

for item in exceptItem {
    removeStagedItem(item);
}

for tag in exceptTag {
    removeStagedTag(tag);
}