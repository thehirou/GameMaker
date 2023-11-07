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
/*
#macro RANDOM_ROOM choose(oRoomLobby,oRoomBath,oRoomKitchen,oRoomStage,oRoomSupl,oRoomSecurity,oRoomCorridor_1,oRoomCorridor_2,oRoomCorridor_A,oRoomCorridor_B)

if progress mod 60*3 == 0 and room=rmGame
{
scrMoveAnimatronic(global.animatronicInstance[anima.birne],RANDOM_ROOM)	
scrMoveAnimatronic(global.animatronicInstance[anima.zitrone],RANDOM_ROOM)	
scrMoveAnimatronic(global.animatronicInstance[anima.coco],RANDOM_ROOM)	
scrMoveAnimatronic(global.animatronicInstance[anima.kirsche],RANDOM_ROOM)	
}