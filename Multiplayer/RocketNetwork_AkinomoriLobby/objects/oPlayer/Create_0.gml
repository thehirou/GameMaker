ConnectToServer()

setUser=global.inputField

thisUsername=""

global.mainMenuMsg="Welcome "+string(oPlayer.setUser)+"!\n"+"Press ENTER to join the server."

keyboard_string=""
msg=""
filteredMsg=""

image_xscale=2
image_yscale=2

x=640/2
y=480/2
sprite_index=downIdle
sentMsg=""

afkState=0
timerMsg=0
timerAfk=0
timerEachSecond=0

disconnectCountdown=5*60

playAudioFromOutside=0

spd=2
moving=3

enum movement
{
right,
left,
up,
down
}