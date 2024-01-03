if global.playerState=state.normal{window_set_cursor(cr_default)}
//Id also check for state.settings and state.interacting but to get to those you have to go through state.normal no matter what



//DeleteSimpleData("pdatabase","undefined")


if global.debug
{
if !instance_exists(cursorInstance){cursorInstance=instance_create_depth(x,y,depth,oMyEntity,{type : entity.cursor})}	
}

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
    case "DATE-ç":
		thisUsername="DATE-c"
        break;
    case "ç-DATE":
		thisUsername="c-DATE"
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

if global.currentRoom="public" and once[3]=true
{
x=room_width/2
y=room_height/2	
once[3]=false
}

if global.currentRoom!="none" and !keyboard_check(ord("Q"))
{
timeoutTimer++
if timeoutTimer>5*60
{
timeoutTimer=0	
}

}


global.thisUserNameGlobal=thisUsername

//6899
//depth=-y

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


if global.playerState=state.texting
{
	
	afkTextingTimer++
	
if keyboard_check_pressed(vk_anykey)
{
	afkTextingTimer=0
}

if afkTextingTimer<4*60
{
textingBubble=true	
}else{textingBubble=false}

}else{textingBubble=false}

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
	

	ReadSimpleData("pdatabase",string(myIp))
	
	
	if instance_exists(oOtherPlayer)
	{
		with (oOtherPlayer)
		{
		var thisClientId = clientId
		date_set_timezone(timezone_utc);

		var _h = string(date_get_hour(date_current_datetime()));
		var _m = string(date_get_minute(date_current_datetime()));
		var _s = string(date_get_second(date_current_datetime()));
		var _d = string(date_get_day(date_current_datetime()));
		var _mo = string(date_get_month(date_current_datetime()));
		var _y = string(date_get_year(date_current_datetime()));

		// Add leading zeros for single-digit values
		if (string_length(_h) == 1) _h = "0" + _h;
		if (string_length(_m) == 1) _m = "0" + _m;
		if (string_length(_s) == 1) _s = "0" + _s;
		if (string_length(_d) == 1) _d = "0" + _d;
		if (string_length(_mo) == 1) _mo = "0" + _mo;

		var stringDate="["+_d+"/"+_mo+"/"+_y+" - "+_h+":"+_m+":"+_s+"]"
		//"DATE-ç"+stringDate+"ç-DATE "
		SendMessageToClient(thisClientId,"DATE-ç"+stringDate+"ç-DATE "+"<Server> "+global.thisUserNameGlobal+" joined the room.") //6899 for some reason I don't need to add a line break here???
		}
	}
joined=false
}

