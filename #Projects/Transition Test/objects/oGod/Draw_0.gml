shadowOffset=10
shadowColor=make_color_rgb(37, 28, 15)
shadowAlpha=0.3
shadowScale=0

textAngle=lerp(textAngle,usedAngle,0.05)
draw_sprite_ext(sprAlchemy,0,x-shadowOffset/2,y+shadowOffset/2,image_xscale,image_yscale,-textAngle,shadowColor,shadowAlpha)
draw_sprite_ext(sprAlchemy,0,x,y,image_xscale,image_yscale,-textAngle,alchemyColor,1)

draw_sprite_ext(sprite_index,image_index,x-shadowOffset,y+shadowOffset,image_xscale-shadowScale,image_yscale-shadowScale,image_angle,shadowColor,shadowAlpha)

draw_self()
