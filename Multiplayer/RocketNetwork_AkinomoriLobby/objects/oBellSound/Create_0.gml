audio_play_sound(sndHourBell,1,false,global.sfxVolume)	

if audio_is_playing(oMusicPlayer.currentSong)
{
audio_sound_gain(oMusicPlayer.currentSong,global.musicVolume*0.2,2000)	
}

timer=0