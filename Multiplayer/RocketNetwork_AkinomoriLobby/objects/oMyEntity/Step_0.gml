/// @description Update this entity as much as you want

/*
* Update this struct
*/


if type=entity.emoji
{
entityProperties = {
	_entityId : entityId,
	//Add stuff here like type / x / y / whatever
	_type : type,
	_x : x,
	_y : y,
	rec_sprite_index:sprite_index,
	rec_image_alpha:image_alpha,
	rec_image_xscale:image_xscale,
	rec_image_yscale:image_yscale,
	rec_image_index:image_index,
	rec_image_speed:image_speed,
}	

x=oPlayer.x
y=oPlayer.y-oPlayer.sprite_height+16

timer[0]++

if timer[0]<3*60
{
image_alpha=lerp(image_alpha,1,0.1)
}else{image_alpha=lerp(image_alpha,-0.6,0.1)}

if image_alpha<-0.2{instance_destroy(self)}

sprite_index=displayIcon
}

if type=entity.cursor
{
	
entityProperties = {
	_entityId : entityId,
	//Add stuff here like type / x / y / whatever
	_type : type,
	_x : mouse_x,
	_y : mouse_y,
	rec_sprite_index:sprite_index,
	rec_image_alpha:image_alpha,
	rec_image_xscale:image_xscale,
	rec_image_yscale:image_yscale,
	rec_image_index:image_index,
	rec_image_speed:image_speed,
}
image_index=0
image_speed=0
image_alpha=1
x=mouse_x
y=mouse_y
sprite_index=sprCursor
}

















