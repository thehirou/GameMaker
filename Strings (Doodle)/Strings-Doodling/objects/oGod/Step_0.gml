x=mouse_x
y=mouse_y

if keyboard_check_pressed(ord("R")){game_restart()}

show_debug_message(string(mouse_x)+" / "+string(mouse_y))

if mouse_x=640/2 and mouse_y=640/2
{
	getFromString="haHA!haHA"
}else{getFromString="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"}

if mouse_x!=xprevious or mouse_y!=yprevious
{
	_string=""
	for (var i = 0; i < _condition*_condition; ++i)
	{
	  _string+=string_char_at(getFromString,irandom_range(0,string_length(getFromString)))+" "
	}	
}

if layer=layer_get_id("Instances_1")
{
_alp=0.5	
}