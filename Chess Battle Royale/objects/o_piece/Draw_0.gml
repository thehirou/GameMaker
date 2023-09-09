shader_set(sh_palette)

texture_set_stage(palette_swap_sampler, texture_palette);

shader_set_uniform_f(v_offset,v_normal);

draw_self()
shader_reset()

draw_set_alpha(0.2)
//draw_rectangle_color(bbox_left,bbox_top,bbox_right-1,bbox_bottom-1,ownColor,ownColor,ownColor,ownColor,false)
draw_set_alpha(1)



if mouseHover=true and global.debug
{
	global.reference=refID[1]
	global.typeSelec=refID[0]
	
	var itsXtile=round((x)/20)
	var itsYtile=round((y)/20)
	draw_set_halign(fa_center)
	
	if selectedPiece=false{selectedPieceString="Not Selected"}else{selectedPieceString="Selected"}
	
	draw_text(x,y-80,string(itsXtile)+"/"+string(itsYtile)+"\n"+string(selectedPieceString)+"\n"+string(launcher)+" / "+string(dangerString)+" / X: "+string(x)+" / Y: "+string(y))
	draw_set_halign(fa_left)
}