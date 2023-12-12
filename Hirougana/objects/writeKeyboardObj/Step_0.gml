if(instance_exists(options))
{
	if(keyboardMode)
	{
		timer++
		if timer>2*room_speed and keyboard_string=""
		{
			warning=true	
		}
	}

	if wave>0 and keyboard_string!=""
	{
		wave=-0.5	
	}

	if(!keyboardMode)
	{
		timer=0
		warning=false
		wave=-0.5
	}

	if warning=true and keyboard_check_pressed(vk_anykey)
	{
		timer=0
		warning=false
		wave=-0.5
	}

	if warning=true
	{
		wave = midpoint + amplitude * sin((current_time / 1000) * 2 * pi * period);
	}

	if(keyboardMode)
	{
		if keyboard_check_pressed(vk_space)
		{
			keyboard_string=string_delete(keyboard_string,string_length(keyboard_string),1)
		}
	
		stringDraw=string_upper(stringDraw);
		keyboard_string=string_upper(keyboard_string);
		if init2=true
		{
			keyboard_string=""
			init2=false
		}
	
		if instance_exists(manager)
			{
				if string_length(stringDraw)<5
					{
						stringDraw=keyboard_string
					}
				
				if string_length(stringDraw)>=5
					{
						deleteString=true
						timer=0
						warning=false
						wave=-0.5
					}
				
				if deleteString=true
				{
					stringDraw=""
					keyboard_string=""
					audio_play_sound(Move_2,1,false)
					screenshake(10, 2, 0.4);
					deleteString=false	
				}
				
				if stringDraw=manager.answer and init=false and keyboard_check_pressed(vk_enter)
				{
				timer=0
				warning=false
				wave=-0.5
				audio_play_sound(CorrectSND,999,false)
				options.wait=true
				options.correct=true
				correctAnswerShake();
				streakScr();
				init=true
				}else if init=false and keyboard_check_pressed(vk_enter) and stringDraw!=manager.answer
					{
				timer=0
				warning=false
				wave=-0.5
				audio_play_sound(ErrorSND,999,false)
				options.wait=true
				options.correct=false
				init=true
				screenshake(10, 2, 0.4);
						if options.streak>0
							{
								 options.streakFail=true
							}
					}
				}
	}
}