horizontalMovement=clamp(horizontalMovement,-540,540)

if global.openCamera!=oldGlobalOpenCamera
{
	horizontalMovement=0
}