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

	//Made local 6899, this probably doesn't work anymore since the chat is integrated into
	//the website and this array doesn't get send to the database
	array_insert(global.chat,0,"<Server> "+"Mantana"+" joined the room.")
	oManager.arrayChanged=true
	
	audio_play_sound(sndMantana,1,false,1)
	once[event.mantana]=false
}

if global.currentEvent=event.mantana
{

	with(instNpcMantana)
	{
		sprite_index=sprMantana
		image_xscale=2
		image_yscale=2
		x=180
		y=945
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