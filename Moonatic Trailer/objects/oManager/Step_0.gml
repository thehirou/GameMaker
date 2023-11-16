_spd=1

if keyboard_check_pressed(ord("R")){game_restart()}

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