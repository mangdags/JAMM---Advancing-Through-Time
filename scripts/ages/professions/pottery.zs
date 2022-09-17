import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

var listTag as MCTag [] = [
    <tag:items:valhelsia_structures:jars>,
    <tag:items:valhelsia_structures:big_jars>,
    <tag:items:ctov:glazed_terracotta>
];

for tag in listTag {
    setStagedTag("pottery", tag);
}