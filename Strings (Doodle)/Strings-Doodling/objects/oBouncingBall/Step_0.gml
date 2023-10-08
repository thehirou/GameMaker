if keyboard_check(ord("S"))
{
speed=20	//Max speed it seems, the other way would be changing room_speed
}else{speed=5}

if keyboard_check(ord("D"))
{
var _mult=100
room_speed=60*_mult
}else{room_speed=60}


if collision_circle(x,y,_rad+1,oColissionSide,true,true)
{

_col=choose(c_red,c_aqua,c_green,c_blue,c_lime,c_fuchsia,c_yellow)
audio_play_sound(sndPop,1,false,1,0,random_range(1,2))
window_set_caption(choose("pop","pap","pup","bop","bip","flop","doop","fop","top","bruop","fwoop"))

scrReload();
addLine();

switch (direction) {
    case 45:
        direction=135
        break;
    case 135:
        direction=45
        break;
    case 225:
        direction=315
		break;
    case 315:
        direction=225
        break;
}	
}

if collision_circle(x,y,_rad+1,oColissionUpDown,true,true)
{

_col=choose(c_red,c_aqua,c_green,c_blue,c_lime,c_fuchsia,c_yellow)
audio_play_sound(sndPop,1,false,1,0,random_range(1,2))
window_set_caption(choose("pop","pap","pup","bop","bip","flop","doop","fop","top","bruop","fwoop"))

scrReload();
addLine();

switch (direction) {
    case 45:
        direction=315
        break;
    case 315:
        direction=45
        break;
    case 225:
        direction=135
		break;
    case 135:
        direction=225
        break;
}	
}

if collision_circle(x,y,_rad+1,oColissionUpDown,true,true) and collision_circle(x,y,_rad+1,oColissionSide,true,true)
{
audio_play_sound(sndTada,1,false,1,0)
}
