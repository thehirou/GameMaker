if KEY_FULLSCREEN
{
global.fullscreen=!global.fullscreen
window_set_fullscreen(global.fullscreen)
}

if KEY_DEBUG
{
global.debug=!global.debug
}

if KEY_RESTART
{
game_restart()	
}

progress++

scrHourCalculator();
global.generalInteligence=currentHour


if global.debug=false
{
oCameraMouse.image_alpha=0
oCameraVent.image_alpha=0
}
else
{
camLeft3.image_alpha=1
camLeft2.image_alpha=0.7
camLeft1.image_alpha=0.3

camRight3.image_alpha=1
camRight2.image_alpha=0.7
camRight1.image_alpha=0.3

oCameraVent.image_alpha=1
}



switch (global.currentCamera) {
    case cam.stage:
        global.currentViewport=sprViewportStage
		global.currentViewportPans=true
		global.currentCameraString="STAGE"
        break;
    case cam.kitchen:
        global.currentViewport=sprViewportKitchen
		global.currentViewportPans=false
		global.currentCameraString="KITCHEN"
        break;
    default:
        global.currentViewport=sprViewportTest
		global.currentViewportPans=true
		global.currentCameraString="TEST"
        break;
}


//DEBUG

#macro RANDOM_ROOM choose(oRoomLobby,oRoomBath,oRoomKitchen,oRoomStage,oRoomSupl,oRoomSecurity,oRoomCorridor_1,oRoomCorridor_2,oRoomCorridor_A,oRoomCorridor_B)

if progress mod 60*3 == 0 and room=rmGame
{
scrMoveAnimatronic(global.animatronicInstance[anima.birne],RANDOM_ROOM)	
scrMoveAnimatronic(global.animatronicInstance[anima.zitrone],RANDOM_ROOM)	
scrMoveAnimatronic(global.animatronicInstance[anima.coco],RANDOM_ROOM)	
scrMoveAnimatronic(global.animatronicInstance[anima.kirsche],RANDOM_ROOM)	
}