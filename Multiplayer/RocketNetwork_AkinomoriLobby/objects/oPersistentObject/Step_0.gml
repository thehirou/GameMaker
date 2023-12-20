/// @description Do something with this persistent object

try{
if(persistentObjectProperties!=-1){
var pOp = json_parse(persistentObjectProperties)

/*
This is every instance of a persistent server object  in the room you are in
You can use the key-value pairs in these properties
to do stuff here. For starters, try updating
x = pOp._x
y = pOp._x
or whatever you want to update in any way 

Maybe someone left a ball in the room? This object can represent the ball.
The difference in a persistent object from normal entities is that
pO exist in the room even after the player exists the room or disconnects the server.
They are purely server side objects  which will stay unless you delete them

To create and edit these special objects use the CreatePersistentObject(), EditPersistentObject()!!
*/

type=pOp._type

if type!=persistype.chatlogger
{
storedJson="null" //ALWAYS NULL IF TYPE IS NOT CHATLOGGER
}

if type=persistype.blank
{
x = real(pOp._x)
y = real(pOp._y)
image_xscale = real(pOp._image_xscale)
image_yscale = real(pOp._image_yscale)
sprite_index = real(pOp._sprite_index)
}
	
if type=persistype.chatlogger
{	
	if global.debug{image_alpha=1}else{image_alpha=0}
	x=1000
	y=1000
	//storedJson=""
}
	
	
	
	
	
	
	


}
}catch(e){

	show_debug_message("Error in oPersistentObject Step. This can be temporary but if it keeps repeating, check your code!")
	show_debug_message(e)
}
//DO NOT PUT YOUR CODE AFTER THIS LINE

