/// @description Put your other player code here
try{
if(sharedProperties!=-1){
var SP = json_parse(sharedProperties)

/*
This is every instance of another player in the room you are in
You can use the key-value pairs in shared properties
to do stuff here. For starters, try updating
x = SP._x
y = SP._y
or whatever you want to update in any way from
your sharedProperties
*/



//Step
image_xscale=2
image_yscale=2
depth=-y
scrLayering(y);

//Multiplayer
otherPlayerIP=string(SP.received_myIP)
x = real(SP._x)
y = real(SP._y)
sprite_index = real(SP._spr)
var name = SP._name 
playerUsername=SP.setUsername
receivedMsg=SP._msg
receivedAfkState=real(SP._afkState)
receivedDisconnectCountdown=real(SP._afkCountdown)
receivedSendMsgAudio=real(SP._sendMsgAudio)
chatLogMsg=SP.receivedChatLog
msgConfirmation=SP._sentMessage
other_alphaEmote=SP.received_alphaEmote
other_Emote=SP.received_Emote
other_textingBubble=SP.received_textingBubble
personalTimeOutTimer=SP.received_timeoutTimer


if anotherCheckPersonalTimeout=personalTimeOutTimer
{
oPlayer.warningDisconnect=true	
}else{oPlayer.warningDisconnect=false}


//depth=SP.received_depth


moving					   =	SP.received_moving					
moveRight				   =	SP.received_moveRight				
moveLeft				   =	SP.received_moveLeft				
moveUp					   =	SP.received_moveUp					
moveDown				   =	SP.received_moveDown				
image_blend				   =	SP.received_image_blend							

//OPTIMIZE LATER THIS IS FUCKING HORRENDOUS 6899

eyes[spr.idleUp]		   =	SP.received_eyesIsprIidleUp	
eyes[spr.idleDown]		   =	SP.received_eyesIsprIidleDown	
eyes[spr.idleRight]		   =	SP.received_eyesIsprIidleRight
eyes[spr.idleLeft]		   =	SP.received_eyesIsprIidleLeft	
eyes[spr.walkUp]		   =	SP.received_eyesIsprIwalkUp	
eyes[spr.walkDown]		   =	SP.received_eyesIsprIwalkDown	
eyes[spr.walkRight]		   =	SP.received_eyesIsprIwalkRight
eyes[spr.walkLeft]		   =	SP.received_eyesIsprIwalkLeft	
mout[spr.idleUp]		   =	SP.received_moutIsprIidleUp	
mout[spr.idleDown]		   =	SP.received_moutIsprIidleDown	
mout[spr.idleRight]		   =	SP.received_moutIsprIidleRight
mout[spr.idleLeft]		   =	SP.received_moutIsprIidleLeft	
mout[spr.walkUp]		   =	SP.received_moutIsprIwalkUp		
mout[spr.walkDown]		   =	SP.received_moutIsprIwalkDown	
mout[spr.walkRight]		   =	SP.received_moutIsprIwalkRight
mout[spr.walkLeft]		   =	SP.received_moutIsprIwalkLeft	
feet[spr.idleUp]		   =	SP.received_feetIsprIidleUp	
feet[spr.idleDown]		   =	SP.received_feetIsprIidleDown	
feet[spr.idleRight]		   =	SP.received_feetIsprIidleRight
feet[spr.idleLeft]		   =	SP.received_feetIsprIidleLeft
feet[spr.walkUp]		   =	SP.received_feetIsprIwalkUp	
feet[spr.walkDown]		   =	SP.received_feetIsprIwalkDown	
feet[spr.walkRight]		   =	SP.received_feetIsprIwalkRight
feet[spr.walkLeft]		   =	SP.received_feetIsprIwalkLeft	
legs[spr.idleUp]		   =	SP.received_legsIsprIidleUp	
legs[spr.idleDown]		   =	SP.received_legsIsprIidleDown		
legs[spr.idleRight]		   =	SP.received_legsIsprIidleRight	
legs[spr.idleLeft]		   =	SP.received_legsIsprIidleLeft		
legs[spr.walkUp]		   =	SP.received_legsIsprIwalkUp		
legs[spr.walkDown]		   =	SP.received_legsIsprIwalkDown		
legs[spr.walkRight]		   =	SP.received_legsIsprIwalkRight	
legs[spr.walkLeft]		   =	SP.received_legsIsprIwalkLeft		
tors[spr.idleUp]		   =	SP.received_torsIsprIidleUp		
tors[spr.idleDown]		   =	SP.received_torsIsprIidleDown		
tors[spr.idleRight]		   =	SP.received_torsIsprIidleRight	
tors[spr.idleLeft]		   =	SP.received_torsIsprIidleLeft
tors[spr.walkUp]		   =	SP.received_torsIsprIwalkUp		
tors[spr.walkDown]		   =	SP.received_torsIsprIwalkDown		
tors[spr.walkRight]		   =	SP.received_torsIsprIwalkRight
tors[spr.walkLeft]		   =	SP.received_torsIsprIwalkLeft		
head[spr.idleUp]		   =	SP.received_headIsprIidleUp	
head[spr.idleDown]		   =	SP.received_headIsprIidleDown		
head[spr.idleRight]		   =	SP.received_headIsprIidleRight
head[spr.idleLeft]		   =	SP.received_headIsprIidleLeft		
head[spr.walkUp]		   =	SP.received_headIsprIwalkUp	
head[spr.walkDown]		   =	SP.received_headIsprIwalkDown		
head[spr.walkRight]		   =	SP.received_headIsprIwalkRight
head[spr.walkLeft]		   =	SP.received_headIsprIwalkLeft		
acsr[spr.idleUp]		   =	SP.received_acsrIsprIidleUp		
acsr[spr.idleDown]		   =	SP.received_acsrIsprIidleDown			
acsr[spr.idleRight]		   =	SP.received_acsrIsprIidleRight		
acsr[spr.idleLeft]		   =	SP.received_acsrIsprIidleLeft			
acsr[spr.walkUp]		   =	SP.received_acsrIsprIwalkUp		
acsr[spr.walkDown]		   =	SP.received_acsrIsprIwalkDown			
acsr[spr.walkRight]		   =	SP.received_acsrIsprIwalkRight		
acsr[spr.walkLeft]		   =	SP.received_acsrIsprIwalkLeft		









if receivedSendMsgAudio=1 and distance_to_object(oPlayer)<480/2
{
audio_play_sound(sndGetMessage,1,false,global.sfxVolume,0,1)
}

/*
if msgConfirmation=1
{
	if once[0]=true
	{
	global.chatLog+="<"+playerUsername+"> "+chatLogMsg+"\n"	
	once[0]=false
	}
}else{once[0]=true}


*/









//DO NOT PUT YOUR CODE AFTER THIS LINE
}
}catch(e){

	show_debug_message("Error in oOtherPlayer Step. This can be temporary but if it keeps repeating, check your code!")
	show_debug_message(e)
}


