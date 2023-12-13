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


//Multiplayer
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


