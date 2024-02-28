if keyboard_check_pressed(ord("R")){game_restart()}

if berserk=false and menu="none" and endMenu=false
{
if keyboard_check_pressed(vk_up){option--}
if keyboard_check_pressed(vk_down){option++}
}

if berserk=false and menu="alchemy" and endMenu=false
{
if keyboard_check_pressed(vk_up){optionAlchemy--}
if keyboard_check_pressed(vk_down){optionAlchemy++}
}

switch (option) {
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

selectorVertPosition = optionAlchemy * 20;

if keyboard_check_pressed(ord("Z")){menu=optionstring}

switch (menu) {
    case "flight":
        endMenu=true
        break;
    case "info":
        endMenu=true
        break;
    case "psycheup":
        endMenu=true
        break;
    default:
        //show_debug_message("error in switch menu")
        break;
}

if menu!="none" and keyboard_check_pressed(ord("X")) and endMenu=false
{
timer[0]=0
optionAlchemy=0
menu="none"	
}

if menu="alchemy" and psyched=false
{
	timer[0]++
	if timer[0]>1 //2 frame delay to check
	{
		if keyboard_check_pressed(ord("Z")){endMenu=true}
	}
}

if menu="alchemy" and psyched=true
{
if keyboard_check_pressed(ord("Z")){menu="combo"}
}

if menu="combo" and psyched=true
{
if keyboard_check_pressed(ord("Z")){endMenu=true}
}

if endMenu=true
{
	switch (menu) {
	    case "flight":
			
			timer[2]++
			
			if timer[2]<5*60
			{
			if keyboard_check_pressed(ord("Z")){escapeRequirement++}
	        logstring="Press Z to escape!! "+string(escapeRequirement)+"/20"
			}
			
			if escapeRequirement>=20 and timer[2]<5*60 //6899 make each turn generate a random number that gets added up to the escapeRequirement
			{
		        logstring="Apfel escaped from the battle!"
				escaped=true
			}
			
			if timer[2]>5*60 and escaped!=true
			{
				logstring="Apfel didn't manage to escape from the battle!"
				escaped=false
			}
	        break;
	    default:
	        // code here
	        break;
	}
}

if escaped=true
{
	timer[1]++
	if timer[1]>3*60
	{
	logstring="Battle ended, restarting preview in 4 seconds."
	}
	if timer[1]>(3+4)*60
	{
	game_restart()
	}
}

if escaped=false
{
timer[3]++
if timer[3]>2*60{enemyTurn=true}
}

if enemyTurn=true
{
logstring="Enemy turn"	
}