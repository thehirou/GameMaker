ConnectToServer()
global.debug=false
global.nameHeight=70
global.currentRoom="none"
global.disconnectReason="Disconnected (Reason Unknown)"
global.sfxVolume=1
global.peopleConnected=0
global.mainMenuMsg="Loading..."
global.serverFull=false

loadingInstance=instance_create_layer(640,480,layer,oLocalInstance)
loadingInstance.sprite_index=sprLoading

loadingTime=choose(2,3)

maxChatLog=40
global.chat=array_create(maxChatLog,"")

afkMinOpacity=0
afkOpacity=afkMinOpacity
arrayChanged=false
timerToRevert=0

enum state
{
normal,
interacting,
texting,
customizing,
}

global.playerState=state.normal
clickedSomewhere=false

timer[0]=0
timer[1]=0

global.chatLog=""
global.chatDraw=""