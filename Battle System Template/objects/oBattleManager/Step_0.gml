if keyboard_check_pressed(ord("R")){game_restart()}

if berserk=false and menu="none" and endMenu=false
{
if keyboard_check_pressed(vk_up){option--}
if keyboard_check_pressed(vk_down){option++}
}

if berserk=false and endMenu=false
{
	if menu="alchemy" or menu="combo"
	{
	if keyboard_check_pressed(vk_up){optionAlchemy--}
	if keyboard_check_pressed(vk_down){optionAlchemy++}
	}
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

show_debug_message(string(menu)+string(psyched))

if keyboard_check_pressed(ord("Z")){menu=optionstring}

switch (menu) {
    case "flight":
        endMenu=true
        break;
    case "info":
        endMenu=true
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

if menu="alchemy" and psyched=false and endMenu=false
{
	timer[0]++
	if timer[0]>1 //2 frame delay to check
	{
		if keyboard_check_pressed(ord("Z")){endMenu=true}
	}
}



if menu="alchemy" and psyched=true
{
timer[7]++

if timer[7]>1
{
if keyboard_check_pressed(ord("Z"))
{
	
	menu="combo"
	logstring="Select another alchemy to combo"
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
if keyboard_check_pressed(ord("Z")){endMenu=true}
}
}

//show_debug_message(menu)

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
			logstring="Apfel psyched up!"
			timer[4]++
			if timer[4]>2*60{enemyTurn=true}
			//if keyboard_check_pressed(ord("Z")){enemyTurn=true}
		break;
		
		case "info":
			logstring=enemyInfo
			timer[6]++
			if timer[6]>2*60
			{
			timer[6]=0
			enemyTurn=true	
			}
		break;
		
	    default:
	        // code here
	        break;
	}
}

if menu="flight"
{
	if escaped=1
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

	if escaped=0
	{
	timer[3]++
	if timer[3]>2*60{enemyTurn=true}
	}
}

if enemyTurn=true
{
menu="none"
escaped=-1
var timerlength = array_length(timer);

// Loop through the array and reset each element to 0
for (var i = 0; i < array_length; i++) {
    timer[i] = 0;
}

logstring="Enemy turn"	
if keyboard_check_pressed(ord("M"))
{
	logstring="Perform an action."
	enemyTurn=false; turn++; menu="none"; endMenu=false; option=0; optionAlchemy=0;
	
}
}