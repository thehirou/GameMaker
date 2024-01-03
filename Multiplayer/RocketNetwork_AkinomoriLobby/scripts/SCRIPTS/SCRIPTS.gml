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

function scrCheckBlacklist(ip_to_check)
{

var blacklist_json = global.jsonBlacklist; // Your JSON data

// Parse JSON string to a data structure
var blacklist_data = json_parse(blacklist_json);

var isIpInBlacklist = false;

// Check if the provided IP is in the blacklist
for (var i = 0; i < array_length(blacklist_data.blacklist); i++) {
    if (blacklist_data.blacklist[i] == ip_to_check) {
        // IP is in the blacklist, set flag to true and exit the loop
        isIpInBlacklist = true;
        break;
    }
}

if (isIpInBlacklist) {
    // IP is in the blacklist, execute the ban script
    scrBan();
} else {
    // IP is not in the blacklist, do something else or nothing
    //show_message("IP is not in the blacklist. You are safe!");
}
}

function scrBan()
{
DisconnectFromServer()
show_message("You're banned!")
}

function scrLayering(_var)
{
	if oPlayer.y>_var
	{
	depth=oPlayer.depth+1
	}else{depth=oPlayer.depth-1}
	
	if instance_exists(oOtherPlayer)
	{
		if oOtherPlayer.y>_var
		{
		depth=oOtherPlayer.depth+1
		}else{depth=oOtherPlayer.depth-1}
	}
}

