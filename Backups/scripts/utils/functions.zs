import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import mods.jei.JEI;

import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.block.BlockBreakEvent;
import crafttweaker.api.event.block.BlockEvent;
import crafttweaker.api.event.entity.player.interact.LeftClickBlockEvent;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.event.entity.player.interact.PlayerInteractEvent;
import crafttweaker.api.item.type.block.BlockItem;
import crafttweaker.api.tag.manager.ITagManager;

#priority 100

mods.recipestages.Recipes.setPrintContainers(true);

public function setStageItem(stage as string, item as string) as void {
    mods.recipestages.Recipes.setRecipeStage(stage, BracketHandlers.getItem(item));
}

public function setStagedItem(stage as string, item as IItemStack) as void{
    mods.recipestages.Recipes.setRecipeStage(stage, item);
}

public function setStagedTag(stage as string, tag as MCTag) as void{
    for elem in tag.idElements{
        mods.recipestages.Recipes.setRecipeStage(stage, elem);
    }
}

public function setStagedMod(stage as string, modID as string) as void {
    mods.recipestages.Recipes.setRecipeStageByMod(stage, modID);
}

public function removeStagedItem(item as IItemStack) as void{
    mods.recipestages.Recipes.clearRecipeStage(item);
}

public function removeStagedTag(tag as MCTag) as void{
    for elem in tag.idElements{
        mods.recipestages.Recipes.clearRecipeStage(elem);
    }
}
