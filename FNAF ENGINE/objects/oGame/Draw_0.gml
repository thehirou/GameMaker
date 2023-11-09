var half=room_width/2 //Probably will have to change this
var vert=900
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

if leftSide=true
{
draw_text(90,130,"Able to access controls located to the left")	
}

if rightSide=true
{
draw_text(90,130,"Able to access controls located to the right")	
}

//ALWAYS RUNNING SO THE TRANSITIONS BETWEEN CAMERA CHANGES ARE SEAMLESS
if global.currentViewportPans=true
{
percent[0]+=1/60/panningDuration
}else{percent[0]=0}
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
//CAMERA OVERLAY ON TOP OF EVERYTHING (EXCEPT VFX)
draw_sprite(oManager.sprCameraOverlay1,0,0,0)
layer_set_visible(layer_get_id("CamOverlay"),true)
with(camOverlayInstance){draw_self();}
}
else
{
layer_set_visible(layer_get_id("CamOverlay"),false)
}

