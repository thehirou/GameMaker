depth=-y

if room=room_street_new
{
sprite_index=TROY_right
}

if room!=cheeseroom
{
sprite_set_speed(sprite_index,6,spritespeed_framespersecond)
}
else
{
sprite_set_speed(sprite_index,6,spritespeed_framespersecond)	
}

if room=cheeseroom
{
	if collision_point(x,y,turnaround,false,true)
	{
		path=1
	}	
	if collision_point(x,y,stopALL,false,true)
	{
		global.STAPPPPPP=true
	}
	if collision_point(x,y,goUP,false,true)
	{
		path=3
	}
}


if room=cheeseroom
{
switch (path) {
    case 0:
		 sprite_index=global.S_APFEL_DOWN
         y+=MACRO_SPD
        break;
    case 1:
		 sprite_index=global.S_APFEL_RIGHT
         x+=MACRO_SPD
        break;
    case 2:
		image_index=1
        break;
    case 3:
	 sprite_index=global.S_APFEL_UP
		y-=MACRO_SPD
        break;
    default:
        // code here
        break;
}
}

if global.STAPPPPPP=true
{
	path=2
}

