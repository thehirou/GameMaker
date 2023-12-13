ConnectToServer()
global.debug=false
global.nameHeight=70
global.currentRoom="none"
global.disconnectReason="Disconnected (Reason Unknown)"
global.sfxVolume=1
global.peopleConnected=0
global.mainMenuMsg="Loading..."

enum state
{
normal,
interacting,
texting
}

global.playerState=state.normal
clickedSomewhere=false

timer[0]=0
timer[1]=0

global.chatLog=""
global.chatDraw=""