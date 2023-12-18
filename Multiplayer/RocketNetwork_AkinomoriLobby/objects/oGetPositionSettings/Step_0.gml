if global.debug=true
{
image_alpha=0.2	
}
else
{
image_alpha=0
}


if global.playerState=state.settings
{
	
	if instance_position(mouse_x, mouse_y,oGetPositionSettings)
	{
		window_set_cursor(cr_handpoint)	
	}
	else
	{
		window_set_cursor(cr_default)
	}
}


x=camera_get_view_x(view_camera[0])+startX
y=camera_get_view_y(view_camera[0])+startY


if goaway=true
{
timer++
if timer>20
{
x=999999 //this is so i get stored the startX and startY so the cursor doesnt trigger in the getpositions of text instead of arrows	
}
}