import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listItem as IItemStack [] = [
    <item:minecraft:flowering_azalea_leaves>,
    <item:minecraft:azalea>,
    <item:minecraft:flowering_azalea>,
    <item:cfm:oak_hedge>,
    <item:cfm:spruce_hedge>,
    <item:cfm:birch_hedge>,
    <item:cfm:jungle_hedge>,
    <item:cfm:acacia_hedge>,
    <item:cfm:dark_oak_hedge>,
    <item:myrtrees:rubberwood_sapling>,
    <item:myrtrees:rubberwood_leaves>,
    <item:minecraft:twisting_vines>,
    <item:silentgear:saw_blueprint>,
    <item:silentgear:saw_template>,
    <item:silentgear:saw>,
    <item:projectbrazier:hollow_birch_log>,
    <item:projectbrazier:hollow_oak_log>,
    <item:projectbrazier:hollow_acacia_log>,
    <item:projectbrazier:hollow_jungle_log>,
    <item:projectbrazier:hollow_dark_oak_log>,
    <item:projectbrazier:hollow_spruce_log>,
    <item:projectbrazier:stripped_hollow_birch_log>,
    <item:projectbrazier:stripped_hollow_oak_log>,
    <item:projectbrazier:stripped_hollow_acacia_log>,
    <item:projectbrazier:stripped_hollow_jungle_log>,
    <item:projectbrazier:stripped_hollow_dark_oak_log>,
    <item:projectbrazier:stripped_hollow_spruce_log>
    
];

for item in listItem {
    setStagedItem("logging", item);
}