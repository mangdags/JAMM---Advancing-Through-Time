import mods.jei.JEI;
import mods.create.MechanicalCrafterManager;
import mods.create.MixingManager;

<recipetype:create:mechanical_crafting>.removeAll();
<recipetype:create:mixing>.removeAll();

JEI.hideCategory("create:mixing");
JEI.hideCategory("create:mechanical_crafting");
JEI.hideCategory("minecraft:stonecutting");

JEI.hideRegex(".*spawn_egg.*");
JEI.hideRegex(".*pebble.*");
JEI.hideRegex(".*music_disc.*");

JEI.hideMod("itemfilters");

JEI.hideMod("ftbquests", (name as string) => {
    return name == "ftbquests:book";
});

JEI.hideIngredient(<item:simplecorelib:test_furnace>);
JEI.hideIngredient(<item:simplecorelib:original_copper_ore>);
JEI.hideIngredient(<item:immersiveengineering:stick_iron>);
JEI.hideIngredient(<item:silentgear:iron_rod>);
JEI.hideIngredient(<item:ftbic:iron_rod>);
JEI.hideIngredient(<item:ftbic:aluminum_ingot>);
JEI.hideIngredient(<item:ftbic:aluminum_ore>);
JEI.hideIngredient(<item:ftbic:deepslate_aluminum_ore>);
JEI.hideIngredient(<item:ftbic:aluminum_chunk>);
JEI.hideIngredient(<item:ftbic:aluminum_rod>);
JEI.hideIngredient(<item:ftbic:aluminum_block>);
JEI.hideIngredient(<item:ftbic:aluminum_nugget>);
JEI.hideIngredient(<item:silentgear:paxel_template>);
JEI.hideIngredient(<item:silentgear:saw_template>);
JEI.hideIngredient(<item:silentgear:mattock_template>);
JEI.hideIngredient(<item:silentgear:prospector_hammer_template>);
JEI.hideIngredient(<item:silentgear:sickle_template>);
JEI.hideIngredient(<item:silentgear:shears_template>);
JEI.hideIngredient(<item:silentgear:sword_blade>);
JEI.hideIngredient(<item:silentgear:katana_blade>);
JEI.hideIngredient(<item:silentgear:machete_blade>);
JEI.hideIngredient(<item:silentgear:spear_tip>);
JEI.hideIngredient(<item:silentgear:trident_prongs>);
JEI.hideIngredient(<item:silentgear:knife_blade>);
JEI.hideIngredient(<item:silentgear:dagger_blade>);
JEI.hideIngredient(<item:silentgear:pickaxe_head>);
JEI.hideIngredient(<item:silentgear:shovel_head>);
JEI.hideIngredient(<item:silentgear:axe_head>);
JEI.hideIngredient(<item:silentgear:paxel_head>);
JEI.hideIngredient(<item:silentgear:saw_blade>);
JEI.hideIngredient(<item:silentgear:mattock_head>);
JEI.hideIngredient(<item:silentgear:prospector_hammer_head>);
JEI.hideIngredient(<item:silentgear:sickle_blade>);
JEI.hideIngredient(<item:silentgear:shears_blades>);
JEI.hideIngredient(<item:silentgear:fishing_reel_and_hook>);
JEI.hideIngredient(<item:silentgear:bow_limbs>);
JEI.hideIngredient(<item:silentgear:crossbow_limbs>);
JEI.hideIngredient(<item:silentgear:slingshot_limbs>);
JEI.hideIngredient(<item:silentgear:helmet_plates>);
JEI.hideIngredient(<item:silentgear:chestplate_plates>);
JEI.hideIngredient(<item:silentgear:legging_plates>);
JEI.hideIngredient(<item:silentgear:boot_plates>);
JEI.hideIngredient(<item:silentgear:elytra_wings>);
JEI.hideIngredient(<item:silentgear:arrow_heads>);
JEI.hideIngredient(<item:silentgear:ring_shank>);
JEI.hideIngredient(<item:silentgear:bracelet_band>);
JEI.hideIngredient(<item:silentgear:rod>);
JEI.hideIngredient(<item:silentgear:long_rod>);
JEI.hideIngredient(<item:silentgear:tip>);
JEI.hideIngredient(<item:silentgear:coating>);
JEI.hideIngredient(<item:silentgear:grip>);
JEI.hideIngredient(<item:silentgear:binding>);
JEI.hideIngredient(<item:silentgear:lining>);
JEI.hideIngredient(<item:silentgear:cord>);
JEI.hideIngredient(<item:silentgear:fletching>);
JEI.hideIngredient(<item:silentgear:adornment>);
JEI.hideIngredient(<item:silentgear:alloy_ingot>);
JEI.hideIngredient(<item:silentgear:hybrid_gem>);
JEI.hideIngredient(<item:silentgear:mixed_fabric>);
JEI.hideIngredient(<item:silentgear:custom_ingot>);
JEI.hideIngredient(<item:silentgear:custom_gem>);
JEI.hideIngredient(<item:silentgear:sheet_metal>);
JEI.hideIngredient(<item:silentgear:katana>);
JEI.hideIngredient(<item:silentgear:machete>);
JEI.hideIngredient(<item:silentgear:spear>);
JEI.hideIngredient(<item:silentgear:trident>);
JEI.hideIngredient(<item:silentgear:knife>);
JEI.hideIngredient(<item:silentgear:dagger>);
JEI.hideIngredient(<item:silentgear:pickaxe>);
JEI.hideIngredient(<item:silentgear:shovel>);
JEI.hideIngredient(<item:silentgear:axe>);
JEI.hideIngredient(<item:silentgear:paxel>);
JEI.hideIngredient(<item:silentgear:saw>);
JEI.hideIngredient(<item:silentgear:prospector_hammer>);
JEI.hideIngredient(<item:silentgear:mattock>);
JEI.hideIngredient(<item:silentgear:sickle>);
JEI.hideIngredient(<item:silentgear:shears>);
JEI.hideIngredient(<item:silentgear:fishing_rod>);
JEI.hideIngredient(<item:silentgear:bow>);
JEI.hideIngredient(<item:silentgear:crossbow>);
JEI.hideIngredient(<item:silentgear:slingshot>);
JEI.hideIngredient(<item:silentgear:shield>);
JEI.hideIngredient(<item:silentgear:arrow>);
JEI.hideIngredient(<item:silentgear:helmet>);
JEI.hideIngredient(<item:silentgear:chestplate>);
JEI.hideIngredient(<item:silentgear:leggings>);
JEI.hideIngredient(<item:silentgear:boots>);
JEI.hideIngredient(<item:silentgear:elytra>);
JEI.hideIngredient(<item:silentgear:ring>);
JEI.hideIngredient(<item:silentgear:bracelet>);
JEI.hideIngredient(<item:projectbrazier:silver_spyglass>);
JEI.hideIngredient(<item:fusion:bronze_dust>);
JEI.hideIngredient(<item:fusion:steel_dust>);
JEI.hideIngredient(<item:fusion:sinisite_dust>);
JEI.hideIngredient(<item:fusion:thyrium_dust>);
JEI.hideIngredient(<item:sophisticatedstorage:debug_tool>);
JEI.hideIngredient(<item:silentgear:sword>);
JEI.hideIngredient(<item:minecraft:creeper_head>);
JEI.hideIngredient(<item:minecraft:zombie_head>);
JEI.hideIngredient(<item:minecraft:skeleton_skull>);
JEI.hideIngredient(<item:minecraft:tall_grass>);
JEI.hideIngredient(<item:minecraft:large_fern>);
JEI.hideIngredient(<item:minecraft:lily_pad>);
JEI.hideIngredient(<item:minecraft:bedrock>);
JEI.hideIngredient(<item:minecraft:spore_blossom>);
JEI.hideIngredient(<item:minecraft:weeping_vines>);
JEI.hideIngredient(<item:minecraft:red_mushroom_block>);
JEI.hideIngredient(<item:minecraft:mushroom_stem>);
JEI.hideIngredient(<item:minecraft:small_amethyst_bud>);
JEI.hideIngredient(<item:minecraft:medium_amethyst_bud>);
JEI.hideIngredient(<item:minecraft:large_amethyst_bud>);
JEI.hideIngredient(<item:minecraft:amethyst_cluster>);
JEI.hideIngredient(<item:minecraft:big_dripleaf>);
JEI.hideIngredient(<item:minecraft:small_dripleaf>);
JEI.hideIngredient(<item:minecraft:grass>);
JEI.hideIngredient(<item:minecraft:cobweb>);
JEI.hideIngredient(<item:minecraft:firework_star>);
JEI.hideIngredient(<item:simplecorelib:test_shears>);
JEI.hideIngredient(<item:valhelsia_structures:doused_torch>);
JEI.hideIngredient(<item:valhelsia_structures:doused_soul_torch>);
JEI.hideIngredient(<item:valhelsia_tweaks:birthday_cake>);
JEI.hideIngredient(<item:silentgear:blueprint_package>);
JEI.hideIngredient(<item:valhelsia_tweaks:spicy_mango_lollipop>);
JEI.hideIngredient(<item:valhelsia_tweaks:cherry_lollipop>);
JEI.hideIngredient(<item:valhelsia_tweaks:lemon_candy>);
JEI.hideIngredient(<item:valhelsia_tweaks:candy_corn>);
JEI.hideIngredient(<item:valhelsia_tweaks:valhelsia_firework_rocket>);
JEI.hideIngredient(<item:silentgear:fragment>);
JEI.hideIngredient(<item:fusion:thyrium_shears>);
JEI.hideIngredient(<item:fusion:sinisite_shears>);
JEI.hideIngredient(<item:silentgear:prospector_hammer_blueprint>);
JEI.hideIngredient(<item:silentgear:mattock_blueprint>);
JEI.hideIngredient(<item:silentgear:paxel_blueprint>);
JEI.hideIngredient(<item:silentgear:phantom_light>);
JEI.hideIngredient(<item:silentgear:stone_torch>);
JEI.hideIngredient(<item:theoneprobe:probe>);
JEI.hideIngredient(<item:theoneprobe:diamond_helmet_probe>);
JEI.hideIngredient(<item:theoneprobe:gold_helmet_probe>);
JEI.hideIngredient(<item:simplecorelib:test_plate>);
JEI.hideIngredient(<item:minecraft:snow>);
JEI.hideIngredient(<item:minecraft:snow_block>);
JEI.hideIngredient(<item:minecraft:enchanted_golden_apple>);
JEI.hideIngredient(<item:valhelsia_structures:dungeon_door>);
JEI.hideIngredient(<item:minecraft:feather>);
JEI.hideIngredient(<item:supplementaries:bomb_blue>);
JEI.hideIngredient(<item:supplementaries:antique_ink>);
JEI.hideIngredient(<item:supplementaries:globe>);
JEI.hideIngredient(<item:supplementaries:raked_gravel>);
JEI.hideIngredient(<item:supplementaries:ash_brick>);
JEI.hideIngredient(<item:supplementaries:urn>);
JEI.hideIngredient(<item:minecraft:oak_sapling>);
JEI.hideIngredient(<item:minecraft:spruce_sapling>);
JEI.hideIngredient(<item:minecraft:birch_sapling>);
JEI.hideIngredient(<item:minecraft:jungle_sapling>);
JEI.hideIngredient(<item:minecraft:acacia_sapling>);
JEI.hideIngredient(<item:minecraft:dark_oak_sapling>);
JEI.hideIngredient(<item:minecraft:oak_leaves>);
JEI.hideIngredient(<item:minecraft:spruce_leaves>);
JEI.hideIngredient(<item:minecraft:birch_leaves>);
JEI.hideIngredient(<item:minecraft:jungle_leaves>);
JEI.hideIngredient(<item:minecraft:acacia_leaves>);
JEI.hideIngredient(<item:minecraft:dark_oak_leaves>);
JEI.hideIngredient(<item:minecraft:azalea_leaves>);
JEI.hideIngredient(<item:minecraft:hanging_roots>);
JEI.hideIngredient(<item:minecraft:brown_mushroom_block>);
JEI.hideIngredient(<item:minecraft:infested_chiseled_stone_bricks>);
JEI.hideIngredient(<item:minecraft:snowball>);
JEI.hideIngredient(<item:minecraft:blue_ice>);
JEI.hideIngredient(<item:minecraft:ice>);
JEI.hideIngredient(<item:minecraft:grass_block>);
JEI.hideIngredient(<item:minecraft:dirt>);
JEI.hideIngredient(<item:minecraft:coarse_dirt>);
JEI.hideIngredient(<item:minecraft:podzol>);
JEI.hideIngredient(<item:minecraft:rooted_dirt>);
JEI.hideIngredient(<item:minecraft:red_sand>);
JEI.hideIngredient(<item:minecraft:mycelium>);
JEI.hideIngredient(<item:minecraft:vine>);
JEI.hideIngredient(<item:minecraft:rotten_flesh>);
JEI.hideIngredient(<item:minecraft:egg>);
JEI.hideIngredient(<item:minecraft:turtle_egg>);
JEI.hideIngredient(<item:minecraft:experience_bottle>);
JEI.hideIngredient(<item:minecraft:spider_eye>);
JEI.hideIngredient(<item:minecraft:glow_lichen>);
JEI.hideIngredient(<item:minecraft:fire_charge>);
JEI.hideIngredient(<item:minecraft:poisonous_potato>);

//Creative Items
JEI.hideIngredient(<item:refinedstorageaddons:creative_wireless_crafting_grid>);
JEI.hideIngredient(<item:theoneprobe:creativeprobe>);
JEI.hideIngredient(<item:simpleshops:creative_simple_shop>);