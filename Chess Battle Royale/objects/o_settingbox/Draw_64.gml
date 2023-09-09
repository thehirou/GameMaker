shader_set(sh_palette)

texture_set_stage(global.palette_swap_sampler, global.texture_palette);

shader_set_uniform_f(global.v_offset,global.v_normal);

draw_sprite_ext(spr_settings,0,xIcon,80,3,3,rot,c_white,1)
draw_sprite_ext(spr_settings_gui,0,0,yGui,1,1,0,c_white,1)

shader_reset()