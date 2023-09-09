if wait=true
{
	turnTimer++
	
	if turnTimer>57
	{		
		done=true
	}
	
	if turnTimer>60
	{		
		global.turn++
		
		if BLACKTURN{
		o_followcamera.x=global.blackXlast
		o_followcamera.y=global.blackYlast
		}
		
		if WHITETURN{
		o_followcamera.x=global.whiteXlast
		o_followcamera.y=global.whiteYlast
		}
		
		done=false
		turnTimer=0
		wait=false
	}
}


