/// @description Update this entity as much as you want

/*
* Update this struct
*/
entityProperties = {
	_entityId : entityId,
	//Add stuff here like type / x / y / whatever
	_x : x,
	_y : y,
	rec_sprite_index:sprite_index,
	rec_image_alpha:image_alpha,
	rec_image_xscale:image_xscale,
	rec_image_yscale:image_yscale
}

x=oPlayer.x
y=oPlayer.y-oPlayer.sprite_height+16

timer[0]++

if timer[0]<3*60
{
image_alpha=lerp(image_alpha,1,0.1)
}else{image_alpha=lerp(image_alpha,-0.5,0.1)}

if image_alpha<-0.3{instance_destroy(self)}

sprite_index=displayIcon

















