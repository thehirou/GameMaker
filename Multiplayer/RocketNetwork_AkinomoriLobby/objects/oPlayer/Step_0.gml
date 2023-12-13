switch (setUser) {
    case "ADMIN_DEBUG01":
        global.debug=true
		thisUsername="Admin"
        break;
    case "ADMIN_BANHAMMER02":
        global.debug=true
		thisUsername="Admin"
        break;
    case "Admin":
		thisUsername="Fake Admin"
        break;
    default:
        thisUsername=string_replace_all(setUser," ","_") //Replace spaces with underscores
        break;
}

depth=-y

timerAfk++

if timerAfk>30*60{afkState=1}else{afkState=0}

if afkState=1
{
	timerEachSecond++
	if timerEachSecond>60
	{
	timerEachSecond=0
	disconnectCountdown--
	}
}

if global.playerState=state.normal
{
if keyboard_check_pressed(ord("T"))
{
keyboard_string=""
msg=""
global.playerState=state.texting	
}
}

if global.playerState=state.texting
{
if keyboard_check_pressed(vk_escape)
{
global.playerState=state.normal	
keyboard_string=""
msg=""
}
}

timer[0]++

if timer[0]<60
{
blinkingMotherfucker="|"	
}

if timer[0]>60
{
blinkingMotherfucker=""	
}

if timer[0]>120
{
timer[0]=0	
}

if disconnectCountdown<0
{
global.disconnectReason="Disconnected! You were AFK for too long!"
DisconnectFromServer()	
}

if keyboard_check(vk_anykey)
{
timerAfk=0	
timerEachSecond=0
disconnectCountdown=5*60
}

if global.currentRoom="none"
{
image_alpha=0	
}else{image_alpha=1}

if string_length(keyboard_string)<maxCharacters and global.currentRoom!="none" and global.playerState=state.texting
{
msg=keyboard_string
}
else
{
keyboard_string=msg
}

if msg!="" and keyboard_check_pressed(vk_enter)
{
global.playerState=state.normal
playAudioFromOutside=1
audio_play_sound(sndGetMessage,1,false,global.sfxVolume,0,2)
timerMsg=0
filteredMsg=scrFilter(msg)
sentMsg="<"+string(filteredMsg)+">"
msg=""
keyboard_string=""
}else{playAudioFromOutside=0}

#region Crappy placeholder movement code
moveRight	=	keyboard_check(vk_right)
moveLeft	=	keyboard_check(vk_left)
moveDown	=	keyboard_check(vk_down)
moveUp		=	keyboard_check(vk_up)

if moveRight	{x+=spd;	sprite_index=rightWalk;	moving=movement.right}
if moveLeft		{x-=spd;	sprite_index=leftWalk;	moving=movement.left}
if moveUp		{y-=spd;	sprite_index=upWalk;	moving=movement.up}
if moveDown		{y+=spd;	sprite_index=downWalk;	moving=movement.down}

if !moveRight and !moveLeft and !moveUp and !moveDown
{
	switch (moving)
	{
	    case movement.right:
	        sprite_index=rightIdle
	        break;
	    case movement.left:
	        sprite_index=leftIdle
	        break;
	    case movement.up:
	        sprite_index=upIdle
	        break;
	    case movement.down:
	        sprite_index=downIdle
	        break;
	}	
}

#endregion

global.sharedProperties = {
	_x : x,
	_y : y,
	_spr : sprite_index,
	setUsername : thisUsername,
	_msg : sentMsg,
	_afkState : afkState,
	_afkCountdown : disconnectCountdown,
	_sendMsgAudio : playAudioFromOutside
}