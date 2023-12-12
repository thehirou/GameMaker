if loadSaveOnce=true
{
	scr_load();
	loadSaveOnce=false
}

switch(answer){
	
	case 0:
			initScript();
			question=" ";
	break;
	
	case "A":
			switchScript();
			question="あ"
	break;
	
	case "I":
		switchScript();
		question="い"
	break;
	
	case "U":
		switchScript();
		question="う"
	break;
	
	case "E":
		switchScript();
		question="え"
	break;
	
	case "O":
		switchScript();
		question="お"
	break;
	
	case "KA":
		switchScript();
		question="か"
	break;
	
	case "KI":
		switchScript();
		question="き"
	break;
	
	case "KU":
		switchScript();
		question="く"
	break;
	
	case "KE":
		switchScript();
		question="け"
	break;
	
	case "KO":
		switchScript();
		question="こ"
	break;
	
	case "SA":
		switchScript();
		question="さ"
	break;
	
	case "SHI":
		switchScript();
		question="し"
	break;
	
	case "SU":
		switchScript();
		question="す"
	break;
	
	case "SE":
		switchScript();
		question="せ"
	break;
	
	case "SO":
		switchScript();
		question="そ"
	break;
	
	case "TA":
		switchScript();
		question="た"
	break;
	
	case "CHI":
		switchScript();
		question="ち"
	break;
	
	case "TSU":
		switchScript();
		question="つ"
	break;
	
	case "TE":
		switchScript();
		question="て"
	break;
	
	case "TO":
		switchScript();
		question="と"
	break;
	
	case "NA":
		switchScript();
		question="な"
	break;
	
	case "NI":
		switchScript();
		question="に"
	break;
	
	case "NU":
		switchScript();
		question="ぬ"
	break;
	
	case "NE":
		switchScript();
		question="ね"
	break;
	
	case "NO":
		switchScript();
		question="の"
	break;
	
	case "HA":
		switchScript();
		question="は"
	break;
	
	case "HI":
		switchScript();
		question="ひ"
	break;
	
	case "FU":
		switchScript();
		question="ふ"
	break;
	
	case "HE":
		switchScript();
		question="へ"
	break;
	
	case "HO":
		switchScript();
		question="ほ"
	break;
	
	case "MA":
		switchScript();
		question="ま"
	break;
	
	case "MI":
		switchScript();
		question="み"
	break;
	
	case "MU":
		switchScript();
		question="む"
	break;
	
	case "ME":
		switchScript();
		question="め"
	break;
	
	case "MO":
		switchScript();
		question="も"
	break;
	
	case "YA":
		switchScript();
		question="や"
	break;
	
	case "YU":
		switchScript();
		question="ゆ"
	break;
	
	case "YO":
		switchScript();
		question="よ"
	break;
	
	case "RA":
		switchScript();
		question="ら"
	break;
	
	case "RI":
		switchScript();
		question="り"
	break;
	
	case "RU":
		switchScript();
		question="る"
	break;
	
	case "RE":
		switchScript();
		question="れ"
	break;
	
	case "RO":
		switchScript();
		question="ろ"
	break;
	
	case "WA":
		switchScript();
		question="わ"
	break;
	
	case "WO":
		switchScript();
		question="を"
	break;
	
	case "N":
		switchScript();
		question="ん"
	break;
	
}


if done=true
{
 //Thanks for the help Sahaun.
var _list = ds_list_create();
ds_list_add(_list, 20, 40, 60);
ds_list_shuffle(_list);

place1 = _list[| 0];
place2 = _list[| 1];
place3 = _list[| 2];

ds_list_destroy(_list);
done=false
}

if instance_exists(options)
{
	if options.resetNara=true
	{
		naraDown=true
		xQuestionNara=room_width/1.5
		options.resetNara=false
	}
}

if naraDown=true and xQuestionNara>0
{
	xQuestionNara-=50
	if xQuestionNara>-20 and xQuestionNara<30
	{
		xQuestionNara=0
	}
}

#region //ANIMATION

if animAlpha>=0 and downAlpha=false
{
animAlpha+=0.08
}

if animAlpha>3
{
downAlpha=true	
}

if downAlpha=true
{
animAlpha-=0.04
if animAlpha=0
{
change++;
downAlpha=false	
}
}

if change % 2 == 1 and alreadyUsed=false
{
	selectText="USE ARROW KEYS"
}

if change % 2 == 0 and alreadyUsed=false
{
	selectText="SELECT MODE"
}

#endregion

if keyboard_check_pressed(vk_right)
{
	alreadyUsed=true
}

if alreadyUsed=true
{
	selectText="PRESS ENTER TO SELECT"		
}

if global.inLevel=true
{
if onceAgain=true
{
	done=true
	once=true

	scrChooseDependingLevel();

	nPressScr();
	onceAgain=false
}
	
if !instance_exists(fadein) and onlyonce=true
	{
		instance_create_depth(0,0,-999,fadein)
		onlyonce=false
	}

if !instance_exists(options)
	{
		instance_create_depth(30,30,-999,options)
	}
	
}

//SCREENSHAKE (TO LAZY TO MAKE A NEW ONE SO I TOOK THIS ONE. https://www.yoyogames.com/es/blog/coffee-break-tutorials-juicy-screenshake-gml)

if (shake) 
{ 
   shake_time -= 1; 
   var _xval = choose(-shake_magnitude, shake_magnitude); 
   var _yval = choose(-shake_magnitude, shake_magnitude); 
   camera_set_view_pos(view_camera[0], _xval, _yval); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
         camera_set_view_pos(view_camera[0], 0, 0); 
         shake = false; 
      } 
   } 
}

if(shakeCorrect)
{

timerShake++
camera_set_view_pos(view_camera[0],0,yCamShakeCorrectPos)

if timerShake<3 and ignoreLast=false
	{
				speedShake=15
				yCamShakeCorrectPos+=speedShake
	}
	
if timerShake<10 and timerShake>3 and stopThis=false
	{
				speedShake=8
				yCamShakeCorrectPos-=speedShake
				ignoreLast=true
	}
	
if timerShake>9
{
		stopThis=true	
}

if ignoreLast=true and stopThis=true
	{
		yCamShakeCorrectPos-=speedShake
		if yCamShakeCorrectPos<0
		{
			options.selectedCorrectAnswer=true
			camera_set_view_pos(view_camera[0],0,0)
			timerShake=0
			yCamShakeCorrectPos=0
			ignoreLast=false
			stopThis=false
			shakeCorrect=false
		}
	}

}