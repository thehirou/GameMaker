image_xscale=0.3
image_yscale=0.3

menuY=0
menuX=0

xSaved=x
ySaved=y

xValue=xSaved
yValue=ySaved

chosenVel=30

angleRandom=0
usedAngle=0
textAngle=usedAngle

done=false

timer[0]=0
timer[1]=0
timer[2]=0

state="idling"

selection=0

alchemyColor=make_color_rgb(162, 237, 140)

enum menu
{
    alchemy,
    attack,
    info,
    run
}

numberOfLoops=0

windowSize=1

window_set_size(640*windowSize,480*windowSize)
window_center()

