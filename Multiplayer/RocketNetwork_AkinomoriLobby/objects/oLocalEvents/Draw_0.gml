if global.currentEvent=event.mantana
{
	with(instNpcMantana)
	{
		draw_set_halign(fa_center)
		draw_set_valign(fa_bottom)
		var _padUs=5
		var eventUser="Mantana"
		draw_set_alpha(0.5)
		draw_rectangle_color(x-(string_width(eventUser)/2)-_padUs,y-global.nameHeight+_padUs-3,x+(string_width(eventUser)/2)+_padUs,y-global.nameHeight-23,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
		draw_text(x,y-global.nameHeight,eventUser)
	}
}