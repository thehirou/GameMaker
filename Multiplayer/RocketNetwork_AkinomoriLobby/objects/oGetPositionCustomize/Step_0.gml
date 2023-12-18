if global.debug=true
{
image_alpha=0.2	
}
else
{
image_alpha=0
}


if global.playerState=state.customizing
{

	
	if instance_position(mouse_x, mouse_y,oGetPositionCustomize)
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

