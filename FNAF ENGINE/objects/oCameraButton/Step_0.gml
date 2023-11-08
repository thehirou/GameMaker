if global.openCamera=true
{
visible=true
if collision_rectangle(
x-collisionBoxW/2,
y-collisionBoxH/2,
x+collisionBoxW/2,
y+collisionBoxH/2,
oCursor,
false,
false
)
{
cursorHover=true
if KEY_LEFTCLICK
{
global.currentCamera=camID	
}
}
else
{cursorHover=false}
}
else
{
visible=false	
}