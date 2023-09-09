bgm_base=audio_create_stream("ogg/bgm_base.ogg")
bgm_danger=audio_create_stream("ogg/bgm_danger.ogg")
bgm_spawn=audio_create_stream("ogg/bgm_spawn.ogg")

global.maxVolumeMusic=0.1
maxVolume=global.maxVolumeMusic

play_base=audio_play_sound(bgm_base,1,true)
play_danger=audio_play_sound(bgm_danger,1,true)
play_spawn=audio_play_sound(bgm_spawn,1,true)

audio_sound_gain(play_base, maxVolume, 0)
audio_sound_gain(play_spawn, maxVolume, 0)
audio_sound_gain(play_danger, 0, 0)

mute=false