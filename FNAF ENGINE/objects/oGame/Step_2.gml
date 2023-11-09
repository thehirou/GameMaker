var _max=-150
horizontalMovement=clamp(horizontalMovement,_max,abs(_max))

show_debug_message(horizontalMovement)

if horizontalMovement=_max and global.openCamera=false //Either way the horizontalMovement gets resetted to 0 if the camera is opened but just in case...
{
rightSide=true
}else{rightSide=false}

if horizontalMovement=abs(_max) and global.openCamera=false
{
leftSide=true
}else{leftSide=false}

if global.openCamera!=oldGlobalOpenCamera
{
	horizontalMovement=0
}