if !surface_exists(surf){
	
surf=surface_create(room_width,room_height);
	surface_set_target(surf);
		draw_clear(c_black);
		
	surface_reset_target();

}


	surface_set_target(surf);
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(spr_px_black,0,0,0,room_width,room_height,0,c_white,0.048)
	gpu_set_blendmode(bm_normal)
	
	surface_reset_target();


#region
	surface_set_target(surf);
	
		with(o_fog)
		{
			gpu_set_blendmode(bm_subtract)
			draw_sprite_ext(spr_fog,0,x,y,0.2,0.2,0,c_white,0.1)
			gpu_set_blendmode(bm_normal)
		}
	
		with(o_spawnfog)
		{
			gpu_set_blendmode(bm_subtract)
			draw_sprite_ext(spr_fog,0,x,y,1,1,0,c_white,0.1)
			gpu_set_blendmode(bm_normal)
		}
		
	surface_reset_target();
#endregion

draw_surface(surf,0,0)