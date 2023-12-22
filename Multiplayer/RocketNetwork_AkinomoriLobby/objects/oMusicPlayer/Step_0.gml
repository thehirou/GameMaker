if audio_is_playing(currentSong)
{
audio_sound_gain(currentSong,global.musicVolume,0)
}

if audio_is_playing(currentAmb)
{
var timeToCheck=0
var distanceToEmissor=distance_to_object(oPlayer)
var distanceUntilNoSound=1000
var percentage = distanceToEmissor / distanceUntilNoSound;
var mappedValue = lerp(1, 0, percentage);
audio_sound_gain(currentAmb,global.sfxVolume*mappedValue,timeToCheck*1000)
}

//Random Time Song
randomSong=irandom_range(7000-7000,7000)

if randomSong=69 and !audio_is_playing(currentSong)
{
playlist_random=irandom_range(0,array_length(song)-1)
currentSong=audio_play_sound(song[playlist_random],1,false,global.musicVolume)	
}