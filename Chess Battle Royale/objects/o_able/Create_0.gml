image_xscale=1
image_yscale=1
image_alpha=1
image_index=2

if place_meeting(x,y,o_piece)
{
	instance_destroy(id)	
}

if place_meeting(x,y,o_blackPixel)
{
	instance_destroy(id)	
}

mouseEnter=false