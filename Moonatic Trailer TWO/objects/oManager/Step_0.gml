_spd=1

if keyboard_check_pressed(ord("R")){game_restart()}

if room=room_street_new
{
oDummy.x+=MACRO_SPD	
}

if room=Room1
{
with(oFollower)
{
	if collision_point(x,y,inst_folow_first_collission,false,true)
	{
		path=1
	}	
	if collision_point(x,y,inst_point_1,false,true)
	{
		path=2
	}
}

with(oDummy)
{
	if collision_point(x,y,inst_folow_first_collission,false,true)
	{
		global.path=1
	}	
	
	if collision_point(x,y,inst_point_1,false,true)
	{
		global.path=2
	}
}

switch (global.path) {
    case 0:
		oDummy.sprite_index=TROY_down
        oDummy.y+=MACRO_SPD
        break;
    case 1:
		oDummy.sprite_index=TROY_right
        oDummy.x+=MACRO_SPD
        break;
    case 2:
		oDummy.sprite_index=TROY_up
        oDummy.y-=MACRO_SPD
        break;
    case 3:
        oDummy.x+=MACRO_SPD
        break;
    case 4:
        oDummy.x+=MACRO_SPD
        break;
    default:
        // code here
        break;
}
}




if room=room_troy_bedroom
{
	
with(oDummy)
{
	if collision_point(x,y,path_2,false,true)
	{
		oManager.troyroomPath=1
	}	
	if collision_point(x,y,path_3,false,true)
	{
		oManager.troyroomPath=2
	}	
	if collision_point(x,y,path_4,false,true)
	{
		oManager.troyroomPath=3
	}	
	if collision_point(x,y,path_1,false,true)
	{
		oManager.troyroomPath=0
	}	

	

}
	
	switch (troyroomPath) {
	    case 0:
		oDummy.sprite_index=global.S_APFEL_LEFT
	        oDummy.x-=MACRO_SPD
	        break;
	    case 1:
		oDummy.sprite_index=global.S_APFEL_DOWN
	        oDummy.y+=MACRO_SPD
	        break;
	    case 2:
		oDummy.sprite_index=global.S_APFEL_RIGHT
	        oDummy.x+=MACRO_SPD
	        break;
	    case 3:
		oDummy.sprite_index=global.S_APFEL_UP
	        oDummy.y-=MACRO_SPD
	        break;
	    default:
	        // code here
	        break;
	}
	
	
if keyboard_check_pressed(vk_left){nightRoom=!nightRoom}

	
switch (nightRoom) {
    case true:
        layer_set_visible(layer_get_id("night1"),false)
        layer_set_visible(layer_get_id("night2"),false)
        layer_set_visible(layer_get_id("night3"),false)
		global.S_APFEL_RIGHT=TROY_right
		global.S_APFEL_LEFT=TROY_left
		global.S_APFEL_DOWN=TROY_down
		global.S_APFEL_UP=TROY_up

        break;
    case false:
        layer_set_visible(layer_get_id("night1"),true)
        layer_set_visible(layer_get_id("night2"),true)
        layer_set_visible(layer_get_id("night3"),true)
		global.S_APFEL_RIGHT=N_RIGHT
		global.S_APFEL_LEFT=N_LEFT
		global.S_APFEL_DOWN=N_DOWN
		global.S_APFEL_UP=N_UP

		break;
    default:
        // code here
        break;
}	
	
	
	
}