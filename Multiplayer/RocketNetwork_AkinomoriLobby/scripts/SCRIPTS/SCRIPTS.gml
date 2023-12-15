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