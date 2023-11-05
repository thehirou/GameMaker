global.seecamera=true
audio_play_sound(beep,1,false)

if !instance_exists(glitchy_obj)
{
instance_destroy(move_left);
instance_destroy(move_right);
instance_destroy(move_left_slow);
instance_destroy(move_right_slow);
instance_destroy(office_obj);
instance_create_depth(0,0,-998,glitchy_obj)	
instance_create_depth(0,0,-999,rec_obj)	
}