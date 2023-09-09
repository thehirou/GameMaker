if place_meeting(mouse_x,mouse_y,o_protected)
{
	global.freespace=NOTFREE
	image_blend=c_red
}else if place_meeting(mouse_x,mouse_y,o_able)
{
	global.freespace=FREE
	image_blend=c_green
	}else if place_meeting(mouse_x,mouse_y,o_eat)
	{
	o_piece.destroyPosX=(o_god.tileX)*20
	o_piece.destroyPosY=o_god.tileY*20
	global.freespace=EATABLE
	image_blend=c_green
	}else{
	global.freespace=NOTFREE
	image_blend=c_red
	}
	
x=mouse_x; y=mouse_y