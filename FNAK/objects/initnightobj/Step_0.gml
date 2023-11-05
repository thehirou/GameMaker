audio_stop_sound(MenuBgmAlt);
if back=false
{
timer++
}

if timer>120
{
alphaText+=0.02

if alphaText>2
	{
		timer=0
		back=true
	}
}

if back=true
{
alphaText-=0.01	
if alphaText<-2
{
room_goto(game_prot)	
}
}