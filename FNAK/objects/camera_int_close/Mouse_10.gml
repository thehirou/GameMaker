if beuseful=true
{
	if instance_exists(glitchy_obj)
	{
		instance_destroy(glitchy_obj);
		instance_destroy(rec_obj);
	}
		if !instance_exists(office_obj)
	{
		instance_create_depth(-320,0,25,office_obj)
		instance_create_depth(-64,-64,25,move_left)
		instance_create_depth(1056,-64,25,move_right)
		instance_create_depth(224,-64,25,move_left_slow)
		instance_create_depth(896,-64,25,move_right_slow)
		move_right.image_xscale=4.5
		move_right.image_yscale=13.5
		move_left.image_xscale=4.5
		move_left.image_yscale=13.5
		
		move_right_slow.image_xscale=2.5
		move_right_slow.image_yscale=13.5
		move_left_slow.image_xscale=2.5
		move_left_slow.image_yscale=13.5
	}
audio_play_sound(bibip,1,false)
global.seecamera=false
instance_destroy();
}


