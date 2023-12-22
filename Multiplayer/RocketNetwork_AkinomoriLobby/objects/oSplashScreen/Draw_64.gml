timer++

if timer<2*60{logoAlpha=lerp(logoAlpha,1,0.05)}
if timer>4*60{logoAlpha=lerp(logoAlpha,0,0.05)}


if timer>6*60 and timer<8*60{controlAlpha=lerp(controlAlpha,1,0.05)}

if timer>6*60 and mouse_check_button_pressed(mb_any)
{
	room_goto(rmSetUsername)
}

draw_set_alpha(logoAlpha)
draw_sprite(sprRocketLogo,0,640/2,480/2)
draw_set_alpha(1)

draw_set_alpha(controlAlpha)
draw_sprite(sprControlGuide,0,0,0)
draw_set_alpha(1)