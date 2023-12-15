ConnectToServer()

scrSetSpriteDefaults();

setUser=global.inputField

thisUsername=""

col[0]=irandom_range(50,200)
col[1]=irandom_range(50,200)
col[2]=irandom_range(50,200)

image_blend=make_color_rgb(col[0],col[1],col[2])

keyboard_string=""
msg=""
filteredMsg=""
global.filteredMsgGlobal=""
global.thisUserNameGlobal=""
blinkingMotherfucker="|"
timer[0]=0

once[0]=true
once[1]=true

hSpd=0
vSpd=0

maxCharacters=90

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
timerSentMessageDelay=0

joined=true

sentMessage=0

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