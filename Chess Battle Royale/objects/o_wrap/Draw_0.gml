shader_set(sh_palette)

texture_set_stage(global.palette_swap_sampler, global.texture_palette);

shader_set_uniform_f(global.v_offset,global.v_normal);

draw_self()
shader_reset()