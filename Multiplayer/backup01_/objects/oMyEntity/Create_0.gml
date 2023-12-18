/// @description What this entity has?
// You can write your code in this editor

clientId = global.clientId; //this is your entity, like a bullet
oBrain.entitiesCreated++;
entityId = oBrain.entitiesCreated
array_push(oBrain.entitiesActive , entityId);


displayIcon=sprArrow
timer[0]=0
image_alpha=0
sprite_index=sprArrow
image_xscale=1
image_yscale=1

/*
* Add your variables in this entityproperties
*/

entityProperties = {
	_entityId : entityId,
	rec_sprite_index:sprite_index,
	rec_image_alpha:image_alpha,
	rec_image_xscale:image_xscale,
	rec_image_yscale:image_yscale
	//Add stuff here like type / x / y / whatever


}