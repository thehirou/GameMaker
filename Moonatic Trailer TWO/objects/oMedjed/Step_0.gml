//BLINKING CODE
var _random=irandom_range(0,120)

if _random=10
{
state="blinking"	
}

if state="blinking"
{
var _time=30
timer++
if timer> _time
{
state="notblinking"
timer=0	
}
}

if state="notblinking"
{
image_index=0
}else{image_index=1}