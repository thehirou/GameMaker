//KITCHEN

if global.numcamera=3 and global.seecamera=true and !instance_exists(kitchen)
{
instance_create_depth(0,0,30,kitchen)	
}
if global.numcamera !=3
{
instance_destroy(kitchen)	
}

//1A
if global.numcamera=0 and global.seecamera=true and !instance_exists(placeholder_obj)
{
instance_create_depth(0,0,30,placeholder_obj)	
}
if global.numcamera !=0
{
instance_destroy(placeholder_obj)	
}