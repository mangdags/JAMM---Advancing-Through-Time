import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:cake>,
    <item:minecraft:cookie>,
    <item:minecraft:mushroom_stew>,
    <item:minecraft:pumpkin_pie>,
    <item:minecraft:rabbit_stew>,
    <item:minecraft:beetroot_soup>,
    <item:alexsdelight:gongylidia_bruschetta>,
    <item:alexsdelight:maggot_salad>,
    <item:alexsdelight:kangaroo_stew>,
    <item:alexsdelight:acacia_blossom_soup>,
    <item:alexsdelight:lobster_pasta>,
    <item:alexsdelight:bison_burger>,
    <item:alexsdelight:bunfungus_sandwich>,
    <item:alexsdelight:kangaroo_pasta>,
    <item:alexsdelight:cooked_centipede_leg>,
    <item:alexsdelight:cooked_bunfungus>,
    <item:alexsdelight:cooked_bison>,
    <item:alexsdelight:bison_patty>,
    <item:alexsdelight:cooked_catfish_slice>,
    <item:alexsdelight:cooked_bunfungus_drumstick>,
    <item:alexsdelight:cooked_loose_moose_rib>,
    <item:alexsdelight:cooked_kangaroo_shank>,
    <item:minecraft:smoker>,
    <item:minecraft:bowl>,
    <item:supplementaries:pancake>,
    <item:supplementaries:candy>,
    <item:minecraft:baked_potato>,
    <item:minecraft:rabbit>,
    <item:minecraft:cooked_rabbit>,
    <item:minecraft:mutton>,
    <item:minecraft:cooked_mutton>,
    <item:minecraft:cooked_porkchop>,
    <item:minecraft:cooked_cod>,
    <item:minecraft:cooked_salmon>,
    <item:minecraft:cooked_chicken>,
    <item:alexsmobs:cooked_lobster_tail>,
    <item:alexsmobs:cooked_moose_ribs>,
    <item:alexsmobs:cooked_kangaroo_meat>,
    <item:alexsmobs:cooked_catfish>,
    <item:minecraft:porkchop>,
    <item:minecraft:cooked_beef>,
    <item:minecraft:cod>,
    <item:minecraft:salmon>,
    <item:minecraft:tropical_fish>,
    <item:minecraft:beef>,
    <item:minecraft:chicken>,
    <item:alexsdelight:raw_bunfungus_drumstick>,
    <item:alexsdelight:raw_catfish_slice>,
    <item:alexsdelight:raw_bison>,
    <item:alexsdelight:raw_bunfungus>,
    <item:alexsmobs:moose_ribs>,
    <item:alexsmobs:raw_catfish>
];

var modList as string [] = [
    "farmersdelight"
];

var exceptItem as IItemStack [] = [
    <item:farmersdelight:golden_knife>,
    <item:farmersdelight:skillet>,
    <item:farmersdelight:stove>,
    <item:farmersdelight:cooking_pot>  
];

for item in listItem {
    setStagedItem("cookery", item);
}

for mod in modList {
    setStagedMod("cookery", mod);
}

for item in exceptItem {
    removeStagedItem(item);
}