ConnectToServer()


scrSetSpriteDefaults();

enum part
{
eyes		,
feet		, //usual
head		, //usual
legs		, //usual
mouth		,
torso		, //usual
accessory	, //usual
}


timeoutTimer=0
warningDisconnect=false
warningTimer=0


setUser=global.inputField

thisUsername=""

afkTextingTimer=0
textingBubble=false

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
myIp=global.yourIp
timer[0]=0

kickedBecauseOfDoubleIp=false

once[0]=true
once[1]=true
once[2]=true

hSpd=0
vSpd=0

maxCharacters=90

drawEmote=false
emoteTimer=0
alphaEmote=0
emote=sprEmpty

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

eyesArray=		["sprEyesNeutral","sprEmilioGlasses","sprEyesFocus","sprCrewmateEyes","sprSunglasses","sprEmpty"]
feetArray=		["sprEmpty","sprFeetDoge","sprApfelBoots","sprIsBoots","sprPerroShoes"]
headArray=		["sprEmpty","sprHeadDoge","sprIsHair","sprIsHead","sprPerroHead","sprBandana","sprBobHair","sprMediumHair","sprShortHair"]
legsArray=		["sprEmpty","sprLegsDoge","sprApfelSkirt","sprIsPants","sprPerroLegs"]
mouthArray=		["sprMouthSmile","sprMouthSerious","sprEmilioBeard","sprEmpty"]
torsoArray=		["sprEmpty","sprTorsoDoge","sprApfelShirt","sprIsPoncho","sprIsShirt","sprPerroTorso"]
accessoryArray=	["sprEmpty","sprApfelVest","sprLumberjackBeard","sprIsAcsrHat","sprNewsboyHat",/*"sprHatDross",*/"sprBlumeFlower","sprIsAcsrFlower","sprGloCatLeft","sprGloCatRight","sprTabbyCatLeft","sprTabbyCatRight"]

eyesOption		=0
mouthOption		=0
accessoryOption	=0
headOption		=0
torsoOption		=0
legsOption		=0
feetOption		=0

max_eyesOption		=array_length(eyesArray)		-1
max_mouthOption		=array_length(mouthArray)		-1
max_accessoryOption	=array_length(accessoryArray)	-1
max_headOption		=array_length(headArray)		-1
max_torsoOption		=array_length(torsoArray)		-1
max_legsOption		=array_length(legsArray)		-1
max_feetOption		=array_length(feetArray)	-1

textEyes="Nothing"
textMouth="Nothing"
textAccessory="Nothing"
textHead="Nothing"
textTorso="Nothing"
textLegs="Nothing"
textFeet="Nothing"

wearingEyes="sprEmpty"
wearingMouth="sprEmpty"
wearingAccessory="sprEmpty"
wearingHead="sprEmpty"
wearingTorso="sprEmpty"
wearingLegs="sprEmpty"
wearingFeet="sprEmpty"

scrSwitchPart(part.torso,		torsoArray		[0]);
scrSwitchPart(part.head,		headArray		[0]);
scrSwitchPart(part.legs,		legsArray		[0]);
scrSwitchPart(part.feet,		feetArray		[0]);
scrSwitchPart(part.eyes,		eyesArray		[0]);
scrSwitchPart(part.mouth,		mouthArray		[0]);
scrSwitchPart(part.accessory,	accessoryArray	[0]);

emojiInstance=instance_create_depth(x,y,999,oTemporalObject)
cursorInstance=instance_create_depth(x,y,999,oTemporalObject)

selectedColor=0

skinR=round(255/2)
skinG=round(255/2)
skinB=round(255/2)

image_blend=make_color_rgb(skinR,skinG,skinB)

rgbOutputString="Red: 0"

once[3]=true
customizing=false

