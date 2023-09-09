if global.debug=true{
image_alpha=0.8	
}else{image_alpha=0}

if instance_exists(o_followcamera) and once=true
{
	once=false
	x=o_followcamera.x //Just the init
	y=o_followcamera.y
}