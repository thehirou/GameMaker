/// @description Do something with this entity
try{
if(entityProperties!=-1){
var EP = json_parse(entityProperties)

/*
This is every instance of another entity in the room you are in
You can use the key-value pairs in these properties
to do stuff here. For starters, try updating
x = SP._x
y = SP._y
or whatever you want to update in any way from
your entityProperties
*/

layer="Emojis"
x=						EP._x
y=						EP._y
sprite_index =			EP.rec_sprite_index
image_alpha=			EP.rec_image_alpha
image_xscale=			EP.rec_image_xscale
image_yscale=			EP.rec_image_yscale
image_index=			EP.rec_image_index
image_speed=			EP.rec_image_speed
type=					EP._type

/*STUPID
timer++

if timer>1*60
{
x = lerp(x,real(EP._x),0.5)
y = lerp(y,real(EP._y),0.5)
}
else
{
x=EP._x
y=EP._y
}

sprite_index = EP.rec_sprite_index
image_alpha=EP.rec_image_alpha
image_xscale=	EP.rec_image_xscale
image_yscale=	EP.rec_image_yscale
*/

	
	
	
	
	
	


}
}catch(e){

	show_debug_message("Error in oOtherPlayersEntity Step. This can be temporary but if it keeps repeating, check your code!")
	show_debug_message(e)
}
//DO NOT PUT YOUR CODE AFTER THIS LINE

