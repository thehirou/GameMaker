draw_self()

draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text(x,y-global.nameHeight,playerUsername)
if receivedAfkState=1
{
draw_text(x,y+25,"(AFK) "+string(receivedDisconnectCountdown))
}
draw_set_halign(fa_left)

var spaceBetweenNameAndMsg=20
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text_ext(x,y-global.nameHeight-spaceBetweenNameAndMsg,receivedMsg,15,250)
draw_set_halign(fa_left)