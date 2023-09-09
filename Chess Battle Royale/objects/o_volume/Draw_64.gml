var ySep=30
var xOffset=120+hideBars
var yOffset=90

draw_healthbar(30+xOffset		,yOffset					,130+xOffset+40		,yOffset+10					,round(global.maxVolumeMusic*100),c_black,c_blue,c_blue,0,true,true)
draw_healthbar(30+xOffset		,yOffset+ySep		,130+xOffset+40		,yOffset+10+ySep		,round(global.maxVolumeSfx*100),c_black,c_blue,c_blue,0,true,true)
