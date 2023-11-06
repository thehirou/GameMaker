if KEY_FULLSCREEN
{
global.fullscreen=!global.fullscreen
window_set_fullscreen(global.fullscreen)
}

if KEY_RESTART
{
game_restart()	
}

progress++

scrHourCalculator();
global.generalInteligence=currentHour




//DEBUG
if progress mod 60*3 == 0
{
scrMoveAnimatronic(global.animatronicInstance[anima.birne],choose(oRoomLobby,oRoomVent,oRoomKitchen))	
scrMoveAnimatronic(global.animatronicInstance[anima.zitrone],choose(oRoomLobby,oRoomVent,oRoomKitchen))	
scrMoveAnimatronic(global.animatronicInstance[anima.coco],choose(oRoomLobby,oRoomVent,oRoomKitchen))	
scrMoveAnimatronic(global.animatronicInstance[anima.kirsche],choose(oRoomLobby,oRoomVent,oRoomKitchen))	
}