function scrEmojiCheck()
{
switch (msg)
{
//case ":xxxxx:":				scrEmote(sprEmote);					break;

//Secrets (Unique)
case ":broly:":				scrEmote(sprEmoteBroly);				break;
case ":goku:":				scrEmote(sprEmoteGoku);					break;

//16-Dec-2023
case ":zzz:":				scrEmote(sprEmoteZzz);					break;
case ":zany:":				scrEmote(sprEmoteZany);					break;
case ":yum:":				scrEmote(sprEmoteYum);					break;
case ":youtube:":			scrEmote(sprEmoteYoutube);					break;
case ":worried:":			scrEmote(sprEmoteWorried);					break;
case ":world:":				scrEmote(sprEmoteWorld);					break;
case ":wink:":				scrEmote(sprEmoteWink);					break;
case ":windows:":			scrEmote(sprEmoteWindows);					break;
case ":wifi:":				scrEmote(sprEmoteWifi);					break;
case ":weezer:":			scrEmote(sprEmoteWeezer);					break;
case ":waving:":			scrEmote(sprEmoteWave);					break;
case ":vriska:":			scrEmote(sprEmoteVriska);					break;
case ":typing:":			scrEmote(sprEmoteTyping);					break;
case ":twitter:":			scrEmote(sprEmoteTwitter);					break;
case ":trans:":				scrEmote(sprEmoteTrans);					break;
case ":tongue:":			scrEmote(sprEmoteTongue);					break;
case ":tomato:":			scrEmote(sprEmoteTomato);					break;
case ":thumbs_up:":			scrEmote(sprEmoteThumbsUp);					break;
case ":thumbs_down:":		scrEmote(sprEmoteThumbDown);					break;
case ":thinking:":			scrEmote(sprEmoteThinking);					break;
case ":think_bubble:":		scrEmote(sprEmoteThinkBubble);					break;
case ":terezi:":			scrEmote(sprEmoteTerezi);					break;
case ":tear:":				scrEmote(sprEmoteTear);					break;
case ":tavros:":			scrEmote(sprEmoteTavros);					break;
case ":taco:":				scrEmote(sprEmoteTaco);					break;
case ":joyful:":			scrEmote(sprEmoteSuperJoy);					break;
case ":sunglasses:":		scrEmote(sprEmoteSunglasses);					break;
case ":moon:":				scrEmote(sprEmoteMoon);					break;
case ":sun:":				scrEmote(sprEmoteSun);					break;
case ":strawberry:":		scrEmote(sprEmoteStrawberry);					break;
case ":stops:":				scrEmote(sprEmoteStop);					break;
case ":spade:":				scrEmote(sprEmoteSpade);					break;
case ":sos:":				scrEmote(sprEmoteSos);					break;
case ":sollux:":			scrEmote(sprEmoteSollux);					break;
case ":sob:":				scrEmote(sprEmoteSob);					break;
case ":smoke:":				scrEmote(sprEmoteSmoke);					break;
case ":cat_smirk:":			scrEmote(sprEmoteSmirkCat);					break;
case ":smile:":				scrEmote(sprEmoteSmile);					break;
case ":smh:":				scrEmote(sprEmoteSmh);					break;
case ":skull:":				scrEmote(sprEmoteSkull);					break;
case ":silly:":				scrEmote(sprEmoteSilly);					break;
case ":backwards:":			scrEmote(sprEmoteSideways);					break;
case ":shush:":				scrEmote(sprEmoteShush);					break;
case ":serious:":			scrEmote(sprEmoteSerious);					break;
case ":scared:":			scrEmote(sprEmoteScared);					break;
case ":cat_scared:":		scrEmote(sprEmoteScareCat);					break;
case ":save:":				scrEmote(sprEmoteSaving);					break;
case ":salute:":			scrEmote(sprEmoteSalute);					break;
case ":sad:":				scrEmote(sprEmoteSad);					break;
case ":retweet:":			scrEmote(sprEmoteRetweet);					break;
case ":rat_small:":			scrEmote(sprEmoteRatSmall);					break;
case ":rat:":				scrEmote(sprEmoteRat);					break;
case ":hirou:":				scrEmote(sprEmoteRat);					break;
case ":qr:":				scrEmote(sprEmoteQr);					break;
case ":fist:":				scrEmote(sprEmotePunch);					break;
case ":puke:":				scrEmote(sprEmotePuke);					break;
case ":present:":			scrEmote(sprEmotePresent);					break;
case ":finger_up:":			scrEmote(sprEmotePointing);					break;
case ":pleading:":			scrEmote(sprEmotePleading);					break;
case ":gratitude:":			scrEmote(sprEmotePleadCry);					break;
case ":pizza:":				scrEmote(sprEmotePizza);					break;
case ":pinata:":			scrEmote(sprEmotePinata);					break;
case ":piano:":				scrEmote(sprEmotePiano);					break;
case ":pfft:":				scrEmote(sprEmotePfft);					break;
case ":pensive:":			scrEmote(sprEmotePensive);					break;
case ":peace_sign:":		scrEmote(sprEmotePeaceSign);					break;
case ":peace:":				scrEmote(sprEmotePeace);					break;
case ":open_mouth:":		scrEmote(sprEmoteOpenMouth);					break;
case ":ooh:":				scrEmote(sprEmoteOoh);					break;
case ":okay:":				scrEmote(sprEmoteOkay);					break;
case ":no_reaction:":		scrEmote(sprEmoteNoReaction);					break;
case ":noodles:":			scrEmote(sprEmoteNoodles);					break;
case ":neutral:":			scrEmote(sprEmoteNeutral);					break;
case ":nerd:":				scrEmote(sprEmoteNerd);					break;
case ":nepeta:":			scrEmote(sprEmoteNepeta);					break;
case ":mute:":				scrEmote(sprEmoteMute);					break;
case ":mouse:":				scrEmote(sprEmoteMouse);					break;
case ":mindblown:":			scrEmote(sprEmoteMindBlown);					break;
case ":middle_finger:":		scrEmote(sprEmoteMiddleFinger);					break;
case ":melt:":				scrEmote(sprEmoteMelt);					break;
case ":mac:":				scrEmote(sprEmoteMac);					break;
case ":lipbite:":			scrEmote(sprEmoteLipBite);					break;
case ":lgbt:":				scrEmote(sprEmoteLgtb);					break;
case ":cat_kiss:":			scrEmote(sprEmoteKissCat);					break;
case ":kiss_blow:":			scrEmote(sprEmoteKissBlow);					break;
case ":kiss:":				scrEmote(sprEmoteKiss);					break;
case ":kebab:":				scrEmote(sprEmoteKebab);					break;
case ":karkat:":			scrEmote(sprEmoteKarkat);					break;
case ":kanaya:":			scrEmote(sprEmoteKanaya);					break;
case ":cat_joy:":			scrEmote(sprEmoteJoyCat);					break;
case ":joy:":				scrEmote(sprEmoteJoy);				break;
case ":internet_explorer:":	scrEmote(sprEmoteInternetExplorer);					break;
case ":internet:":			scrEmote(sprEmoteInternet);					break;
case ":swear:":				scrEmote(sprEmoteInsult);					break;
case ":icecream:":			scrEmote(sprEmoteIceCream);					break;
case ":ice_face:":			scrEmote(sprEmoteIce);					break;
case ":hundred:":			scrEmote(sprEmoteHundred);					break;
case ":huh:":				scrEmote(sprEmoteHuh);					break;
case ":hot_face:":			scrEmote(sprEmoteHot);					break;
case ":horse:":				scrEmote(sprEmoteHorse);					break;
case ":heart_sparks:":		scrEmote(sprEmoteHeartSpark);					break;
case ":heartbreak:":		scrEmote(sprEmoteHeartbreak);					break;
case ":heart:":				scrEmote(sprEmoteHeart);					break;
case ":happywink:":			scrEmote(sprEmoteHappyWink);					break;
case ":cat_happy:":			scrEmote(sprEmoteHappyCat);					break;
case ":halloween:":			scrEmote(sprEmoteHalloween);					break;
case ":groucho:":			scrEmote(sprEmoteGroucho);					break;
case ":grin:":				scrEmote(sprEmoteGrin);					break;
case ":goat:":				scrEmote(sprEmoteGoat);					break; 
case ":mantana:":			scrEmote(sprEmoteGoat);					break; //repeated (secret)
case ":gamzee:":			scrEmote(sprEmoteGamzee);					break;
case ":frisk:":				scrEmote(sprEmoteFrisk);					break;
case ":fox:":				scrEmote(sprEmoteFox);					break;
case ":flustered:":			scrEmote(sprEmoteFlustered);					break;
case ":flushed:":			scrEmote(sprEmoteFlushed);					break;
case ":flower:":			scrEmote(sprEmoteFlower);					break;
case ":flash:":				scrEmote(sprEmoteFlash);					break;
case ":firefox:":			scrEmote(sprEmoteFirefox);					break;
case ":fire:":				scrEmote(sprEmoteFire);					break;
case ":feferi:":			scrEmote(sprEmoteFeferi);					break;
case ":eridan:":			scrEmote(sprEmoteEridan);					break;
case ":equius:":			scrEmote(sprEmoteEquius);					break;
case ":edge:":				scrEmote(sprEmoteEdge);					break;
case ":drool:":				scrEmote(sprEmoteDrooling);					break;
case ":dog:":				scrEmote(sprEmoteDog);					break;
case ":disappointed:":		scrEmote(sprEmoteDisapointed);					break;
case ":diamond:":			scrEmote(sprEmoteDiamond);					break;
case ":cursor:":			scrEmote(sprEmoteCursor);					break;
case ":cry:":				scrEmote(sprEmoteCry);					break;
case ":cowboy:":			scrEmote(sprEmoteCowboy);					break;
case ":cookie:":			scrEmote(sprEmoteCookie);					break;
case ":confused:":			scrEmote(sprEmoteConfused);					break;
case ":clown:":				scrEmote(sprEmoteClown);					break;
case ":clover:":			scrEmote(sprEmoteClover);					break;
case ":chrome:":			scrEmote(sprEmoteChrome);					break;
case ":xmas:":				scrEmote(sprEmoteChristmas);					break;
case ":chocolate:":			scrEmote(sprEmoteChocolate);					break;
case ":cherry:":			scrEmote(sprEmoteCherry);					break;
case ":cheese:":			scrEmote(sprEmoteCheese);					break;
case ":cat:":				scrEmote(sprEmoteCat);					break;
case ":cap:":				scrEmote(sprEmoteCap);					break;
case ":camera:":			scrEmote(sprEmoteCamera);					break;
case ":slice_of_cake:":		scrEmote(sprEmoteCake);					break;
case ":bubbles:":			scrEmote(sprEmoteBubbles);					break;
case ":bored:":				scrEmote(sprEmoteBoring);					break;
case ":cake:":				scrEmote(sprEmoteBirthdayCake);					break;
case ":audio:":				scrEmote(sprEmoteAudio);					break;
case ":astonished:":		scrEmote(sprEmoteAtonished);					break;
case ":asdf:":				scrEmote(sprEmoteAsdf);					break;
case ":aradia:":			scrEmote(sprEmoteAradia);					break;
case ":apple:":				scrEmote(sprEmoteApple);					break;
case ":angry:":				scrEmote(sprEmoteAngry);					break;
case ":8ball:":				scrEmote(sprEmote8Ball);					break;

				
default:
//do nothing
break;
}
}

function scrEmote(_sprite)
{
/*
if !instance_exists(emojiInstance){emojiInstance=instance_create_depth(x,y-sprite_height+16,depth,oMyEntity, {type : entity.emoji, displayIcon : _sprite})}
if instance_exists(emojiInstance)
{
if instance_number(emojiInstance)>=1
	{
	emojiInstance.timer[0]=0
	}
emojiInstance.displayIcon=_sprite
}
	*/
if drawEmote=false
	{
		drawEmote=true
		emote=_sprite
	}
else
	{
		drawEmote=true
		emoteTimer=0
		emote=_sprite	
	}
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
[
"faggot",
"nigger",
"nigga",
"whore",
"retard",
"sex",
"omori",
"DATE-ç",
"ç-DATE",
];

for (var i = 0; i < array_length(swearWords); i++) {
    originalString = string_replace_all(originalString, swearWords[i], "****");
}

return originalString;

}

function SCRIPTS()
{

}