ConnectToServer()
global.debug=false
test=false

global.nameHeight=70
global.currentRoom="none"
global.disconnectReason="You got disconnected!"
global.sfxVolume=1
global.musicVolume=1
global.peopleConnected=0
global.mainMenuMsg="Loading..."
global.serverFull=false

global.lastCheck=9999999 //user id for kicking
global.lastCheckUser="null" //user id for kicking

loadingInstance=instance_create_layer(640,480,layer,oLocalInstance)
loadingInstance.sprite_index=sprLoading

loadingTime=choose(2,3)

maxChatLog=40
global.chat=array_create(maxChatLog,"")

playerUsernames=array_create(1,"")
addUserToTheList=""

afkMinOpacity=0
afkOpacity=afkMinOpacity
arrayChanged=false
timerToRevert=0

settings=false

optValue1=100
optValue2=100
optValue3="ON"

showChat=true
draw_showChat=true

chatOpacity=1

opt1="Music Volume:\n"+string(optValue1)+"%"
opt2="SFX Volume:\n"+string(optValue2)+"%"
opt3="Chat:\n"+optValue3



enum state
{
normal,
interacting,
texting,
customizing,
settings
}

global.playerState=state.normal
clickedSomewhere=false

timer[0]=0
timer[1]=0

global.chatLog=""
global.chatDraw=""