ownFog.x=x+10
ownFog.y=y+10

switch (launcher) {
	
    case WHITES:
	        color_row_index =0;
			color_row_index = color_row_index mod color_sets
			v_normal = color_row_index/256;
        break;
	
    case BLACKS:
	        color_row_index =1;
			color_row_index = color_row_index mod color_sets
			v_normal = color_row_index/256;
        break;

}

#region CLICKS
if global.settings=false and o_wait.wait=false and mouse_check_button_pressed(mb_left) and mouseHover=true and selectedPiece=false and !instance_exists(o_able)
{

	if launcher=WHITES and WHITETURN
	{
		o_followcamera.x=id.x+10
		o_followcamera.y=id.y+10
		insideSelectedColor=WHITES
		global.selectedColor=WHITES
		
		SND_SELPIECE
		
		scr_hability()
		global.seeAvailable=true
		global.selectedPiece=type
		selectedPiece=true	
	}
	
	if launcher=BLACKS and BLACKTURN
	{
		o_followcamera.x=id.x+10
		o_followcamera.y=id.y+10
		insideSelectedColor=BLACKS
		global.selectedColor=BLACKS	
		
		SND_SELPIECE
		
		scr_hability()
		global.seeAvailable=true
		global.selectedPiece=type
		selectedPiece=true	
	}
	
}

if selectedPiece=true and mouse_check_button_pressed(mb_left) and wait>1
{
	if global.freespace=FREE
	{ //IF YOU EXECUTE YOUR MOVEMENT W/O EATING
		if selectedPiece=true
		{			

				SND_SELPLACE
				scr_sound_switch();
				screenshake(5,2,0.1)
				temporaryFreeSpace=global.freespace
				if once=true{	
				movX_=(o_god.tileX*tileBig)+difX
				movY_=(o_god.tileY*tileBig)+difY
				o_smooth.movePiece=true
				o_smooth.pieceID=id
				once=false
				}
				

			}
	}
	
	if global.freespace=EATABLE
	{ //IF YOU EAT A PIECE
		if selectedPiece=true
			{
				SND_SELPLACE
				scr_sound_switch();
				screenshake(5,1,0.5)
				temporaryFreeSpace=global.freespace
				if once=true{	
				movX_=(o_god.tileX*tileBig)+difX
				movY_=(o_god.tileY*tileBig)+difY
				o_smooth.movePiece=true
				o_smooth.pieceID=id
				once=false
				}
				
				// INSTANT POSITION
				/*
				x=movX_
				y=movY_*/
				
			}
	}
	
	if global.freespace=NOTFREE and selectedPiece=true //IF YOU SELECT ANOTHER PIECE
	{
		SND_DEPIECE
		global.selectedColor=NONE
		selectedPiece=false
		wait=0
		global.seeAvailable=false
		scr_hability()
		global.selectedPiece=""
		if instance_exists(protector){protector.x=x; protector.y=y}
		if instance_exists(o_able){instance_destroy(o_able)}
		if instance_exists(o_eat){instance_destroy(o_eat)}
	}
}

if place_meeting(x,y,o_eat){
danger=true
}else{danger=false}
#endregion