if pos>-1 and pos<cases
{
	if keyboard_check_pressed(vk_right)
	{
		pos+=1
	}
}

if pos>0 and pos<cases+1
{
	if keyboard_check_pressed(vk_left)
	{
		pos-=1
	}
}

switch(pos){
	
	case 0:
		icon="✷"
		desc="ALL HIRAGANA\n[3 OPTION MODE]"
	break;
	
	case 1:
		icon="✷"
		desc="ALL HIRAGANA\n[KEYBOARD MODE]"
	break;
	
	case 2:
		icon="☺"
		desc="MORE MODES IN DEVELOPMENT"
	break;
	
	break;

}

if moveArrowJuice<=5 and godown=false
{
moveArrowJuice+=0.2
}

if moveArrowJuice>=5
{
godown=true	
}

if godown=true
{
	moveArrowJuice-=0.2
	if moveArrowJuice<=0
	{
	godown=false	
	}
}

if clicked=true and clickJuiceArrow<15
{
clickJuiceArrow+=3
}

if clickJuiceArrow>=15
{
clickJuiceArrow=0
clicked=false	
}

if clicked2=true and clickJuiceArrow2<15
{
clickJuiceArrow2+=3
}

if clickJuiceArrow2>=15
{
clickJuiceArrow2=0
clicked2=false	
}

switch(pos){
	
	case 0: //all opt
	
		if keyboard_check_pressed(vk_enter)
		{
				global.level=1
				scrSelectLevel();
		}
		
	break;
	
	case 1: //all key
	
		if keyboard_check_pressed(vk_enter)
		{
			global.level=1
			scrSelectLevel();
		}
		
	case 2: //dev
	
		if keyboard_check_pressed(vk_enter)
		{
				screenshake(10,1,30)
				//global.level=1
				//scrSelectLevel();
		}
		
	break;

}