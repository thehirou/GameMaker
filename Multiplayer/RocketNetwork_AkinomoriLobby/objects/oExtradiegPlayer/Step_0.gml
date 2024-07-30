if isItRandomSfx=true
{
	//Random Time Song
	var randomSfx=irandom_range(0,4000)

	if randomSfx=69 and !audio_is_playing(currentSfx)
	{
		currentSfx=audio_play_sound(sndID,1,false,global.sfxVolume)	
	}


	if audio_is_playing(currentSfx)
	{
	var timeToCheck=0
	var distanceToEmissor=distance_to_object(oPlayer)
	var percentage = distanceToEmissor / distanceUntilNoSound;
	var mappedValue = lerp(1, 0, percentage);
	audio_sound_gain(currentSfx,global.sfxVolume*mappedValue,timeToCheck*1000)
	}
}

if isItRandomSfx=false
{
	if once=true
	{
	currentSfx=audio_play_sound(sndID,1,true,global.musicVolume)	
	once=false
	}
	
	if audio_is_playing(currentSfx)
	{
	var timeToCheck=0
	var distanceToEmissor=distance_to_object(oPlayer)
	var percentage = distanceToEmissor / distanceUntilNoSound;
	var mappedValue = lerp(1, 0, percentage);
	audio_sound_gain(currentSfx,global.sfxVolume*mappedValue,timeToCheck*1000)
	}
}