song[0]=musPerro_01
song[1]=musHirou_01
song[2]=musHirou_02
song[3]=musHirou_03
song[4]=musHirou_04

amb[0]=sndAmbience_01
currentSong=audio_play_sound(sndJoin,1,false,0)	

playlist_random=0
randomSong=0

currentAmb=audio_play_sound(amb[0],1,true,global.sfxVolume)	

smoothTimer=0