speed=5
direction=45

_rad=10
_col=choose(c_red,c_aqua,c_green,c_blue,c_lime,c_fuchsia,c_yellow)

//addLine SCRIPT
state=1

random_set_seed(irandom_range(0,999))
x=irandom_range(0,room_width)
y=irandom_range(0,room_height)

_summonX=x
_summonY=y

global.lineTrailX[1]=_summonX
global.lineTrailY[1]=_summonY