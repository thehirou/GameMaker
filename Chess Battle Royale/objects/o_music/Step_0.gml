if keyboard_check_pressed(ord("M"))
{
mute=!mute	
}

with(o_followcamera)
{
	
if instance_place(x,y,o_spawnarea)
	{
		with(o_music)
		{
			audio_sound_gain(play_spawn, maxVolume*global.maxVolumeMusic, 2000)
			audio_sound_gain(play_base, maxVolume*global.maxVolumeMusic, 2000)
			audio_sound_gain(play_danger, 0*global.maxVolumeMusic, 0)
		}
	}
else
	{
		with(o_music)
		{
		audio_sound_gain(play_spawn, 0*global.maxVolumeMusic, 2000)
		audio_sound_gain(play_base, maxVolume*global.maxVolumeMusic, 2000)
		}
	}
	
}

if mute
{
	maxVolume=0
	audio_sound_gain(play_base, 0, 100)
	audio_sound_gain(play_spawn, 0, 100)
	audio_sound_gain(play_danger, 0, 100)
}else{maxVolume=0.6}