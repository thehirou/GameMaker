draw_set_font(fntDefault)
global.font_height=15
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(640/2,(480/2)-20,"Set your username:\n"+string(global.inputField)+string(blinkingLittleShit))
draw_text_color(640/2,480-20,version+" | "+legal,c_white,c_white,c_white,c_white,0.5)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)