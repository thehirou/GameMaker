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
once[2]=true

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

eyesArray=		["sprEyesNeutral","sprEmpty"]
feetArray=		["sprEmpty","sprFeetDoge","sprApfelBoots"]
headArray=		["sprEmpty","sprHeadDoge"]
legsArray=		["sprEmpty","sprLegsDoge","sprApfelSkirt"]
mouthArray=		["sprMouthSmile","sprEmpty"]
torsoArray=		["sprEmpty","sprTorsoDoge","sprApfelShirt"]
accessoryArray=	["sprEmpty","sprApfelVest","sprBlumeFlower"]

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

customizing=false

