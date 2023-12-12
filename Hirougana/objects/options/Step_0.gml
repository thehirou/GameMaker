

if wentNext=true
		{
			lastQuestion=manager.question
		}

if manager.question=options.lastQuestion
		{
			nPressScr();
		}

if onlyOnceAfterResponse=true
{
	var _list = ds_list_create();
	ds_list_add(_list, manager.answer, manager.prompt2, manager.prompt3);
	ds_list_shuffle(_list);

	drawPrompt1 = _list[| 0];
	drawPrompt2 = _list[| 1];
	drawPrompt3 = _list[| 2];

	ds_list_destroy(_list);
	
	onlyOnceAfterResponse=false
}

if onlyFuckingOnce=true
{
	nPressScr();	
	onlyFuckingOnce=false
}

if yAnim1>0
{
yAnim1-=20
}

if yAnim2>0
{
yAnim2-=20
}

if yAnim3>0
{
yAnim3-=20
}

if yAnim3<=0
{
	yAnim1=0
	yAnim2=0	
	yAnim3=0	
}

if buttonArrowJuice<15 and goDown=false
{
	buttonArrowJuice+=0.3
}

if buttonArrowJuice>10
{
	goDown=true
}

if goDown=true and buttonArrowJuice>-5
{
	buttonArrowJuice-=0.3
}

if buttonArrowJuice<0
{
	goDown=false	
}


if keyboard_check_pressed(vk_right) and pos<=1 and wait=false
{
audio_play_sound(NextSLCT_SND,999,false)	

pos++;

ySelectedAnim1=0
ySelectedAnim2=0
ySelectedAnim3=0
}

if keyboard_check_pressed(vk_left) and pos>=1 and wait=false
{
audio_play_sound(NextSLCT_SND,999,false)	

pos--;	

ySelectedAnim1=0
ySelectedAnim2=0
ySelectedAnim3=0
}



switch(pos){
	case 0:
	
	if ySelectedAnim1>-9
	{
	ySelectedAnim1-=0.7
	}
	
	savedPos=0
		if wait=false
		{
		selectedColor1=c_white
		selectedColor2=c_gray
		selectedColor3=c_gray
		}
		
		selected1SCR();
		
	break;
	
	case 1:
	
	if ySelectedAnim2>-9
	{
	ySelectedAnim2-=0.7
	}
	
	savedPos=1
		if wait=false
		{
		selectedColor1=c_gray
		selectedColor2=c_white
		selectedColor3=c_gray
		}
		
		selected2SCR();
		
	break;
	
	case 2:
	
	if ySelectedAnim3>-9
	{
	ySelectedAnim3-=0.7
	}
	
	savedPos=2
		if wait=false
		{
		selectedColor1=c_gray
		selectedColor2=c_gray
		selectedColor3=c_white
		}
		
		selected3SCR();
		
	break;
	
	case 3:
	savedPos=999
		
		selectedColor1=c_purple //ERROR
		selectedColor2=c_purple
		selectedColor3=c_purple
	break;
	
}

if wait=true and waitBuffer<60
{
	
waitBuffer++
pos=savedPos

	if waitBuffer>15 // 15 frames of pause
		{
			waitBuffer=0
			writeKeyboardObj.init=false
			writeKeyboardObj.stringDraw=""
			keyboard_string=""
			wait=false
		}
		
}

if selectedCorrectAnswer=true and goBack=false
{
pos=1
manager.yAnimation-=40
closeAnim1+=20
closeAnim2+=20
closeAnim3+=20

if manager.yAnimation<-300 and onceChange=true
{
	wentNext=true	
}

if manager.yAnimation<-350 and onceChange=true
{
	wentNext=false	
}

if manager.yAnimation<-500 and onceChange=true
	{
		//nPressScr();
		resetNara=true
		goBack=true
		onceChange=false
	}
	
if goBack=true
	{	
		manager.yAnimation=0
		optionsinit();
	}
}

if streak>0
{
drawStreak=true	

	if streakY<60 and streakFail=false
		{
			streakY+=20	
		}
}

if streakFail=true and streak>0
{
	goodAnim=0
	timerShake++
	streakXshake=random_range(1,4)
	streakYshake=random_range(1,4)
	
	if timerShake>5
	{
	streakY-=20
	goodAnim=0
	}
	
	if timerShake>20
	{
		timerShake=0
		streak=0
		streakY=-50
		streakXshake=0
		streakYshake=0
		stopAnim=false
		goodAnim=0
		makeTheSwiggly=false
		streakFail=false
	}
	
}

if makeTheSwiggly=true
{
	if goodAnim<25 and stopAnim=false
		{
				goodAnim+=4	
		}
		
	if goodAnim>20
		{
			 stopAnim=true
		}
		
	if stopAnim=true and goodAnim>=0
		{
			goodAnim-=2	
			
			if goodAnim>-5 and goodAnim<1
			{
				stopAnim=false
				goodAnim=0
				makeTheSwiggly=false
			}
		}
}
