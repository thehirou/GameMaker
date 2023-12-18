timer[1]++

if timer[1]=loadingTime*60
{
instance_destroy(loadingInstance)
global.mainMenuMsg="Welcome "+string(oPlayer.setUser)+"!\n"+"Press ENTER to join the server."
}

if keyboard_check_pressed(vk_enter) and global.currentRoom="none" and timer[1]>2*60
{
audio_play_sound(sndEnterRoom,1,false,global.sfxVolume)
ChangeRoom("public")
}

if global.debug
{
if keyboard_check(vk_control) and keyboard_check_pressed(ord("P"))
	{
	ShowAllClientsInRoom(global.currentRoom)
	}
}

global.peopleConnected=instance_number(oOtherPlayer)+instance_number(oPlayer)

if mouse_check_button_pressed(mb_left)
{
clickedSomewhere=true	
}

if arrayChanged=true or global.playerState=state.texting //meh, kinda works
{
timerToRevert++
afkOpacity=lerp(afkOpacity,1,0.05)

if timerToRevert>4*60
{
	timerToRevert=0
	arrayChanged=false
}
}else{afkOpacity=lerp(afkOpacity,afkMinOpacity,0.05)}

if global.currentRoom!="none"
{


if current_minute=59 and current_second=54
{
if !instance_exists(oBellSound){instance_create_depth(0,0,0,oBellSound)}
}


}
