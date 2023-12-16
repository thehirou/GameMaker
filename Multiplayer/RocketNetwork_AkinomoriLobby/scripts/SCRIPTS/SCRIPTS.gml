enum spr
{
	idleUp,
	idleDown,
	idleRight,
	idleLeft,
	walkUp,
	walkDown,
	walkRight,
	walkLeft
}

/*
For Copying

IdleUp
IdleDown
IdleRight
IdleLeft
WalkUp
WalkDown
WalkRight
WalkLeft

*/

function scrSpriteOnTop(_sprite)
{
	draw_sprite_ext(_sprite,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
}


function scrSwitchPart(_part,_string)
{
//There's clearly a better way and I know how to do it but I just don't give a fuck anymore	
if _string!="sprEmpty"
{
var _IdleUp			="IdleUp"
var _IdleDown		="IdleDown"
var _IdleRight		="IdleRight"
var _IdleLeft		="IdleLeft"
var _WalkUp			="WalkUp"
var _WalkDown		="WalkDown"
var _WalkRight		="WalkRight"
var _WalkLeft		="WalkLeft"
}
else
{
var _IdleUp			=""
var _IdleDown		=""
var _IdleRight		=""
var _IdleLeft		=""
var _WalkUp			=""
var _WalkDown		=""
var _WalkRight		=""
var _WalkLeft		=""
}

switch (_part)
{
case part.eyes:
wearingEyes=_string
//EYES
eyes[spr.idleUp]			=	asset_get_index(_string+string(_IdleUp))		
eyes[spr.idleDown]			=	asset_get_index(_string+string(_IdleDown))	
eyes[spr.idleRight]			=	asset_get_index(_string+string(_IdleRight))	
eyes[spr.idleLeft]			=	asset_get_index(_string+string(_IdleLeft))	
eyes[spr.walkUp]			=	asset_get_index(_string+string(_WalkUp))		
eyes[spr.walkDown]			=	asset_get_index(_string+string(_WalkDown))	
eyes[spr.walkRight]			=	asset_get_index(_string+string(_WalkRight))
eyes[spr.walkLeft]			=	asset_get_index(_string+string(_WalkLeft))	
break;
//////
case part.mouth:
wearingMouth=_string
//MOUTH
mout[spr.idleUp]			=	asset_get_index(_string+string(_IdleUp))		
mout[spr.idleDown]			=	asset_get_index(_string+string(_IdleDown))	
mout[spr.idleRight]			=	asset_get_index(_string+string(_IdleRight))	
mout[spr.idleLeft]			=	asset_get_index(_string+string(_IdleLeft))	
mout[spr.walkUp]			=	asset_get_index(_string+string(_WalkUp))		
mout[spr.walkDown]			=	asset_get_index(_string+string(_WalkDown))	
mout[spr.walkRight]			=	asset_get_index(_string+string(_WalkRight))
mout[spr.walkLeft]			=	asset_get_index(_string+string(_WalkLeft))	
break;
//////
case part.feet:
wearingFeet=_string
//FEET
feet[spr.idleUp]			=	asset_get_index(_string+string(_IdleUp))		
feet[spr.idleDown]			=	asset_get_index(_string+string(_IdleDown))	
feet[spr.idleRight]			=	asset_get_index(_string+string(_IdleRight))	
feet[spr.idleLeft]			=	asset_get_index(_string+string(_IdleLeft))	
feet[spr.walkUp]			=	asset_get_index(_string+string(_WalkUp))		
feet[spr.walkDown]			=	asset_get_index(_string+string(_WalkDown))	
feet[spr.walkRight]			=	asset_get_index(_string+string(_WalkRight))
feet[spr.walkLeft]			=	asset_get_index(_string+string(_WalkLeft))	
break;
//////
case part.legs:
wearingLegs=_string
//LEGS
legs[spr.idleUp]			=	asset_get_index(_string+string(_IdleUp))		
legs[spr.idleDown]			=	asset_get_index(_string+string(_IdleDown))	
legs[spr.idleRight]			=	asset_get_index(_string+string(_IdleRight))	
legs[spr.idleLeft]			=	asset_get_index(_string+string(_IdleLeft))	
legs[spr.walkUp]			=	asset_get_index(_string+string(_WalkUp))		
legs[spr.walkDown]			=	asset_get_index(_string+string(_WalkDown))	
legs[spr.walkRight]			=	asset_get_index(_string+string(_WalkRight))
legs[spr.walkLeft]			=	asset_get_index(_string+string(_WalkLeft))	
break;
//////
case part.torso:
wearingTorso=_string
//TORSO
tors[spr.idleUp]			=	asset_get_index(_string+string(_IdleUp))		
tors[spr.idleDown]			=	asset_get_index(_string+string(_IdleDown))	
tors[spr.idleRight]			=	asset_get_index(_string+string(_IdleRight))	
tors[spr.idleLeft]			=	asset_get_index(_string+string(_IdleLeft))	
tors[spr.walkUp]			=	asset_get_index(_string+string(_WalkUp))		
tors[spr.walkDown]			=	asset_get_index(_string+string(_WalkDown))	
tors[spr.walkRight]			=	asset_get_index(_string+string(_WalkRight))
tors[spr.walkLeft]			=	asset_get_index(_string+string(_WalkLeft))	
break;
//////
case part.head:
wearingHead=_string
//HEAD
head[spr.idleUp]			=	asset_get_index(_string+string(_IdleUp))		
head[spr.idleDown]			=	asset_get_index(_string+string(_IdleDown))	
head[spr.idleRight]			=	asset_get_index(_string+string(_IdleRight))	
head[spr.idleLeft]			=	asset_get_index(_string+string(_IdleLeft))	
head[spr.walkUp]			=	asset_get_index(_string+string(_WalkUp))		
head[spr.walkDown]			=	asset_get_index(_string+string(_WalkDown))	
head[spr.walkRight]			=	asset_get_index(_string+string(_WalkRight))
head[spr.walkLeft]			=	asset_get_index(_string+string(_WalkLeft))	
break;
//////
case part.accessory:
wearingAccessory=_string
//Accessory
acsr[spr.idleUp]			=	asset_get_index(_string+string(_IdleUp))		
acsr[spr.idleDown]			=	asset_get_index(_string+string(_IdleDown))	
acsr[spr.idleRight]			=	asset_get_index(_string+string(_IdleRight))	
acsr[spr.idleLeft]			=	asset_get_index(_string+string(_IdleLeft))	
acsr[spr.walkUp]			=	asset_get_index(_string+string(_WalkUp))		
acsr[spr.walkDown]			=	asset_get_index(_string+string(_WalkDown))	
acsr[spr.walkRight]			=	asset_get_index(_string+string(_WalkRight))
acsr[spr.walkLeft]			=	asset_get_index(_string+string(_WalkLeft))	
break;
//////
}


}


function scrSetSpriteDefaults()
{

//BASE
base[spr.idleUp]			=	sprIdleUp
base[spr.idleDown]			=	sprIdleDown
base[spr.idleRight]			=	sprIdleRight
base[spr.idleLeft]			=	sprIdleLeft
base[spr.walkUp]			=	sprWalkUp
base[spr.walkDown]			=	sprWalkDown
base[spr.walkRight]			=	sprWalkRight
base[spr.walkLeft]			=	sprWalkLeft

//CUSTOMIZABLE SPRITES BELOW

//EYES
eyes[spr.idleUp]			=	sprEyesNeutralIdleUp
eyes[spr.idleDown]			=	sprEyesNeutralIdleDown
eyes[spr.idleRight]			=	sprEyesNeutralIdleRight
eyes[spr.idleLeft]			=	sprEyesNeutralIdleLeft
eyes[spr.walkUp]			=	sprEyesNeutralWalkUp
eyes[spr.walkDown]			=	sprEyesNeutralWalkDown
eyes[spr.walkRight]			=	sprEyesNeutralWalkRight
eyes[spr.walkLeft]			=	sprEyesNeutralWalkLeft

//MOUTH
mout[spr.idleUp]			=	sprMouthSmileIdleUp
mout[spr.idleDown]			=	sprMouthSmileIdleDown
mout[spr.idleRight]			=	sprMouthSmileIdleRight
mout[spr.idleLeft]			=	sprMouthSmileIdleLeft
mout[spr.walkUp]			=	sprMouthSmileWalkUp
mout[spr.walkDown]			=	sprMouthSmileWalkDown
mout[spr.walkRight]			=	sprMouthSmileWalkRight
mout[spr.walkLeft]			=	sprMouthSmileWalkLeft

//FEET
feet[spr.idleUp]			=	sprEmpty
feet[spr.idleDown]			=	sprEmpty
feet[spr.idleRight]			=	sprEmpty
feet[spr.idleLeft]			=	sprEmpty
feet[spr.walkUp]			=	sprEmpty
feet[spr.walkDown]			=	sprEmpty
feet[spr.walkRight]			=	sprEmpty
feet[spr.walkLeft]			=	sprEmpty

//LEGS
legs[spr.idleUp]			=	sprEmpty
legs[spr.idleDown]			=	sprEmpty
legs[spr.idleRight]			=	sprEmpty
legs[spr.idleLeft]			=	sprEmpty
legs[spr.walkUp]			=	sprEmpty
legs[spr.walkDown]			=	sprEmpty
legs[spr.walkRight]			=	sprEmpty
legs[spr.walkLeft]			=	sprEmpty

//TORSO
tors[spr.idleUp]			=	sprEmpty
tors[spr.idleDown]			=	sprEmpty
tors[spr.idleRight]			=	sprEmpty
tors[spr.idleLeft]			=	sprEmpty
tors[spr.walkUp]			=	sprEmpty
tors[spr.walkDown]			=	sprEmpty
tors[spr.walkRight]			=	sprEmpty
tors[spr.walkLeft]			=	sprEmpty

//HEAD
head[spr.idleUp]			=	sprEmpty
head[spr.idleDown]			=	sprEmpty
head[spr.idleRight]			=	sprEmpty
head[spr.idleLeft]			=	sprEmpty
head[spr.walkUp]			=	sprEmpty
head[spr.walkDown]			=	sprEmpty
head[spr.walkRight]			=	sprEmpty
head[spr.walkLeft]			=	sprEmpty


//ACCESORIES
acsr[spr.idleUp]			=	sprEmpty
acsr[spr.idleDown]			=	sprEmpty
acsr[spr.idleRight]			=	sprEmpty
acsr[spr.idleLeft]			=	sprEmpty
acsr[spr.walkUp]			=	sprEmpty
acsr[spr.walkDown]			=	sprEmpty
acsr[spr.walkRight]			=	sprEmpty
acsr[spr.walkLeft]			=	sprEmpty


}


function scrFilter(_MSG)
{

var originalString = _MSG;
var swearWords =
["faggot",
"nigger",
"nigga",
"omori"
];

for (var i = 0; i < array_length(swearWords); i++) {
    originalString = string_replace_all(originalString, swearWords[i], "****");
}

return originalString;

}

function SCRIPTS()
{

}