timer++

if timer<2*60{logoAlpha=lerp(logoAlpha,1,0.05)}
if timer>4*60{logoAlpha=lerp(logoAlpha,0,0.05)}
if timer>6*60{room_goto(rmSetUsername)}

draw_set_alpha(logoAlpha)
draw_sprite(sprRocketLogo,0,640/2,480/2)
draw_set_alpha(1)