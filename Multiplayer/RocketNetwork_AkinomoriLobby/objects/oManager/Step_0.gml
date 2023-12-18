if global.currentRoom!="none"
{
if global.playerState=state.normal and keyboard_check_pressed(vk_escape)
{
audio_play_sound(sndOpenMenu,1,false,global.sfxVolume)
settings=!settings
}

if global.playerState=state.settings and keyboard_check_pressed(vk_escape)
{
audio_play_sound(sndCloseMenu,1,false,global.sfxVolume)
global.playerState=state.normal
settings=false
}

if settings=true{global.playerState=state.settings}
}

opt1="Music Volume:\n"+string(optValue1)+"%"
opt2="SFX Volume:\n"+string(optValue2)+"%"
opt3="Chat:\n"+optValue3

global.musicVolume=optValue1/100
global.sfxVolume=optValue2/100
if showChat=true{optValue3="ON"; chatOpacity=1}else{optValue3="OFF"; chatOpacity=0}





if global.debug
{
if keyboard_check(ord("K"))	and keyboard_check(vk_control)
{

KickPlayer(global.lastCheck)

if instance_exists(oOtherPlayer)
{
	with (oOtherPlayer)
	{
	var thisClientId = clientId
	SendMessageToClient(thisClientId,"<Server> "+global.lastCheckUser+" was kicked by an admin.")
	}
}
}
}

if global.debug
{
	
	if keyboard_check(vk_control) and (keyboard_check_pressed(ord("S"))){ViewServerActivity()}
	
	if keyboard_check(vk_control) and keyboard_check(vk_alt) and keyboard_check(ord("D"))
	{
	var response=show_question("ARE YOU SURE YOU WANT TO DELETE ALL PERSISTENT OBJECTS? THIS ONLY CAN BE DONE THROUGH A WINDOWS INSTANCE")
	
	if response=true
	{
		var noOfInstances=instance_number(oPersistentObject)
		for (var i = 0; i < 99999; ++i) //Is putting 99999 in there a bad idea?
		{
			DestroyPersistentObject(i)	
			if instance_exists(oPersistentObject){instance_destroy(oPersistentObject)}   
		}
	show_message("Deleted " +string(noOfInstances)+" instances.")
	}else{show_message("Operation cancelled.")}
		
	
	}
	
	if mouse_check_button_pressed(mb_left) and test=true
	{
		//Test
		CreatePersistentObject("public",
		{
			_sprite_index	:		sprIdleDown,
			_x				:		mouse_x,
			_y				:		mouse_y,
			_image_xscale	:		2,
			_image_yscale	:		2,
		})
	}
}

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
