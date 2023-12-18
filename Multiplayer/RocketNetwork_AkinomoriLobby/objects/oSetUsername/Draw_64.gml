draw_set_font(fntDefault)

/*
draw_rectangle_color(0,480-40,640,480,
c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)
*/


global.font_height=15
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if allow=true
{
draw_text(640/2,(480/2)-20,"Set your username:\n"+string(global.inputField)+string(blinkingLittleShit))
}
else
{
draw_text(640/2,(480/2)-20,"Click anywhere to continue.")
}
draw_text_color(640/2,480-20,version+" "+updateName+" | "+legal,c_white,c_white,c_white,c_white,0.5)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)

