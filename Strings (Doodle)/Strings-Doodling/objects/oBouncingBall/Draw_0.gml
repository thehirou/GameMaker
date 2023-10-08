if state>1
{
	draw_set_color(c_aqua)
	draw_line_width(
	global.lineTrailX[state-1],
	global.lineTrailY[state-1],
	global.lineTrailX[state],
	global.lineTrailY[state],
	2
	)
	draw_set_color(c_white)
}

draw_circle_color(x,y,_rad,_col,_col,false)