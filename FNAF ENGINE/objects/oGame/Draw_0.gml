var half=room_width/2 //Probably will have to change this
var vert=1000
draw_sprite(oManager.sprPreOffice,0,half+horizontalMovement,vert+verticalMovement)

if global.ventFocus=true
{
	verticalMovement=lerp(verticalMovement,280,0.1)
	horizontalMovement=lerp(horizontalMovement,0,0.1)
}
else
{
	verticalMovement=lerp(verticalMovement,0,0.1)
}

//ALWAYS RUNNING SO THE TRANSITIONS BETWEEN CAMERA CHANGES ARE SEAMLESS
percent[0]+=1/60/panningDuration
if percent[0]>1{percent[0]=0}

position=animcurve_channel_evaluate(curve[0],percent[0])

var _start=-420
var _end=abs(_start)
var _distance=_end-_start

horizontalViewportPanning=_start+(_distance*position);

if displayMap=true and global.openCamera=true
{
//CAMERA VIEWPORT (PLACEHOLDER) 6899
draw_sprite(global.currentViewport,0,HALF_HVIEW+horizontalViewportPanning,0)
//MAP-ON TOP OF CAMERA VIEWPORT
draw_sprite(oManager.sprMap,0,1500,750)	
}

