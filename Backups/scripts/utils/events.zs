import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
//import crafttweaker.api.event.entity.player.EntityTravelToDimensionEvent;
import mods.gamestages.events.GameStageAdded;
import mods.gamestages.events.GameStageRemoved;
import crafttweaker.api.world.ServerLevel;
import crafttweaker.api.text.Style;
import crafttweaker.api.text.ChatFormatting;
import crafttweaker.api.text.TextComponent;

CTEventManager.register<RightClickBlockEvent>((event) => {
  var player = event.player;
  var level = player.level;
  var pos = event.blockPos;
  var message = new TextComponent("You must unlock Mesolithic Age to interact with this block!").setStyle(<constant:formatting:red>);

  if level.getBlockState(pos).block == <block:minecraft:furnace> {
    if !player.hasGameStage("mesolithic_age") {

      player.displayClientMessage(message, true);
      event.cancel();
    }
  }
});

CTEventManager.register<RightClickBlockEvent>((event) => {
  var player = event.player;
  var level = player.level;
  var pos = event.blockPos;

  var message = new TextComponent("You must unlock Cookery to interact with this block!").setStyle(<constant:formatting:red>);

  if level.getBlockState(pos).block == <block:minecraft:smoker> {
    if !player.hasGameStage("cookery") {
      player.displayClientMessage(message, true);
      event.cancel();
    }
  }
});

CTEventManager.register<RightClickBlockEvent>((event) => {
  var player = event.player;
  var level = player.level;
  var pos = event.blockPos;

  var message = new TextComponent("You must unlock Iron Age to interact with this block!").setStyle(<constant:formatting:red>);

  if level.getBlockState(pos).block == <block:minecraft:stonecutter> {
    if !player.hasGameStage("iron_age") {
      player.displayClientMessage(message, true);
      event.cancel();
    }
  }
});

CTEventManager.register<RightClickBlockEvent>((event) => {
  var player = event.player;
  var level = player.level;
  var pos = event.blockPos;

  var message = new TextComponent("You must unlock Paleolithic Age to interact with this block!").setStyle(<constant:formatting:red>);

  if level.getBlockState(pos).block == <block:minecraft:chest>  || level.getBlockState(pos).block == <block:minecraft:barrel> {
    if !player.hasGameStage("paleolithic_age") {
      player.displayClientMessage(message, true);
      event.cancel();
    }
  }
});



/*
CTEventManager.register<EntityTravelToDimensionEvent>((event) => {
  var player = event.player;
  var level = player.level;
  var pos = event.blockPos;

  var message = new TextComponent("You must unlock Renaissance Age to enter the Nether!").setStyle(<constant:formatting:red>);
    if event.player.world.isRemote() { return; }
    
    if !player.hasGameStage("renaissance_age") {
      player.displayClientMessage(message, true);
      event.cancel();
    }
});
*/

    

//SYNCING THIS AND GAMESTAGE
CTEventManager.register<GameStageAdded>((event) => {
    var subj = event.entity;
    if (subj.getLevel() is ServerLevel) {
        var lvl = subj.getLevel() as ServerLevel;
        var srvr = lvl.server.executeCommand("thitemstages add " +event.player.name.getString() + " " +event.stage, true);
    }
});
 
CTEventManager.register<GameStageRemoved>((event) => {
    var subj = event.entity;
    if (subj.getLevel() is ServerLevel) {
        var lvl = subj.getLevel() as ServerLevel;
        var srvr = lvl.server.executeCommand("thitemstages remove " +event.player.name.getString() + " " +event.stage, true);
    }
});

/*
CTEventManager.register<GameStageCleared>((event) => {
    var subj = event.entity;
    if(subj.getLevel() is ServerLevel) {
        var lvl = subj.getLevel() as ServerLevel;
        var srvr = lvl.server.executeCommand("thitemstages clear " + event.player.name.getString(), true);
    }
});
*/
