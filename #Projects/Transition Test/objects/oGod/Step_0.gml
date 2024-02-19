#region MENU MANAGER
if keyboard_check_pressed(vk_down){selection++}
if keyboard_check_pressed(vk_up){selection--}
show_debug_message(xValue)
switch (selection) {
    case menu.alchemy:
        menuY=0
		menuX=0
        break;
    case menu.attack:
        menuY=-400
		menuX=0
        break;
    case menu.info:
        menuY=-800
		menuX=0
        break;
    case menu.run:
        menuY=-1200
		menuX=0
        break;
    default:
        // code here
        break;
}


#endregion

#region ALCHEMY
timer[2]++
if timer[2]=chosenVel
{
xValue=irandom_range(xSaved-5,xSaved+5)
yValue=irandom_range(ySaved-5,ySaved+5)
timer[2]=0
chosenVel=choose(15,30,60,120)
}

y=lerp(y,yValue+menuY,0.1)
x=lerp(x,xValue+menuX,0.1)


if state="idling"
{
	
timer[1]++
if timer[1]>choose(60*4,60*5,60*6)
{
timer[0]=0
timer[1]=0
state="transition"	
}
	
timer[0]++
if timer[0]=30
{
angleRandom=irandom_range(-20,20)
timer[0]=0
}

usedAngle=lerp(image_angle,angleRandom,0.01)
image_angle=usedAngle
}

if state="transition"
{
var loops=1
image_angle=lerp(image_angle,360*loops,0.1)

if image_angle>359*loops/2 and done=false
{
numberOfLoops=image_angle
var chosen=choose(sprAeris,sprPiro,sprTerra,sprAqua)	
if chosen!=sprite_index and done=false
{
image_angle=0
sprite_index=chosen
switch (sprite_index) {
    case sprTerra:
        alchemyColor=make_color_rgb(162, 237, 140)
        break;
    case sprAeris:
        alchemyColor=make_color_rgb(238, 245, 122)
        break;
    case sprPiro:
		alchemyColor=make_color_rgb(245, 140, 122)
        break;
    case sprAqua:
        alchemyColor=make_color_rgb(122, 123, 245)
        break;
    default:
        alchemyColor=make_color_rgb(0, 0, 0)
        break;
}
done=true
}
}

if done=true
{
done=false
state="idling"	
timer[0]=29
}
}
#endregion