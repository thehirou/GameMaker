//draw_sprite_ext(spr_px,0,0,0,120,360,0,$202020,1)
if global.debug{
draw_text(20,20,"X: "+string(tileX)+" / Y: "+string(tileY)+"\nSpawn: "+string(round(o_spawn.x/20))+" / "+string(round(o_spawn.y/20))
+"\n"+string(global.freespace)+"\n"+string(global.selectedPiece)+"\n"+string(global.selectedColor)+"\nTurn: "+string(global.turn)+" / "+string(turnString)+" turn's\n"+string(mouse_x)+
"\nID: "+string(global.reference)+"\nType Launcher: "+string(global.typeSelec))
	draw_text(0,0,"debug mode")	

}


draw_sprite_ext(spr_pieceGUI,0,0,0,3,3,0,c_white,1)