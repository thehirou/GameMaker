draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if global.currentRoom="none"
{
draw_text(640/2,(480/2)-20,global.mainMenuMsg)
timer[0]++

if timer[0]>60*7
{
var warning="\nPressing ENTER and can't join? Spam ENTER or refresh the page."
global.mainMenuMsg="Welcome "+string(oPlayer.setUser)+"!\n"+"Press ENTER to join the server."+warning
}
}
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)

if global.debug
{
var maxClients=4
var s=15
draw_set_valign(fa_top)
draw_text(10,s*1,"Room: "+string(global.currentRoom))
draw_text(10,s*2,"Clients: "+string(global.peopleConnected)+"/"+string(maxClients))
}

if clickedSomewhere=false
{
draw_set_valign(fa_top)
draw_text(10,15,"(Left click anywhere to enable sound.)")
}

if global.playerState=state.texting
{
draw_set_alpha(0.4)
draw_set_color(c_black)
draw_rectangle(0,0,640,480-50,false)
draw_set_color(c_white)
draw_set_alpha(1)
}

for (var i = 0; i < maxChatLog; ++i) {
	draw_set_alpha(((maxChatLog-i)/20)*afkOpacity)
    draw_text_ext(10,(430-i*15)-25,global.chat[i],15,500)
	draw_set_alpha(1)
}

/*
draw_set_valign(fa_bottom)
draw_set_halign(fa_left)
draw_text_ext(10,460-30,global.chatLog,15,500)
draw_set_halign(fa_left)