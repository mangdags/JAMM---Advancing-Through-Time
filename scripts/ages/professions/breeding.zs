import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:silentgear:shears_template>,
    <item:silentgear:shears_blueprint>,
    <item:silentgear:shears>,
    <item:alexsmobs:falconry_glove>
];

for item in listItem {
    setStagedItem("breeding", item);
}