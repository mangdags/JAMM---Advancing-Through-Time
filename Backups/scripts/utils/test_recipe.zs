/*
val oven   = "immersiveengineering:multiblocks/coke_oven"     as string;
val silo   = "immersiveengineering:multiblocks/silo"          as string;
val furn   = "immersiveengineering:multiblocks/blast_furnace" as string;
val crush  = "immersiveengineering:multiblocks/crusher"       as string;
val squee  = "immersiveengineering:multiblocks/squeezer"      as string;

val recipe = [
[<item:minecraft:air>,<item:minecraft:iron_ingot>,<item:minecraft:string>],
[<item:minecraft:air>,<tag:items:forge:rods/wooden>,<item:minecraft:iron_ingot>],
[<tag:items:forge:rods/wooden>,<item:minecraft:air>,<item:minecraft:air>]
] as IIngredient[][];

val hammer = <item:immersiveengineering:hammer>;

val htier4 = hammer.withTag({multiblockPermission: [oven, silo, furn, crush, squee]});

mods.recipestages.Recipes.addShaped("HamT4", "hammertier4", htier4, recipe);
*/