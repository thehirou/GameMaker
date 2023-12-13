draw_self()

if global.currentRoom!="none"
{
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text(x,y-global.nameHeight,thisUsername)
if afkState=1
{
draw_text(x,y+25,"(AFK) "+string(disconnectCountdown))
}
draw_set_halign(fa_left)

var msgDuration=60*5

if sentMsg!=""
{
var spaceBetweenNameAndMsg=20
timerMsg++;
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text_ext(x,y-global.nameHeight-spaceBetweenNameAndMsg,sentMsg,15,250)
draw_set_halign(fa_left)
}

if timerMsg>msgDuration
{
sentMsg=""
timerMsg=0	
}
}