if global.debug
{


if keyboard_check_pressed(ord("L"))
{
ReadSimpleData("logs", "chat")	
}
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

date_set_timezone(timezone_utc);

var _h = string(date_get_hour(date_current_datetime()));
var _m = string(date_get_minute(date_current_datetime()));
var _s = string(date_get_second(date_current_datetime()));
var _d = string(date_get_day(date_current_datetime()));
var _mo = string(date_get_month(date_current_datetime()));
var _y = string(date_get_year(date_current_datetime()));

// Add leading zeros for single-digit values
if (string_length(_h) == 1) _h = "0" + _h;
if (string_length(_m) == 1) _m = "0" + _m;
if (string_length(_s) == 1) _s = "0" + _s;
if (string_length(_d) == 1) _d = "0" + _d;
if (string_length(_mo) == 1) _mo = "0" + _mo;

var stringDate="["+_d+"/"+_mo+"/"+_y+" - "+_h+":"+_m+":"+_s+"]"
//"DATE-ç"+stringDate+"ç-DATE "

array_insert(global.chat,0,"DATE-ç"+stringDate+"ç-DATE "+"<"+thisUsername+"> "+filteredMsg)
//array_insert(global.DATEchat,0,stringDate+" "+"<"+thisUsername+"> "+filteredMsg)
oManager.arrayChanged=true


var msgStruct=
{
type				:		"Chat Log"			,
chatmsg00			:		global.chat[00]		,
chatmsg01			:		global.chat[01]		,
chatmsg02			:		global.chat[02]		,
chatmsg03			:		global.chat[03]		,
chatmsg04			:		global.chat[04]		,
chatmsg05			:		global.chat[05]		,
chatmsg06			:		global.chat[06]		,
chatmsg07			:		global.chat[07]		,
chatmsg08			:		global.chat[08]		,
chatmsg09			:		global.chat[09]		,
chatmsg10			:		global.chat[10]		,
chatmsg11			:		global.chat[11]		,
chatmsg12			:		global.chat[12]		,
chatmsg13			:		global.chat[13]		,
chatmsg14			:		global.chat[14]		,
chatmsg15			:		global.chat[15]		,
chatmsg16			:		global.chat[16]		,
chatmsg17			:		global.chat[17]		,
chatmsg18			:		global.chat[18]		,
chatmsg19			:		global.chat[19]		,
chatmsg20			:		global.chat[20]		,
chatmsg21			:		global.chat[21]		,
chatmsg22			:		global.chat[22]		,
chatmsg23			:		global.chat[23]		,
chatmsg24			:		global.chat[24]		,
chatmsg25			:		global.chat[25]		,
chatmsg26			:		global.chat[26]		,
chatmsg27			:		global.chat[27]		,
chatmsg28			:		global.chat[28]		,
chatmsg29			:		global.chat[29]		,
chatmsg30			:		global.chat[30]		,
chatmsg31			:		global.chat[31]		,
chatmsg32			:		global.chat[32]		,
chatmsg33			:		global.chat[33]		,
chatmsg34			:		global.chat[34]		,
chatmsg35			:		global.chat[35]		,
chatmsg36			:		global.chat[36]		,
chatmsg37			:		global.chat[37]		,
chatmsg38			:		global.chat[38]		,
chatmsg39			:		global.chat[39]		,
chatmsg40			:		global.chat[40]		,
chatmsg41			:		global.chat[41]		,
chatmsg42			:		global.chat[42]		,
chatmsg43			:		global.chat[43]		,
chatmsg44			:		global.chat[44]		,
chatmsg45			:		global.chat[45]		,
chatmsg46			:		global.chat[46]		,
chatmsg47			:		global.chat[47]		,
chatmsg48			:		global.chat[48]		,
chatmsg49			:		global.chat[49]		,
chatmsg50			:		global.chat[50]		,
chatmsg51			:		global.chat[51]		,
chatmsg52			:		global.chat[52]		,
chatmsg53			:		global.chat[53]		,
chatmsg54			:		global.chat[54]		,
chatmsg55			:		global.chat[55]		,
chatmsg56			:		global.chat[56]		,
chatmsg57			:		global.chat[57]		,
chatmsg58			:		global.chat[58]		,
chatmsg59			:		global.chat[59]		,
chatmsg60			:		global.chat[60]		,
chatmsg61			:		global.chat[61]		,
chatmsg62			:		global.chat[62]		,
chatmsg63			:		global.chat[63]		,
chatmsg64			:		global.chat[64]		,
chatmsg65			:		global.chat[65]		,
chatmsg66			:		global.chat[66]		,
chatmsg67			:		global.chat[67]		,
chatmsg68			:		global.chat[68]		,
chatmsg69			:		global.chat[69]		,
chatmsg70			:		global.chat[70]		,
chatmsg71			:		global.chat[71]		,
chatmsg72			:		global.chat[72]		,
chatmsg73			:		global.chat[73]		,
chatmsg74			:		global.chat[74]		,
chatmsg75			:		global.chat[75]		,
chatmsg76			:		global.chat[76]		,
chatmsg77			:		global.chat[77]		,
chatmsg78			:		global.chat[78]		,
chatmsg79			:		global.chat[79]		,
chatmsg80			:		global.chat[80]		,
chatmsg81			:		global.chat[81]		,
chatmsg82			:		global.chat[82]		,
chatmsg83			:		global.chat[83]		,
chatmsg84			:		global.chat[84]		,
chatmsg85			:		global.chat[85]		,
chatmsg86			:		global.chat[86]		,
chatmsg87			:		global.chat[87]		,
chatmsg88			:		global.chat[88]		,
chatmsg89			:		global.chat[89]		,
chatmsg90			:		global.chat[90]		,
chatmsg91			:		global.chat[91]		,
chatmsg92			:		global.chat[92]		,
chatmsg93			:		global.chat[93]		,
chatmsg94			:		global.chat[94]		,
chatmsg95			:		global.chat[95]		,
chatmsg96			:		global.chat[96]		,
chatmsg97			:		global.chat[97]		,
chatmsg98			:		global.chat[98]		,
chatmsg99			:		global.chat[99]		,
chatmsg100			:		global.chat[100]	,

}

SetSimpleData("logs", "chat", msgStruct)

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
if global.currentRoom!="none"
{
move_and_collide(_xinput * spd, _yinput * spd, oWall);
}
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
case "sprSunglasses":
textEyes="Sunglasses"
break;
case "sprEyesNeutral":
textEyes="Normal Eyes"
break;
case "sprEyesFocus":
textEyes="Focused Eyes"
break;
case "sprCrewmateEyes":
textEyes="Crewmate Visor"
break;
case "sprEmilioGlasses":
textEyes="Emilio's Glasses"
break;
}

