/*

Shortcut for creating an instance when that instance doesn't exist yet, basically it just creates it once.

*/


function instance_create_depth_once(x_,y_,depth_,obj_,struct_=false){

if !instance_exists(obj_)
	{
		var idToReturn=instance_create_depth(x_,y_,depth_,obj_,struct_)
		return idToReturn.id
	}

}

function instance_create_layer_once(x_,y_,layer_,obj_,struct_=false){

if !instance_exists(obj_)
	{
		var idToReturn=instance_create_depth(x_,y_,layer_,obj_,struct_)
		return idToReturn.id
	}

}