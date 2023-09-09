timer++

if timer>maxTime
{
	global.childrenStop=true
}

if global.childrenStop=false
{
game_set_speed(60,gamespeed_fps)	
}
else
{
game_set_speed(60,gamespeed_fps)	
}

if keyboard_check_pressed(ord("R")){game_restart()}
/*
if keyboard_check(ord("Z"))
{
	camera_set_view_pos(view_camera[0],camX-640*3,camY-480*3)
	camera_set_view_size(view_camera[0],640*6,480*6)	
}
else
{
	camera_set_view_size(view_camera[0],640,480)
	camera_set_view_pos(view_camera[0],camX,camY)
}
*/




/*
if finishedGenerating=false
{
	
	game_set_speed(60*100, gamespeed_fps)
	
	for (var i = startPointX; i < endPointX; i+=TILEBIG)
	{
		var tileID = instance_create_layer(i, startPointY, "tileLayer", oTile,
		{
		    //tileType : 0
		});

	}

	if i>=endPointX and startPointY<endPointY
	{
		i=startPointX; startPointY+=TILEBIG
	}
}

if startPointY>=endPointY
{
	finishedGenerating=true	
	game_set_speed(60, gamespeed_fps)
}