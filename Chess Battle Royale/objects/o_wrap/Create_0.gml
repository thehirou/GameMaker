global.color_row_index=0
global.color_sets=4

global.cv_offset=shader_get_uniform(sh_palette, "Offset");
global.cv_normal=0

global.palette_swap_sampler=shader_get_sampler_index(sh_palette, "Palette");
global.texture_palette=sprite_get_texture(spr_palete,0)

image_index=2
wrapping="sideR" //def
wrappingText=false