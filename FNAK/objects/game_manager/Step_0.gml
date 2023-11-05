window_set_cursor(cr_none)
if global.seecamera=true
{
instance_destroy(camera_1);	
createmap=true
}

if createmap=true and !instance_exists(map_obj) and global.seecamera=true
{
instance_create_depth(0,-720,-998,map_obj)	
}

if instance_exists(map_obj) and yplus=true
{
	map_obj.y+=60;
	
	if map_obj.y>=0
	{
	yplus=false
	map_obj.y=0
	}
	
}

if createmap=true and global.seecamera and !instance_exists(camera_int_close)
{
instance_create_depth(0,0,-999,camera_int_close)	
}


if global.seecamera=false and !instance_exists(camera_1)
{
createmap=false
yplus=true
instance_destroy(sala_1);
instance_destroy(placeholder_obj);
instance_destroy(sala_2);
instance_destroy(sala_3);
instance_destroy(sala_4);
instance_destroy(kitchen);
instance_destroy(sala_5);
instance_destroy(sala_6);
instance_destroy(sala_7);
}


#region //botones

if global.seecamera=true and !instance_exists(sala_1)
{
instance_create_depth(720,242,-999,sala_1)	
}

if global.seecamera=true and !instance_exists(sala_2)
{
instance_create_depth(913,148,-999,sala_2)	
}

if global.seecamera=true and !instance_exists(sala_3)
{
instance_create_depth(1012,245,-999,sala_3)	
}

if global.seecamera=true and !instance_exists(sala_4)
{
instance_create_depth(1207,191,-999,sala_4)	
}

if global.seecamera=true and !instance_exists(sala_5)
{
instance_create_depth(1102,372,-999,sala_5)	
}

if global.seecamera=true and !instance_exists(sala_6)
{
instance_create_depth(846,508,-999,sala_6)	
}

if global.seecamera=true and !instance_exists(sala_7)
{
instance_create_depth(909,601,-999,sala_7)	
}


#endregion



if instance_exists(map_obj) and global.seecamera=false
{
instance_destroy(map_obj)	
}


