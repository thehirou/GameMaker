draw_set_font(consolas)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text(room_width/2,room_height/2,"Loading...")

if timer>60 //Increase if load time increases idk lol
{
	room_goto(menu)
	time_source_stop(loadTimeSource)
}