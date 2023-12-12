// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scrChooseDependingLevel()
{
	switch(global.level)
		{
				case 0:
						manager.answer=choose("A","I","U","E","O") //6899 Añadir curva de dificultad aqui
				break;
				
				case 1:
						manager.answer=choose(
						"A","I","U","E","O",
						"KA","KI","KU","KE","KO",
						"SA","SHI","SU","SE","SO",
						"TA","CHI","TSU","TE","TO",
						"NA","NI","NU","NE","NO",
						"HA","HI","FU","HE","HO",
						"MA","MI","MU","ME","MO",
						"YA","YU","YO",
						"RA","RI","RU","RE","RO",
						"WA","WO","N")
				break;
				
		}
}

function ranChar(){

var _list = ds_list_create(); //Randomly take two values and set it to a variable without getting them repeated

switch(global.level)
{
				case 0:
					ds_list_add(_list,"A","I","U","E","O")
				break;
				
				case 1:
					ds_list_add(_list,
					"A","I","U","E","O",
					"KA","KI","KU","KE","KO",
					"SA","SHI","SU","SE","SO",
					"TA","CHI","TSU","TE","TO",
					"NA","NI","NU","NE","NO",
					"HA","HI","FU","HE","HO",
					"MA","MI","MU","ME","MO",
					"YA","YU","YO",
					"RA","RI","RU","RE","RO",
					"WA","WO","N")
				break;

}



ds_list_shuffle(_list);

prompt2 = _list[| 0];
prompt3 = _list[| 1];

if prompt1!=prompt2 and prompt1!=prompt3 and prompt2!=prompt1 and prompt2!=prompt3 and prompt3!=prompt1 and prompt3 != prompt2
	{
		ds_list_destroy(_list);
	}else{ranChar();}
	
}

function switchScript(){
		if once=true
	{
		prompt1=answer
		ranChar()

		if prompt2=prompt3
			{
				ranChar()	
			}
			
		if prompt2=answer or prompt3=answer
			{
				ranChar()
			}
			
		once=false
	}
}

function drawRectangleStroke(x1,y1,x2,y2,color,width)
{
x1 = argument0

y1 = argument1

x2 = argument2

y2 = argument3



color = argument4

width = argument5



draw_set_color(color)

draw_rectangle(x1,y1,x2,y2,true)

var i = 0

do
{

    i += 1

    draw_rectangle(x1-i,y1-i,x2+i,y2+i,true)

}
until(i = width)
}

function initScript()
{
drawTitle=true

}
function scrSelectLevel()
{
	if !instance_exists(fadeout)
		{
			instance_create_depth(0,0,-999,fadeout);
		}
				
	switch(pos)
	{
		case 0:
			global.level=1 //all hiragana
		break;
		
		case 1:
			writeKeyboardObj.keyboardMode=true
			global.level=1 //ALL HIRAGANA keyboard
		break;
		
		case 2:
			global.level=0 //K
		break;
		
		case 3:
			global.level=991 //K
		break;

	}
}

function nPressScr()
{
	manager.done=true
	manager.once=true

scrChooseDependingLevel();

	if instance_exists(options)
	{
		options.onlyOnceAfterResponse=true
	}
}

function selected1SCR()
{
	
		if(keyboard_check_pressed(vk_enter) and writeKeyboardObj.keyboardMode=false and yAnim1=0 and drawPrompt1=manager.answer) or (keyboard_check_pressed(vk_up) and yAnim1=0 and drawPrompt1=manager.answer) and writeKeyboardObj.keyboardMode=false
		{
			audio_play_sound(CorrectSND,999,false)
			wait=true
			correct=true
		selectedColor1=c_green
		selectedColor2=c_gray
		selectedColor3=c_gray
		correctAnswerShake();
		streakScr();
		}else if(keyboard_check_pressed(vk_enter) and yAnim1=0 and drawPrompt1!=manager.answer) and writeKeyboardObj.keyboardMode=false or (keyboard_check_pressed(vk_up) and yAnim1=0 and drawPrompt1!=manager.answer) and writeKeyboardObj.keyboardMode=false
		{
			audio_play_sound(ErrorSND,999,false)
			wait=true
			correct=false
		selectedColor1=c_red
		selectedColor2=c_gray
		selectedColor3=c_gray
		screenshake(10, 2, 0.4);
		if streak>0
			{
				streakFail=true
			}
		}	
}

