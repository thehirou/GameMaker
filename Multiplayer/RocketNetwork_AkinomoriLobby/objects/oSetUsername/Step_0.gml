if string_length(keyboard_string)<16
{
global.inputField=keyboard_string
}

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