if endMenu=false
{
	draw_txt_color(20,20,"Selected option: "+string(optionstring),c_yellow)
	if menu!="none"{draw_txt_color(20,40,menu,c_yellow)}

	if menu="alchemy"
	{
	var drawX = 20+/*padding*/20;
	var drawY = 60;

	for (var i = 0; i < array_length(defaultAlchemy); i++) {
	    draw_text(drawX, drawY + i * 20, defaultAlchemy[i]);
	}

	//selector
	draw_txt_color(20,60+selectorVertPosition,">",c_yellow)
	}
}

draw_set_halign(fa_right)
draw_txt_color(640-20,20,"LIFE: "+string(lifePoints)+"/"+string(MAXlifePoints)+"\nSANITY: "+string(alchPoints)+"/"+string(MAXalchPoints),c_red)
draw_set_halign(fa_left)

if endMenu=true
{

if menu="alchemy" or menu="combo"
{
	draw_text(20, 480-40, defaultAlchemy[optionAlchemy]);
}

draw_set_valign(fa_bottom)
draw_set_color(c_black)
draw_text_ext(20,480-80,logstring,-20,300)
draw_set_color(c_white)
draw_set_valign(fa_top)

}