
if global.debug=true
{
	if 	instance_position(mouse_x, mouse_y,id) and mouse_check_button(mb_left)
	{
		global.lastCheck=clientId
		global.lastCheckUser=string(playerUsername)
		var debugIDget="ID: "+string(clientId)+"\nUsername: "+string(playerUsername)
		var padding=20
		draw_set_valign(fa_top)
		draw_set_halign(fa_left)
		
		draw_rectangle_color(20+20-padding,100,string_width(debugIDget)+padding*3,100+string_length(debugIDget)+padding*2,
		c_blue,c_blue,c_blue,c_blue,false)
		
		draw_text(20+padding, 100+padding,string(debugIDget))
	}
}