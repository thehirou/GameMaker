timer++
image_speed=0
image_index=0

if timer>irandom_range(60,120)
{
	image_index=irandom_range(1,6)
	timer2++
}

if timer2>irandom_range(30,60)
{
	timer=0
	timer2=0
	image_index=0
}