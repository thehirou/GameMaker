if global.debug=false
{
	image_alpha=0	
}

if global.debug=true
{
	image_alpha=1	
}

var delAble=instance_place(x,y,o_able)
var delEat=instance_place(x,y,o_eat)

if instance_place(x,y,delAble)
{
	instance_destroy(delAble)	
}

if instance_place(x,y,delEat)
{
	instance_destroy(delEat)	
}