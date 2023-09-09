//RULES
if tileType=tiles.riverside and global.childrenStop=false
{
	with(checkYMIN)
	{
		if !place_meeting(x,y,oTileParent) 
		{
			instance_create_layer(x,y,layer,CHOOSE_RIVERSIDE_OPTIONS)
		}
	}
	
	with(checkYPLUS)
	{
		if !place_meeting(x,y,oTileParent) 
		{
			instance_create_layer(x,y,layer,CHOOSE_RIVERSIDE_OPTIONS)
		}
	}
	
	with(checkXPLUS)
	{
		if !place_meeting(x,y,oTileParent) 
		{
			instance_create_layer(x,y,layer,CHOOSE_RIVERSIDE_OPTIONS)
		}
	}
	
	with(checkXMIN)
	{
		if !place_meeting(x,y,oTileParent) 
		{
			instance_create_layer(x,y,layer,CHOOSE_RIVERSIDE_OPTIONS)
		}
	}
	
}else{instance_destroy(id)}


