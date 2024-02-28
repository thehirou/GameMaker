/*
parmesan=show_question("Enable Parmesan?")
borzois=show_question("Enable Borzois?")
*/
window_set_size(640*2,480*2)

parmesan=false
borzois=false

logstring="Perform an action"

turn=0

enemyTurn=false
endMenu=false

openWound=false
ailmentWound=false
physWound=false
burnWound=false

gameover=false

escaped=-1

escapeRequirement=0

chanceWoundamage=0

lifePoints=5
alchPoints=50 //Also sanity points

MAXlifePoints=5
MAXalchPoints=50 //Also sanity points

psyched=false
berserk=false
option=0
optionstring="alchemy" //"alchemy" "info" "flight" "psycheup"
menu="none" //"alchemy" "info" "flight" "psycheup"

optionAlchemy=0
selectorVertPosition=0

defaultAlchemy=["fire","earth","air","water"];

comboAlchemy = ["fire", "earth", "air", "water"]; //unused?

if (parmesan) {
    array_push(comboAlchemy, "parmesan");
}

if (borzois) {
    array_push(comboAlchemy, "borzoi");
}



//All of this should be on a script for the final version
enemyAI="aiRandom"
enemyInfo="This enemy looks watery."
enemyWeak="air"
enemyLifePoints=5

//Timers
timer[0]=0 //delay when checking the alchemy menu
timer[1]=0 //delay for battle ending if flight
timer[2]=0 //how long you have to press to run away from battle
timer[3]=0 //enemy turn delay miss flight
timer[4]=0 //enemy turn delay psyche
timer[5]=0 //timer after using alchemy
timer[6]=0 //timer after info'ing enemy
timer[7]=0 //delay for checking alchemy if psyched
timer[8]=0 //delay for selecting combo alchemy (if psyched)