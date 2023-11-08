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

horizontalMovement=0 //Side doors
verticalMovement=0 //Top bathroom vent
displayMap=true