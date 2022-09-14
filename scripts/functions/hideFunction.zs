import crafttweaker.api.item.IItemStack;
import crafttweaker.api.resource.ResourceLocation;

#priority 100

public function setStagedItem(stage as string, item as IItemStack) as void{
    mods.recipestages.Recipes.setRecipeStage(stage, item);
}

public function setStagedTag(stage as string, item as ResourceLocation) as void{
    mods.recipestages.Recipes.setRecipeStage(stage, item);
}