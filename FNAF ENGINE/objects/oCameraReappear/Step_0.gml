if global.openCamera=true 
{
y=init_y
}else{y=999999}


if place_meeting(x,y,oCursor) and global.openCamera=true
{
toggled=true
oCameraClose.y=oCameraClose.init_y
y=99999
}else{toggled=false}

if global.debug=true
{
image_alpha=1	
}
else
{
image_alpha=0	
}