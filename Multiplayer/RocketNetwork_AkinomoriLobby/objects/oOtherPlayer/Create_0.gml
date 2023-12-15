clientId = -1;
/*initially set to -1
updates later automatically as other players 
in this room are created 
DO NOT TAMPER
*/
sharedProperties = -1 
entities = {}
oldE = {}
alarm[0]=10;

/*
Room id of this instance of other player
DO NOT TAMPER
*/
roomId = -1

//add your personal variables under this line


//JOIN
audio_play_sound(sndJoin,1,false,global.sfxVolume)

scrSetSpriteDefaults()

//VARIABLES

moveRight	=	false
moveLeft	=	false
moveDown	=	false
moveUp		=	false

moving=movement.down

receivedMsg=""
receivedAfkState=0
receivedSendMsgAudio=0
receivedDisconnectCountdown=5*60
playerUsername=""
chatLogMsg=""

getMsg=false

once[0]=true
msgConfirmation=0