if keyboard_check_pressed(ord("F"))
	{
		global.fullscreen=!global.fullscreen
		window_set_fullscreen(global.fullscreen)	
	}
	
if keyboard_check_pressed(ord("P"))
	{
		if room=rm_mainMenu
		{
		room_goto(rm_mainRoom)	
		}
	}