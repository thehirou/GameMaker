drawRectangleStroke(x-clickJuiceArrow,y,x+70+clickJuiceArrow2,y+70,c_white,7)

draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_set_font(manager.font2) //japanese small
draw_text(x+sprite_width/2,y+sprite_height/2,string(icon))

if pos!=0
{
	draw_text(x-30-moveArrowJuice-clickJuiceArrow,y+sprite_height/2,"<")
}

if pos!=cases
{
	draw_text(x+sprite_width+30+moveArrowJuice+clickJuiceArrow2,y+sprite_height/2,">")
}

draw_set_font(font1) //arial bold
draw_text(x+sprite_width/2,y+sprite_height+50,string(desc))

if pos>0
{
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_font(font4);
}
