if global.debug
{
	with(all)
	{
	//draw_text(x,y,"ID: "+string(id))	
	}
}

if global.currentRoom="none"
{
draw_rectangle_color(0,0,1000,1000,c_black,c_black,c_black,c_black,false) //6899 Change with some kind of image
with(loadingInstance){draw_self()}
}