function selected2SCR()
{
		if(keyboard_check_pressed(vk_enter) and writeKeyboardObj.keyboardMode=false and yAnim1=0 and drawPrompt2=manager.answer) or (keyboard_check_pressed(vk_up) and yAnim1=0 and drawPrompt2=manager.answer) and writeKeyboardObj.keyboardMode=false
		{
			audio_play_sound(CorrectSND,999,false)
			wait=true
			correct=true
		selectedColor1=c_gray
		selectedColor2=c_green
		selectedColor3=c_gray
		correctAnswerShake();
		streakScr();
		}else if(keyboard_check_pressed(vk_enter) and writeKeyboardObj.keyboardMode=false and yAnim1=0 and drawPrompt2!=manager.answer) or (keyboard_check_pressed(vk_up) and yAnim1=0 and drawPrompt2!=manager.answer) and writeKeyboardObj.keyboardMode=false
		{
			audio_play_sound(ErrorSND,999,false)
			wait=true
			correct=false
		selectedColor1=c_gray
		selectedColor2=c_red
		selectedColor3=c_gray
		screenshake(10, 2, 0.4);
		if streak>0
			{
				streakFail=true
			}
		}	
}

function selected3SCR()
{
		if(keyboard_check_pressed(vk_enter) and writeKeyboardObj.keyboardMode=false and yAnim1=0 and drawPrompt3=manager.answer) or (keyboard_check_pressed(vk_up) and yAnim1=0 and drawPrompt3=manager.answer) and writeKeyboardObj.keyboardMode=false
		{
			audio_play_sound(CorrectSND,999,false)
			wait=true
			correct=true
		selectedColor1=c_gray
		selectedColor2=c_gray
		selectedColor3=c_green
		correctAnswerShake();
		streakScr();
	}else if(keyboard_check_pressed(vk_enter) and writeKeyboardObj.keyboardMode=false and yAnim1=0 and drawPrompt3!=manager.answer) or (keyboard_check_pressed(vk_up) and yAnim1=0 and drawPrompt3!=manager.answer) and writeKeyboardObj.keyboardMode=false
		{
			audio_play_sound(ErrorSND,999,false)
			wait=true
			correct=false
		selectedColor1=c_gray
		selectedColor2=c_gray
		selectedColor3=c_red
		screenshake(10, 2, 0.4);
		if streak>0
			{
				streakFail=true
			}
		}	
}

function screenshake(_time, _magnitude, _fade)
{
   with (manager)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
   }
}

function correctAnswerShake()
{
	manager.shakeCorrect=true;
}

function optionsinit()
{

streak+=1;

if streak>=global.highScore
{
	global.highScore=streak
}
manager.xQuestionNara=room_width/1.5
boxYFinal=560
boxBig=60
xSeparation=100

pos=1
savedPos=0

wait=false
waitBuffer=0

selectedColor1=c_white
selectedColor2=c_white
selectedColor3=c_white

drawPrompt1=0

correct=false

drawPrompt2=0

drawPrompt3=0

selectedCorrectAnswer=false

onceChange=true

stroke=6

onlyOnceAfterResponse=true

buttonArrowJuice=0
goDown=false	

yAnim1=200
yAnim2=300
yAnim3=400

closeAnim1=0
closeAnim2=0
closeAnim3=0

ySelectedAnim1=0
ySelectedAnim2=0
ySelectedAnim3=0
goBack=false	
}

function streakScr()
{
	makeTheSwiggly=true
}