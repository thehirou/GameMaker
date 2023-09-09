global.color_row_index=0
global.color_sets=4

global.v_offset=shader_get_uniform(sh_palette, "Offset");
global.v_normal=0

global.palette_swap_sampler=shader_get_sampler_index(sh_palette, "Palette");
global.texture_palette=sprite_get_texture(spr_palete,0)

x=real(get_string("Spawn X pos","3000"))
y=real(get_string("Spawn Y pos","1500"))


scr_init_spawn();