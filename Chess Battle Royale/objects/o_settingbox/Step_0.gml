if global.debug{image_alpha=0.2}else{image_alpha=0}

if global.settings=false{
x=camera_get_view_x(view_camera[0])+610
y=camera_get_view_y(view_camera[0])+12}else{x=9999999}

#region INIT SETTINGS
if enter=true
{

spd+=4
rot+=spd

}else{
	once=true
	spd=2
	rot-=10}
	
if round(rot)>44 and once=true
{
	SND_CLANK
	once=false
}

if enter=true and mouse_check_button_pressed(mb_left) and o_wait.wait=false //owait false should not let the player open settings if a piece is moving
{
	hideIcon=true
	SND_SETTINGS
	global.settings=true
}

if hideIcon=true
{
xIcon+=16	
}else{xIcon-=16}
#endregion

#region SETTINGS

if global.settings=true
{

if keyboard_check_pressed(vk_escape){global.settings=false}

guiSpd+=16
yGui+=guiSpd

}else{
hideIcon=false
guiSpd=8
yGui-=64}

#endregion