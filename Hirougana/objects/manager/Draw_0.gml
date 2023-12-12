if global.inLevel!=true and global.highScore>0
{
	draw_set_font(fuentePreguntas)
	draw_set_valign(fa_center)
	draw_set_halign(fa_center)
	draw_text_transformed(room_width/2,60,"HIGHSCORE: "+string(global.highScore)+"!",1,1,0)
		//ADD A TILTING EFFECT TO THE ANGLE THINGY FOR HIGHSCORE 6899
}

if global.inLevel!=true
{
	draw_set_valign(fa_left)
	draw_set_halign(fa_left)
	draw_set_font(fontDef);
	draw_text(7,room_height-23,"Alpha 0.2")
}


if debug=true
{
	draw_set_font(fontDef); //DEBUG FONT
	draw_text(20,place1,prompt1)
	draw_text(20,place2,prompt2)
	draw_text(20,place3,prompt3)
	draw_text(20,80,"---\n"+answer) //Romanic
}

draw_set_font(font);
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text((room_width/2)+xQuestionNara,(room_height/2)-30+yAnimation,string(question)) //Hiragana

if drawTitle=true
{
draw_set_font(font4);

if	global.inLevel=false

	{
		draw_text_ext_color(room_width/2,room_height-60,selectText,5,500,c_white,c_white,c_white,c_white,animAlpha)
	}
	
}