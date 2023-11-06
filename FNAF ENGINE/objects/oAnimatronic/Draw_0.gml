draw_self();
draw_set_halign(fa_center)
draw_text(x,y-sprite_height/1.25,string(identity)+": "+name)
draw_set_halign(fa_left)

draw_set_color(debugColor)
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1)
draw_set_color(c_white)