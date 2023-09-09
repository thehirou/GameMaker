x=-80
y=-80
image_index=0
image_xscale=(room_width/40)*1.1
image_yscale=(room_height/40)*1.1

global.color_row_index=0
global.color_sets=4

global.v_offset=shader_get_uniform(sh_palette, "Offset");
global.v_normal=0

global.palette_swap_sampler=shader_get_sampler_index(sh_palette, "Palette");
global.texture_palette=sprite_get_texture(spr_palete,0)