if endAlpha=true
{
	alpha_1+=0.01

	if alpha_1>1{alpha_2+=0.02}
	if alpha_1=1{repeat(1) audio_play_sound(sfx_intro,1,false);}
	if alpha_2>4{alpha_1=1;alpha_2=1;endAlpha=false}
}

if endAlpha=false
{
	alpha_1-=0.01	
	alpha_2-=0.01	
}

if alpha_1<-1
{
	room_goto(rm_mainMenu)	
}