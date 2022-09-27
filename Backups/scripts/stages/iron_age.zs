import crafttweaker.api.GenericRecipesManager;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.ingredient.type.IIngredientEmpty;


mods.recipestages.Recipes.addShaped("iron_age", "iron.leggings", <item:minecraft:iron_leggings>,
[[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
[<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_block", <item:minecraft:iron_block>, [
[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>], 
[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>], 
[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_bars", <item:minecraft:iron_bars> * 16, [
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_door", <item:minecraft:iron_door> * 3, [
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_trapdoor", <item:minecraft:iron_trapdoor>, [
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_sword", <item:minecraft:iron_sword>, [
[<tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>], 
[<tag:items:forge:rods/wooden>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_shovel", <item:minecraft:iron_shovel>, [
[<tag:items:forge:ingots/iron>], 
[<tag:items:forge:rods/wooden>], 
[<tag:items:forge:rods/wooden>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_pickaxe", <item:minecraft:iron_pickaxe>, [
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance()], 
[IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance()]
]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_axe", <item:minecraft:iron_axe>, [
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:rods/wooden>], 
[IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>]]);

mods.recipestages.Recipes.addShaped("iron_age","minecraft:iron_hoe", <item:minecraft:iron_hoe>, [
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>], 
[IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_helmet", <item:minecraft:iron_helmet>, [
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/iron>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_chestplate", <item:minecraft:iron_chestplate>, [
[<tag:items:forge:ingots/iron>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

mods.recipestages.Recipes.addShaped("iron_age", "minecraft:iron_boots", <item:minecraft:iron_boots>, [
[<tag:items:forge:ingots/iron>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/iron>], 
[<tag:items:forge:ingots/iron>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/iron>]]);

mods.recipestages.Recipes.addShapeless("iron_age", "minecraft:iron_nugget", <item:minecraft:iron_nugget> * 9, [<item:minecraft:iron_ingot>]);

mods.recipestages.Recipes.addShaped("iron_age", "natprog:crafting/saws/improved_saw", <item:natprog:improved_saw>, [
[<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

mods.recipestages.Recipes.addShaped("iron_age", "adpother:iron_filter_frame", <item:adpother:iron_filter_frame>, [
[<tag:items:forge:ingots/iron>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:glass_panes>, IIngredientEmpty.getInstance(), <tag:items:forge:glass_panes>], 
[<tag:items:forge:ingots/iron>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/iron>]]);

mods.recipestages.Recipes.addShaped("iron_age", "adpother:iron_vacuum_bag", <item:adpother:iron_vacuum_bag>, [
[<tag:items:forge:slimeballs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>], 
[<tag:items:forge:ingots/iron>, <item:minecraft:leather_chestplate>, <tag:items:forge:ingots/iron>], 
[<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

mods.recipestages.Recipes.addShaped("iron_age", "adpother:iron_vacuum_tube", <item:adpother:iron_vacuum_tube>, [
[IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance(), <tag:items:forge:storage_blocks/iron>], 
[<tag:items:minecraft:buttons>, <tag:items:forge:ingots/iron>, IIngredientEmpty.getInstance()], 
[<item:minecraft:repeater>, <item:minecraft:comparator>, IIngredientEmpty.getInstance()]]);

mods.recipestages.Recipes.addShaped("iron_age", "adpother:iron_respirator", <item:adpother:iron_respirator>, [
[<item:minecraft:glass_bottle>, <item:minecraft:leather_helmet>, <item:minecraft:glass_bottle>], 
[<tag:items:forge:leather>, <tag:items:forge:ingots/iron>, <tag:items:forge:leather>], 
[<tag:items:minecraft:wool>, <tag:items:minecraft:leaves>, <tag:items:minecraft:wool>]]);