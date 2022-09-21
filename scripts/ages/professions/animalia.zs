import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:silentgear:shears_template>,
    <item:silentgear:shears_blueprint>,
    <item:silentgear:shears>,
    <item:alexsmobs:falconry_glove>
];

var listMod as string [] = [
    "alexsmobs"
];

var exceptItem as IItemStack [] = [
    <item:alexsmobs:blobfish_bucket>,
    <item:alexsmobs:acacia_blossom>,
    <item:alexsmobs:acacia_blossom>,
    <item:alexsmobs:moose_ribs>,
    <item:alexsmobs:raw_catfish>,
    <item:alexsmobs:kangaroo_burger>,
    <item:alexsmobs:shrimp_fried_rice>,
    <item:alexsmobs:boiled_emu_egg>,
    <item:alexsmobs:sopa_de_macaco>,
    <item:alexsmobs:kangaroo_meat>,
    <item:alexsmobs:gongylidia>,
    <item:alexsmobs:cooked_lobster_tail>,
    <item:alexsmobs:cooked_moose_ribs>,
    <item:alexsmobs:cooked_kangaroo_meat>,
    <item:alexsmobs:cooked_catfish>,
    <item:alexsmobs:void_worm_mandible>,
    <item:alexsmobs:void_worm_eye>,
    <item:alexsmobs:void_worm_beak>,
    <item:alexsmobs:void_worm_effigy>
];

for item in listItem {
    setStagedItem("animalia", item);
}

for mod in listMod {
    setStagedMod("animalia", mod);
}

for item in exceptItem {
    removeStagedItem(item);
}