display_set_gui_size(1920,1080)
if keyboard_check_pressed(vk_space) and global.debug
{
	global.color_row_index +=1;
	global.color_row_index = global.color_row_index mod global.color_sets
	
	global.v_normal = global.color_row_index/256;
}



//###################
if keyboard_check_pressed(ord("R"))
	{
		game_restart()
	}
//###################
if keyboard_check_pressed(ord("F"))
	{
		global.fullscreen=!global.fullscreen
		window_set_fullscreen(global.fullscreen)	
	}
//###################
if keyboard_check_pressed(ord("D"))
	{
		global.debug=!global.debug
	}
//###################
if keyboard_check_pressed(vk_subtract)
	{
		zoom++
	}
	
if keyboard_check_pressed(vk_add)
	{
		zoom--
	}

if global.debug and keyboard_check(vk_shift)
{
room_speed=1000	
}else{room_speed=60}

//if global.debug and keyboard_check(vk_control)
//{
//room_speed=10	
//}else{room_speed=60}

//###################
tileX=round((mouse_x-10)/20)
tileY=round((mouse_y-10)/20)
//###################

if WHITETURN
{
turnString=WHITES	
}

if BLACKTURN
{
turnString=BLACKS	
}