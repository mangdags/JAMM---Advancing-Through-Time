import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:silentgear:hammer_template>,
    <item:silentgear:hammer_blueprint>,
    <item:silentgear:hammer_head>,
    <item:silentgear:hammer>
];

for item in listItem {
    setStagedItem("mining", item);
}