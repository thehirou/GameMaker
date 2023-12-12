


timer++

if timer>0 and timer <1*room_speed
{
alpha+=0.02
}

if timer >2*room_speed
{
alpha-=0.02
if alpha<-0.5
{
room_goto(Room1)	
}
}

