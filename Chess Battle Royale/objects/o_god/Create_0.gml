display_set_gui_size(1920,1080)
global.color_row_index=0
global.color_sets=4

global.cv_offset=shader_get_uniform(sh_palette, "Offset");
global.cv_normal=0

global.palette_swap_sampler=shader_get_sampler_index(sh_palette, "Palette");
global.texture_palette=sprite_get_texture(spr_palete,0)

display_set_gui_size(1920,1080)
font_add_enable_aa(true)
font_1=font_add("ttf/dmsans.ttf",22,false,false,32,128)

//window_set_size(1280,720)
global.fullscreen=true
window_set_fullscreen(global.fullscreen)	

sfx_crunch=audio_create_stream("ogg/sfx_crunch.ogg")
#macro		SND_CRUNCH		global.id_crunch=audio_play_sound(o_god.sfx_crunch,1,false); audio_sound_gain(global.id_crunch,global.maxVolumeSfx,0)

sfx_slide=audio_create_stream("ogg/sfx_slide.ogg")
#macro		SND_SLIDE			global.id_slide=audio_play_sound(o_god.sfx_slide,1,false); audio_sound_gain(global.id_slide,global.maxVolumeSfx,0)

sfx_horse=audio_create_stream("ogg/sfx_horse.ogg")
#macro		SND_HORSE			global.id_horse=audio_play_sound(o_god.sfx_horse,1,false); audio_sound_gain(global.id_horse,global.maxVolumeSfx,0)

sfx_bishop=audio_create_stream("ogg/sfx_bishop.ogg")
#macro		SND_BISHOP		global.id_bishop=audio_play_sound(o_god.sfx_bishop,1,false); audio_sound_gain(global.id_bishop,global.maxVolumeSfx,0)

sfx_pawn=audio_create_stream("ogg/sfx_pawn.ogg")
#macro		SND_PAWN			global.id_pawn=audio_play_sound(o_god.sfx_pawn,1,false); audio_sound_gain(global.id_pawn,global.maxVolumeSfx,0)

sfx_king=audio_create_stream("ogg/sfx_king.ogg")
#macro		SND_KING			global.id_king=audio_play_sound(o_god.sfx_king,1,false); audio_sound_gain(global.id_king,global.maxVolumeSfx,0)

sfx_queen=audio_create_stream("ogg/sfx_queen.ogg")
#macro		SND_QUEEN		global.id_queen=audio_play_sound(o_god.sfx_queen,1,false); audio_sound_gain(global.id_queen,global.maxVolumeSfx,0)

sfx_emperor=audio_create_stream("ogg/sfx_emperor.ogg")
#macro		SND_EMPEROR	global.id_emperor=audio_play_sound(o_god.sfx_emperor,1,false); audio_sound_gain(global.id_emperor,global.maxVolumeSfx,0)

sfx_soldier=audio_create_stream("ogg/sfx_soldier.ogg")
#macro		SND_SOLDIER		global.id_soldier=audio_play_sound(o_god.sfx_soldier,1,false); audio_sound_gain(global.id_soldier,global.maxVolumeSfx,0)

sfx_mouse=audio_create_stream("ogg/sfx_mouse.ogg")
#macro		SND_MOUSE		global.id_mouse=audio_play_sound(o_god.sfx_mouse,1,false); audio_sound_gain(global.id_mouse,global.maxVolumeSfx,0)

sfx_sel_piece=audio_create_stream("ogg/sfx_select_piece.ogg")
#macro		SND_SELPIECE		global.id_selpiece=audio_play_sound(o_god.sfx_sel_piece,1,false); audio_sound_gain(global.id_selpiece,global.maxVolumeSfx,0)

sfx_sel_place=audio_create_stream("ogg/sfx_select_place.ogg")
#macro		SND_SELPLACE	global.id_selplace=audio_play_sound(o_god.sfx_sel_place,1,false); audio_sound_gain(global.id_selplace,global.maxVolumeSfx,0)

sfx_desel_piece=audio_create_stream("ogg/sfx_deselect_piece.ogg")
#macro		SND_DEPIECE		global.id_depiece=audio_play_sound(o_god.sfx_desel_piece,1,false); audio_sound_gain(global.id_depiece,global.maxVolumeSfx,0)

sfx_clank=audio_create_stream("ogg/sfx_clank.ogg")
#macro		SND_CLANK			global.id_clank=audio_play_sound(o_god.sfx_clank,1,false); audio_sound_gain(global.id_clank,global.maxVolumeSfx,0)

sfx_settings_open=audio_create_stream("ogg/sfx_settings_open.ogg")
#macro		SND_SETTINGS	global.id_settings=audio_play_sound(o_god.sfx_settings_open,1,false); audio_sound_gain(global.id_settings,global.maxVolumeSfx,0)

#macro		CHOOSE_ANY		choose(PAWN,ROOK,KNIGHT,BISHOP,QUEEN,KING,SOLDIER,EMPEROR,MOUSE) //6899 CHANGE WHEN ADDING NEW PIECES

//###################
global.debug=false
global.turn=0 //even whites, odd blacks
global.selectedPiece=""
global.reference=0
global.typeSelec=NONE
//###################
tileX=0
tileY=0
ableTile="Can't move"
zoom=1
turnString=WHITES
//###################
#macro		FREE					"Can move there!"
#macro		NOTFREE			"Can't move there..."
#macro		EATABLE			"Can eat!"

scr_shiganshina_walls() //This creates a border around the map after the wrapping tile