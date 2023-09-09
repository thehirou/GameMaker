//RULES
if tileType=tiles.mountain and global.childrenStop=false
{
	with(checkYMIN)
	{
		if !place_meeting(x,y,oTileParent) 
		{
			instance_create_layer(x,y,layer,CHOOSE_MOUNTAIN_OPTIONS)
		}
	}
	
	with(checkYPLUS)
	{
		if !place_meeting(x,y,oTileParent) 
		{
			instance_create_layer(x,y,layer,CHOOSE_MOUNTAIN_OPTIONS)
		}
	}
	
	with(checkXPLUS)
	{
		if !place_meeting(x,y,oTileParent) 
		{
			instance_create_layer(x,y,layer,CHOOSE_MOUNTAIN_OPTIONS)
		}
	}
	
	with(checkXMIN)
	{
		if !place_meeting(x,y,oTileParent) 
		{
			instance_create_layer(x,y,layer,CHOOSE_MOUNTAIN_OPTIONS)
		}
	}
	
}else{instance_destroy(id)}

