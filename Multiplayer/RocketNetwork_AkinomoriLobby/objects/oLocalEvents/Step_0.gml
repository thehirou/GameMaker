//Event conditions
if current_hour=3 and current_minute<33
{
global.currentEvent=event.mantana
}
else
{
global.currentEvent=event.noevent
}

if global.currentEvent=event.mantana and once[event.mantana]=true
{
	//This will happen only for one frame
	if instance_exists(oOtherPlayer)
	{
		with (oOtherPlayer)
		{
		var thisClientId = clientId
		SendMessageToClient(thisClientId,"<Server> "+"Mantana"+" joined the room.") //6899 for some reason I don't need to add a line break here???
		}
	}
	once[event.mantana]=false
}

if global.currentEvent=event.mantana
{

	with(instNpcMantana)
	{
		sprite_index=sprMantana
		image_xscale=2
		image_yscale=2
		x=1525
		y=1000
		image_alpha=lerp(image_alpha,1,0.05)
	}
}
else
{
once[event.mantana]=true
//6899 Make them dissapear by walking to the right
instNpcMantana.x=99999
instNpcMantana.y=99999
instNpcMantana.image_alpha=0
}