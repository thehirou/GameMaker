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
draw_text(640/2,(480/2)-20,crash_warning+"Set your username:\n"+string(global.inputField)+string(blinkingLittleShit))
}
else
{
draw_text(640/2,(480/2)-20,initText)
}
draw_text_color(640/2,480-20,global.version+" "+global.updateName+" | "+global.legal,c_white,c_white,c_white,c_white,0.5)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)

fadeIn-=0.05
draw_set_alpha(fadeIn)
draw_rectangle_color(0,0,999,999,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)