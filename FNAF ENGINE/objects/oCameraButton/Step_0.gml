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
if KEY_LEFTCLICK{show_message($"Selected CAMERA {string(camID)}")}	//DEBUG
}else{cursorHover=false}