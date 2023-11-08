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

if displayMap=true
{
draw_sprite(oManager.sprMap,0,1500,750)	
}

