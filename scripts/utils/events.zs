import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import mods.gamestages.events.GameStageAdded;
import mods.gamestages.events.GameStageRemoved;
import crafttweaker.api.world.ServerLevel;

CTEventManager.register<RightClickBlockEvent>((event) => {
  var player = event.player;
  var level = player.level;
  var pos = event.blockPos;

  if level.getBlockState(pos).block == <block:minecraft:furnace> {
    if !player.hasGameStage("neolithic_age") {
      event.cancel();
    }
  }
});

//SYNCING THIS AND GAMESTAGE
CTEventManager.register<GameStageAdded>((event) => {
    var subj = event.entity;
    if (subj.getLevel() is ServerLevel) {
        var lvl = subj.getLevel() as ServerLevel;
        var srvr = lvl.server.executeCommand("thitemstages add "+event.player.name.getString()+" "+event.stage, true);
    }
});
 
CTEventManager.register<GameStageRemoved>((event) => {
    var subj = event.entity;
    if (subj.getLevel() is ServerLevel) {
        var lvl = subj.getLevel() as ServerLevel;
        var srvr = lvl.server.executeCommand("thitemstages remove "+event.player.name.getString()+" "+event.stage, true);
    }
});