switch (wearingFeet)
{
case "sprEmpty":
textFeet="Barefoot"
break;
case "sprFeetDoge":
textFeet="Lia's Shoes"
break;
case "sprApfelBoots":
textFeet="Apfel's Boots"
break;
case "sprIsBoots":
textFeet="I's Boots"
break;
case "sprPerroShoes":
textFeet="Perro's Shoes"
break;
}

switch (wearingHead)
{
case "sprEmpty":
textHead="No Top"
break;
case "sprBandana":
textHead="Bandana"
break;
case "sprBobHair":
textHead="Bob Hair"
break;
case "sprMediumHair":
textHead="Medium Hair"
break;
case "sprShortHair":
textHead="Short Hair"
break;
case "sprHeadDoge":
textHead="Lia's Hat"
break;
case "sprIsHair":
textHead="I's Hair"
break;
case "sprIsHead":
textHead="I's Head"
break;
case "sprPerroHead":
textHead="Perro's Head"
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
case "sprIsPants":
textLegs="I's Pants"
break;
case "sprPerroLegs":
textLegs="Perro's Pants"
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
case "sprIsPoncho":
textTorso="I's Poncho"
break;
case "sprIsShirt":
textTorso="I's Shirt"
break;
case "sprPerroTorso":
textTorso="Perro's Shirt"
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
case "sprEmilioBeard":
textMouth="Emilio's Goatee"
break;
case "sprMouthSerious":
textMouth="Serious"
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
case "sprHatDross":
textAccessory="Dross' Hat"
break;
case "sprNewsboyHat":
textAccessory="Newsboy Cap"
break;
case "sprIsAcsrFlower":
textAccessory="I's Flower"
break;
case "sprApfelVest":
textAccessory="Apfel's Vest"
break;
case "sprLumberjackBeard":
textAccessory="Lumberjack Beard"
break;
case "sprIsAcsrHat":
textAccessory="I's Hat"
break;
case "sprGloCatLeft":
textAccessory="I's Cat Leftside"
break;
case "sprGloCatRight":
textAccessory="I's Cat Rightside"
break;
case "sprTabbyCatLeft":
textAccessory="Tabby Cat Leftside"
break;
case "sprTabbyCatRight":
textAccessory="Tabby Cat Rightside"
break;
}

image_blend=make_color_rgb(skinR,skinG,skinB)

myIp=global.yourIp

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
received_myIP					:		myIp						,
received_alphaEmote				:		alphaEmote					,
received_Emote					:		emote						,
received_textingBubble			:		textingBubble				,
received_timeoutTimer			:		timeoutTimer				,
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



scrCheckBlacklist(myIp);
/*

//HARDCODED BLACKLIST, don't use
switch (myIp) {
    case "0.0.0.0": scrBan(); break;
}