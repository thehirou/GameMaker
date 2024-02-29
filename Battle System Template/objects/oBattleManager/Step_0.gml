if keyboard_check_pressed(ord("R")){game_restart()}

if berserk=false and menu="none" and endMenu=false
{
if keyboard_check_pressed(vk_up){option--}
if keyboard_check_pressed(vk_down){option++}
}

if berserk=false and endMenu=false //Option navigator limiter
{
	if menu="alchemy" or menu="combo"
	{
		if optionAlchemy < maxAlchemyOptions && optionAlchemy > 0 {
		    if keyboard_check_pressed(vk_up) {
		        optionAlchemy--;
		    }
    
		    if keyboard_check_pressed(vk_down) {
		        optionAlchemy++;
		    }
		} else if optionAlchemy == 0 {
		    if keyboard_check_pressed(vk_down) {
		        optionAlchemy++;
		    }
		} else if optionAlchemy == maxAlchemyOptions {
		    if keyboard_check_pressed(vk_up) {
		        optionAlchemy--;
		    }
		}
	}
}

switch (option) { //Translates selected option to a string
    case 0:
        optionstring="alchemy"
        break;
    case 1:
        optionstring="psycheup"
        break;
    case 2:
        optionstring="info"
        break;
    case 3:
        optionstring="flight"
        break;
    default:
        // code here
        break;
}

selectorVertPosition = optionAlchemy * 20; //DEBUG: Shows an arrow indicating which element you're selecting

//show_debug_message(comboAlchemy[optionAlchemy])

if keyboard_check_pressed(ord("Z")){menu=optionstring} //Menu changes to whatever you had selected

switch (menu) {
    case "flight":
        endMenu=true //endMenu=true directly means that the menu doesn't have submenus and the action is instant
        break;
    case "info":
        endMenu=true //This one might develop submenus since there's the option to talk to the foes
        break;
    case "psycheup":
		if endMenu=false
		{
			if psyched=false //If player is already psyched up don't let them psyche up
			{
	        endMenu=true
			}
			else{menu="none"; logstring="Apfel is already psyched up!"}
		}
        break;
		//case alchemy is managed separatedly since it has multiple submenus
    default:
        //show_debug_message("error in switch menu")
        break;
}

if menu!="none" and keyboard_check_pressed(ord("X")) and endMenu=false //If you want to go back to menu "none" from, mainly, the "alchemy" and "combo" submenus
{
optionAlchemy=0 //Resets pointer position
menu="none"

// Loop through the timer array and reset each timer to 0
var timerlength = array_length(timer);
for (var i = 0; i < timerlength; i++) {
    timer[i] = 0;
}
}

if menu="alchemy" and psyched=false and endMenu=false //Show normal alchemy menu, without combos or companion attacks
{
	timer[0]++
	if timer[0]>1 //2 frame delay to check
	{
		if keyboard_check_pressed(ord("Z")){endMenu=true} //If pressed again, option is selected and all menus are disabled, endMenu basically means, action starts
	}
}



if menu="alchemy" and psyched=true 
{
	
	{
		timer[7]++

		if timer[7]>1 //2 frame delay to check key press
		{
			if keyboard_check_pressed(ord("Z"))
			{
				if comboAlchemy[optionAlchemy]!="parmesan" and comboAlchemy[optionAlchemy]!="borzois" 
				{
				menu="combo"
				logstring="Select another alchemy to combo"
				}else{endMenu=true;}//Since companion attacks can't be mixed with combo alchemy, if you select a companion attack instead of mixing alchemy it will just skip over (You need to be psyched up to use companion attacks)		
			}
		}
	}
}

if menu="combo" and psyched=true
{
timer[8]++

if timer[8]<2
{
optionAlchemy=0
}

if timer[8]>1
{
if keyboard_check_pressed(ord("Z")){endMenu=true} //Confirms final mixing alchemy action and ends menu, psyching up level is set to 0 in the draw gui window
}
}

if endMenu=true //If action was finished selecting
{
	switch (menu) { //check which action was selected and perform all the things they are supposed to do
	    case "flight":
			
			timer[2]++
			
			if timer[2]<5*60
			{
			if keyboard_check_pressed(ord("Z")){escapeRequirement++}
	        logstring="Press Z to escape!! "+string(escapeRequirement)+"/20" //FF7 style running away mechanic
			}
			
			if escapeRequirement>=20 and timer[2]<5*60 //6899 make each turn generate a random number that gets added up to the escapeRequirement
			{
		        logstring="Apfel escaped from the battle!"
				escaped=1
			}
			
			if timer[2]>5*60 and escaped!=1
			{
				logstring="Apfel didn't manage to escape from the battle!"
				escaped=0
			}
	        break;
		
		case "psycheup":
			psyched=true
			logstring="Apfel psyched up!" //usually where logstrings variables are, is where the code that should manage the camera position and animations should be executed. `Show, don't tell.`
			timer[4]++
			if timer[4]>2*60{enemyTurn=true}
		break;
		
		case "info": //6899 this might need to be expanded
			logstring=enemyInfo
			timer[6]++
			if timer[6]>2*60
			{
			timer[6]=0
			enemyTurn=true	
			}
		break;
		
	    default:
	        // Skibidi Toilet
	        break;
	}
}

if menu="flight" //This only checks what the last value for menu was, in this case if it was flight, then, uh, do this?
{
	if escaped=1 //1=success //0=failure //-1=in menu value so it doesn't mess up with the timers
	{
		timer[1]++
		if timer[1]>3*60
		{
		logstring="Battle ended, restarting preview in 4 seconds." //debug temporal
		}
		if timer[1]>(3+4)*60
		{
		game_restart() //debug
		}
	}

	if escaped=0 //this makes you lose a turn and the enemy starts doing shit
	{
	timer[3]++
	if timer[3]>2*60{enemyTurn=true}
	}
}

if enemyTurn=true //This is where all the code for the enemy "minigame" is supposed to be, depending on enemy they'll have different scripts probably but this is a mockup
{
/*
TODO HERE:
Lose life points
Lose sanity points
Get wounded
Q.T.E. from enemy
Counterattack
Defend
Game Over'ing

*/
menu="none"
escaped=-1

// Loop through the array and reset each element to 0
var timerlength = array_length(timer); //6899 I should initialize enemyTimers for enemyTurn=true if i'm resetting ALL normal timers here...
for (var i = 0; i < timerlength; i++) {
    timer[i] = 0;
}

logstring="Enemy turn"	
if keyboard_check_pressed(ord("M")) //DEBUG: Fast forward enemy turn
{
	logstring="Perform an action." 
	enemyTurn=false; turn++; menu="none"; endMenu=false; option=0; optionAlchemy=0; //Initialization
	
}
}