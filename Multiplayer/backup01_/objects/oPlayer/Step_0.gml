if once[0]=true
{
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

once[0]=false
}

if global.currentRoom="public"
{
if instance_exists(oOtherPlayer) 
{
	if thisUsername=oOtherPlayer.playerUsername and once[1]=true
	{
	thisUsername=thisUsername+" ("+string(string(global.peopleConnected))+")"
	//thisUsername=thisUsername+string(global.clientId)
	once[1]=false
	}
}else{once[1]=false}
}

if once[2]=true
{
oManager.addUserToTheList=oManager.addUserToTheList+thisUsername+"\n"	
once[2]=false
}

global.thisUserNameGlobal=thisUsername

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

if global.playerState=state.normal and global.currentRoom!="none"
{
if keyboard_check_pressed(ord("T"))
{
timer[0]=0
keyboard_string=""
msg=""
global.playerState=state.texting	
}
}

if global.playerState=state.texting
{
if keyboard_check_pressed(vk_anykey)
{
timer[0]=0	//resets the position of the blinking mother fuckr
}

if keyboard_check_pressed(vk_escape)
{
if instance_exists(oManager){oManager.timerToRevert=0}
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

if keyboard_check(vk_anykey) or mouse_check_button(mb_any)
{
timerAfk=0	
timerEachSecond=0
disconnectCountdown=5*60
}

if global.currentRoom="none"
{
image_alpha=0	
}else{image_alpha=1}

//previous condition string_length(keyboard_string)<maxCharacters 6899 replace it when gamemaker fixes ext bug

if string_width(keyboard_string)<450 and global.currentRoom!="none" and global.playerState=state.texting
{
msg=keyboard_string
}
else
{
keyboard_string=msg
}

if global.currentRoom!="none" and joined=true
{
	if instance_exists(oOtherPlayer)
	{
		with (oOtherPlayer)
		{
		var thisClientId = clientId
		SendMessageToClient(thisClientId,"<Server> "+global.thisUserNameGlobal+" joined the room.") //6899 for some reason I don't need to add a line break here???
		}
	}
joined=false
}
if msg!="" and keyboard_check_pressed(vk_enter)
{
	
//COMMANDS
scrEmojiCheck();
	
	
if instance_exists(oManager){oManager.timerToRevert=0}
global.playerState=state.normal
playAudioFromOutside=1
audio_play_sound(sndGetMessage,1,false,global.sfxVolume,0,2)
timerMsg=0
filteredMsg=scrFilter(msg)
global.filteredMsgGlobal="<"+thisUsername+"> "+filteredMsg
sentMsg="<"+string(filteredMsg)+">"

//chat66666

//array_shift()
array_insert(global.chat,0,"<"+thisUsername+"> "+filteredMsg+"\n")
oManager.arrayChanged=true

//old
//global.chatLog+="<"+thisUsername+"> "+filteredMsg+"\n"

	if instance_exists(oOtherPlayer)
	{
		with (oOtherPlayer)
		{
		var thisClientId = clientId
		SendMessageToClient(thisClientId,global.filteredMsgGlobal)
		}
	}

msg=""
keyboard_string=""
if instance_exists(oOtherPlayer){oOtherPlayer.getMsg=true}
sentMessage=1
}else{playAudioFromOutside=0}

if sentMessage=1
{
timerSentMessageDelay++
var _delay=10
	if timerSentMessageDelay>_delay
	{
		sentMessage=0
		timerSentMessageDelay=0
	}
}

#region Crappy placeholder movement code
moveRight	=	keyboard_check(vk_right)
moveLeft	=	keyboard_check(vk_left)
moveDown	=	keyboard_check(vk_down)
moveUp		=	keyboard_check(vk_up)

if global.currentRoom!="none"
{
if moveRight	{sprite_index=base[spr.walkRight];	moving=movement.right}
if moveLeft		{sprite_index=base[spr.walkLeft];	moving=movement.left}
if moveUp		{sprite_index=base[spr.walkUp];		moving=movement.up}	
if moveDown		{sprite_index=base[spr.walkDown];	moving=movement.down}
}

var _xinput = moveRight - moveLeft
var _yinput = moveDown - moveUp;
move_and_collide(_xinput * spd, _yinput * spd, oWall);

/*
Old
x+=spd;	
x-=spd;	
y-=spd;	
y+=spd;	
*/

move_and_collide(hSpd,vSpd,oWall)

if !moveRight and !moveLeft and !moveUp and !moveDown
{
	
	switch (moving)
	{
	    case movement.right:
	        sprite_index=base[spr.idleRight]
	        break;
	    case movement.left:
	        sprite_index=base[spr.idleLeft]
	        break;
	    case movement.up:
	        sprite_index=base[spr.idleUp]
	        break;
	    case movement.down:
	        sprite_index=base[spr.idleDown]
	        break;
	}	
}

#endregion



switch (wearingEyes)
{
case "sprEmpty":
textEyes="Eyeless"
break;
case "sprEyesNeutral":
textEyes="Normal Eyes"
break;
}

switch (wearingFeet)
{
case "sprEmpty":
textFeet="No Shoes"
break;
case "sprFeetDoge":
textFeet="Lia's Shoes"
break;
case "sprApfelBoots":
textFeet="Apfel's Boots"
break;
}

switch (wearingHead)
{
case "sprEmpty":
textHead="No Top"
break;
case "sprHeadDoge":
textHead="Lia's Hat"
break;
}

switch (wearingLegs)
{
case "sprEmpty":
textLegs="No Pants"
break;
case "sprLegsDoge":
textLegs="Lia's Socks"
break;
case "sprApfelSkirt":
textLegs="Apfel's Skirt"
break;
}

switch (wearingTorso)
{
case "sprEmpty":
textTorso="No Shirt"
break;
case "sprTorsoDoge":
textTorso="Lia's Dress"
break;
case "sprApfelShirt":
textTorso="Apfel's Shirt"
break;
}

switch (wearingMouth)
{
case "sprEmpty":
textMouth="Mouthless"
break;
case "sprMouthSmile":
textMouth="Smile"
break;
}

switch (wearingAccessory)
{
case "sprEmpty":
textAccessory="No Accessory"
break;
case "sprBlumeFlower":
textAccessory="Blume's Flower"
break;
case "sprApfelVest":
textAccessory="Apfel's Vest"
break;
}


global.sharedProperties = {
_x								:		x							,
_y								:		y							,
_spr							:		sprite_index				,
setUsername						:		thisUsername				,
receivedChatLog					:		filteredMsg					,
_msg							:		sentMsg						,
_afkState						:		afkState					,
_afkCountdown					:		disconnectCountdown			,
_sendMsgAudio					:		playAudioFromOutside		,
_chatLog						:		global.chatLog				,
_sentMessage					:		sentMessage					,
received_moving					:		moving						,
received_moveRight				:		moveRight					,
received_moveLeft				:		moveLeft					,
received_moveUp					:		moveUp						,
received_moveDown				:		moveDown					,
received_image_blend			:		image_blend					,
//OPTIMIZE LATER THIS IS FUCKING HORRENDOUS 6899
received_eyesIsprIidleUp		:		eyes[spr.idleUp]			,	
received_eyesIsprIidleDown		:		eyes[spr.idleDown]			,	
received_eyesIsprIidleRight		:		eyes[spr.idleRight]			,
received_eyesIsprIidleLeft		:		eyes[spr.idleLeft]			,	
received_eyesIsprIwalkUp		:		eyes[spr.walkUp]			,	
received_eyesIsprIwalkDown		:		eyes[spr.walkDown]			,	
received_eyesIsprIwalkRight		:		eyes[spr.walkRight]			,
received_eyesIsprIwalkLeft		:		eyes[spr.walkLeft]			,	
received_moutIsprIidleUp		:		mout[spr.idleUp]			,	
received_moutIsprIidleDown		:		mout[spr.idleDown]			,	
received_moutIsprIidleRight		:		mout[spr.idleRight]			,
received_moutIsprIidleLeft		:		mout[spr.idleLeft]			,	
received_moutIsprIwalkUp		:		mout[spr.walkUp]			,	
received_moutIsprIwalkDown		:		mout[spr.walkDown]			,	
received_moutIsprIwalkRight		:		mout[spr.walkRight]			,
received_moutIsprIwalkLeft		:		mout[spr.walkLeft]			,	
received_feetIsprIidleUp		:		feet[spr.idleUp]			,	
received_feetIsprIidleDown		:		feet[spr.idleDown]			,	
received_feetIsprIidleRight		:		feet[spr.idleRight]			,
received_feetIsprIidleLeft		:		feet[spr.idleLeft]			,	
received_feetIsprIwalkUp		:		feet[spr.walkUp]			,	
received_feetIsprIwalkDown		:		feet[spr.walkDown]			,	
received_feetIsprIwalkRight		:		feet[spr.walkRight]			,
received_feetIsprIwalkLeft		:		feet[spr.walkLeft]			,	
received_legsIsprIidleUp		:		legs[spr.idleUp]			,	
received_legsIsprIidleDown		:		legs[spr.idleDown]			,	
received_legsIsprIidleRight		:		legs[spr.idleRight]			,
received_legsIsprIidleLeft		:		legs[spr.idleLeft]			,	
received_legsIsprIwalkUp		:		legs[spr.walkUp]			,	
received_legsIsprIwalkDown		:		legs[spr.walkDown]			,	
received_legsIsprIwalkRight		:		legs[spr.walkRight]			,
received_legsIsprIwalkLeft		:		legs[spr.walkLeft]			,	
received_torsIsprIidleUp		:		tors[spr.idleUp]			,	
received_torsIsprIidleDown		:		tors[spr.idleDown]			,	
received_torsIsprIidleRight		:		tors[spr.idleRight]			,
received_torsIsprIidleLeft		:		tors[spr.idleLeft]			,	
received_torsIsprIwalkUp		:		tors[spr.walkUp]			,	
received_torsIsprIwalkDown		:		tors[spr.walkDown]			,	
received_torsIsprIwalkRight		:		tors[spr.walkRight]			,
received_torsIsprIwalkLeft		:		tors[spr.walkLeft]			,	
received_headIsprIidleUp		:		head[spr.idleUp]			,	
received_headIsprIidleDown		:		head[spr.idleDown]			,	
received_headIsprIidleRight		:		head[spr.idleRight]			,
received_headIsprIidleLeft		:		head[spr.idleLeft]			,	
received_headIsprIwalkUp		:		head[spr.walkUp]			,	
received_headIsprIwalkDown		:		head[spr.walkDown]			,	
received_headIsprIwalkRight		:		head[spr.walkRight]			,
received_headIsprIwalkLeft		:		head[spr.walkLeft]			,
received_acsrIsprIidleUp		:		acsr[spr.idleUp]			,	
received_acsrIsprIidleDown		:		acsr[spr.idleDown]			,	
received_acsrIsprIidleRight		:		acsr[spr.idleRight]			,
received_acsrIsprIidleLeft		:		acsr[spr.idleLeft]			,	
received_acsrIsprIwalkUp		:		acsr[spr.walkUp]			,	
received_acsrIsprIwalkDown		:		acsr[spr.walkDown]			,	
received_acsrIsprIwalkRight		:		acsr[spr.walkRight]			,
received_acsrIsprIwalkLeft		:		acsr[spr.walkLeft]			,
}