with(oManager)
{
	//INITIALIZATION
	if room=rmGame
	{
		for (var i = 1; i <= numberOfAnimatronics; ++i) {
		    global.animatronicInstance[i]=instance_create_layer(20,20,"LayerAnimatronicsDebug",oAnimatronic,{identity:i});
		}
	}	
	
scrMoveAnimatronic(global.animatronicInstance[anima.birne],oRoomStage)	
scrMoveAnimatronic(global.animatronicInstance[anima.zitrone],oRoomStage)	
scrMoveAnimatronic(global.animatronicInstance[anima.coco],oRoomStage)	
scrMoveAnimatronic(global.animatronicInstance[anima.kirsche],oRoomStage)	
}

audio_play_sound(oManager.sndEerieLayer[0],1,true)

horizontalMovement=0 //Side doors
verticalMovement=0 //Top bathroom vent
displayMap=true

curve[0]=animcurve_get_channel(animation,"viewportMovement");
percent[0]=0;
horizontalViewportPanning=0 //Default, the animation curve makes it oscillate between the max panning position and the min panning position
panningDuration=20 //In seconds, how long does it take the viewport camera to pan the entire room

rightSide=false
leftSide=false

//Dummies
camOverlayInstance=instance_create_layer(0,0,"CamOverlay",oDummy,{sprite_index:sprCameraOverlay2, image_speed:0.5})

//10 Cameras
scrCreateCamera(1686,620,cam.kitchen)
scrCreateCamera(1590,540,cam.suplrm)
scrCreateCamera(1643,963,cam.exitdoor)
scrCreateCamera(1290,600,cam.bath)
scrCreateCamera(1600,720,cam.stage)
scrCreateCamera(1200,930,cam.corridor1)
scrCreateCamera(1200,720,cam.corridor2)
scrCreateCamera(1500,590,cam.corridorA)
scrCreateCamera(1430,800,cam.corridorB)


