/*
parmesan=show_question("Enable Parmesan?") //DEBUG for final build of mockup
borzois=show_question("Enable Borzois?")
*/

show_debug_overlay(true)

var _tex_array = texturegroup_get_textures("BattleAnimations");
for (var i = 0; i < array_length(_tex_array); ++i;)
{
    texture_prefetch(_tex_array[i]);
}

window_set_size(640*2,480*2)
window_center()

parmesan=true
borzois=true

logstring="Perform an action" //this tells you what's happening

turn=0 //current turn

enemyTurn=false
triggerEndTurn=false
endMenu=false //if menus are accesible or not

openWound=false //to-do
ailmentWound=false
physWound=false
burnWound=false

gameover=false

escaped=-1 //1=success //0=failure //-1=in menu value so it doesn't mess up with the timers

escapeRequirement=0 //this goes up everytime you press z when running away

chanceWoundamage=0 //to-do

//these might turn into globals in the future, or just be initialized by globals
lifePoints=5
alchPoints=50 //Also called sanity points

MAXlifePoints=lifePoints
MAXalchPoints=alchPoints

psyched=false //self explanatory (i hope)
berserk=false
option=0 //current option in MAIN menu ↓
optionstring="alchemy" //"alchemy" "info" "flight" "psycheup"
menu="none" //"alchemy" "info" "flight" "psycheup"

optionAlchemy=0 //current option in alchemy/combo menu
selectorVertPosition=0 //debug for draw gui ">"

defaultAlchemy=["fire","earth","air","water"];
comboAlchemy = ["fire", "earth", "air", "water"]; //alchemy menu that appears if you're psyched up (looks the same but if you have parmesan or borzois in your party they get pushed into the array for the menu="alchemy")
maxAlchemyOptions = array_length(defaultAlchemy) -1;

if (parmesan) {
    array_push(comboAlchemy, "parmesan");
}

if (borzois) {
    array_push(comboAlchemy, "borzois"); //NOT BORZOI; -> BORZOIS
}


sprite_index=blank
animation=blank
animationEnd=false

//All of this should be on a script for the final version
enemyAI="aiRandom"
enemyInfo="This enemy looks watery." //text that appears when info'ing
enemyWeak="air"
enemyLifePoints=5

//qte test
qtePos=0
qteSuccess=false

//Timers!!!!!!!! :) I fucking love timers
timer[0]=0 //delay when checking the alchemy menu
timer[1]=0 //delay for battle ending if flight
timer[2]=0 //how long do you have before your running away is successful
timer[3]=0 //enemy turn delay miss flight
timer[4]=0 //enemy turn delay psyche
timer[5]=0 //timer after using alchemy
timer[6]=0 //timer after info'ing enemy
timer[7]=0 //delay for checking alchemy if psyched
timer[8]=0 //delay for selecting combo alchemy (if psyched)



//enemyTimers!!
enemyTimer[0]=0
enemyTimer[1]=0
enemyTimer[2]=0
enemyTimer[3]=0
enemyTimer[4]=0
enemyTimer[5]=0
enemyTimer[6]=0
enemyTimer[7]=0
enemyTimer[8]=0