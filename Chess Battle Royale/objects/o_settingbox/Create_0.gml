display_set_gui_size(1920,1080)
image_alpha=0
image_blend=c_blue
image_xscale=20
image_yscale=20

enter=false
rot=0
spd=2
guiSpd=8
once=true
xIcon=1920-40
yGui=-400
hideIcon=false
squish=1

global.settings=false

global.color_row_index=0
global.color_sets=4

global.v_offset=shader_get_uniform(sh_palette, "Offset");
global.v_normal=0

global.palette_swap_sampler=shader_get_sampler_index(sh_palette, "Palette");
global.texture_palette=sprite_get_texture(spr_palete,0)