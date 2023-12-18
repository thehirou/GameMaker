if mouse_check_button_pressed(mb_left)
{
allow=true
keyboard_string=""
global.inputField=""
}

if allow=true
{
	

if string_length(keyboard_string)<16
{
	
if keyboard_check_pressed(vk_anykey){audio_play_sound(sndClick,1,false,global.sfxVolume,0,random_range(0.9,2))}

global.inputField=keyboard_string
}else{keyboard_string=global.inputField}

timer[0]++


if timer[0]<60
{
blinkingLittleShit="|"	
}

if timer[0]>60
{
blinkingLittleShit=" "	
}

if timer[0]>120
{
timer[0]=0
}

if keyboard_check_pressed(vk_anykey)
{
timer[0]=0	//resets the position of the blinking mother fuckr
}

//Probably add a filter
if global.inputField!="" and keyboard_check_pressed(vk_enter)
{
room_goto(rmLobby)	
}
}