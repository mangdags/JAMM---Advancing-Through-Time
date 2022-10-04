import mods.jei.JEI;
//import mods.initialinventory.InvHandler;

#import 100

mods.recipestages.Recipes.showJEILabel(true);

// InvHandler.addStartingItem(key as string, item as IItemStack, slotIndex as int, onGiven as BiFunction<IItemStack,Player,IItemStack>) as void

/*
InvHandler.addStartingItem("starting_item", <item:minecraft:diamond_sword>, 2, 
    (stack as crafttweaker.api.item.IItemStack, 
        player as crafttweaker.api.entity.type.player.Player) as crafttweaker.api.item.IItemStack => {
      return stack * (player.level.random.nextInt(6) + 1);
 });
 */