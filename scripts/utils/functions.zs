import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import mods.jei.JEI;

#priority 100

mods.recipestages.Recipes.setPrintContainers(true);

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

public function hideRecipe(stage as string, item as IItemStack) as void {
    
}

