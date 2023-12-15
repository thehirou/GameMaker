if global.playerState=state.texting
{
draw_set_color(c_black)
draw_rectangle(0,480-50,640,480,false)
draw_set_color(c_white)
draw_set_valign(fa_bottom)
draw_set_halign(fa_left)
//draw_text_ext(10,460,msg+blinkingMotherfucker,15,5000)
draw_text(10,462,msg+blinkingMotherfucker)
draw_set_halign(fa_left)
}