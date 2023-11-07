with(oManager)
{
	//INITIALIZATION
	if room=rmGame
	{
		for (var i = 1; i <= numberOfAnimatronics; ++i) {
		    global.animatronicInstance[i]=instance_create_depth(20,20,-999,oAnimatronic,{identity:i});
		}
	}	
	
scrMoveAnimatronic(global.animatronicInstance[anima.birne],oRoomStage)	
scrMoveAnimatronic(global.animatronicInstance[anima.zitrone],oRoomStage)	
scrMoveAnimatronic(global.animatronicInstance[anima.coco],oRoomStage)	
scrMoveAnimatronic(global.animatronicInstance[anima.kirsche],oRoomStage)	
}