if kicked=true
{
draw_set_halign(fa_center)
draw_text(640/2,480/2,global.disconnectReason)
kickedTimer++
if kickedTimer>120
{
kicked=false
kickedTimer=0
}
}

if instance_exists(localTextWarning)
{
with(localTextWarning)
{
draw_set_halign(fa_center)
//draw_text(640/2,30,"This is ALPHA, this has not been announced yet.")	
}
}

if global.serverFull=true
{
global.mainMenuMsg="Server is full, try again later."	
}

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if global.currentRoom="none"
{
draw_text(640/2,(480/2)-20,global.mainMenuMsg)
draw_set_halign(fa_left)
draw_set_halign(fa_center)
timer[0]++

if timer[0]>60*7 and global.serverFull=false
{
var warning="\n\nPressing ENTER and can't join?\n\nRNet servers must be closed or in maintenance.\n\nOr you're trying to log in mutiple times at once."
global.mainMenuMsg="Welcome "+string(oPlayer.setUser)+"!\n"+"Press ENTER to join the server."+warning
}
}



draw_set_halign(fa_left)
draw_set_valign(fa_bottom)

if global.debug
{
var maxClients=30
var s=15
draw_set_valign(fa_top)
draw_text(10,s*1,"Room: "+string(global.currentRoom))
draw_text(10,s*2,"Clients: "+string(global.peopleConnected)+"/"+string(maxClients))
draw_text(10,s*3,"Last player checked: "+string(global.lastCheck)+" ("+string(global.lastCheckUser)+")")
draw_text(10,s*4,"Player state: "+string(global.playerState))
}

if clickedSomewhere=false
{
draw_set_valign(fa_top)
//draw_text(10,15,"(Left click anywhere to enable sound.)")
}

if global.playerState=state.texting
{
draw_set_alpha(0.4)
draw_set_color(c_black)
draw_rectangle(0,0,640,480-50,false)
draw_set_color(c_white)
draw_set_alpha(1)
fullOpacityChat=10
}else{fullOpacityChat=0}


for (var i = 0; i < maxChatLog; ++i) {
	draw_set_valign(fa_middle)
	draw_set_alpha(((((maxChatLog-i)/40)*afkOpacity)*chatOpacity)+fullOpacityChat)
    draw_text(10,(430-i*global.font_height)-25,global.chat[i])
    //draw_text_ext(10,(430-i*15)-25,global.chat[i],15,500)
	draw_set_alpha(1)
}



if keyboard_check(vk_tab)
{
var _playerListX=20
var _playerListY=20
var _padding=5
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_alpha(0.5)
draw_rectangle_color(_playerListX-_padding,_playerListY-_padding,string_width(addUserToTheList)+_padding+20,string_height(addUserToTheList)+_padding+20,
c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_text(_playerListX, _playerListY, addUserToTheList);
draw_set_valign(fa_bottom)
}

iSettingsOpt1.activated		=false
iSettingsOpt2.activated		=false
iSettingsOpt3.activated		=false



if settings=true
{
draw_set_alpha(0.2)
draw_set_color(c_black)
draw_set_alpha(0.7)
draw_rectangle(0,0,700,700,false)
draw_rectangle(iMenux_y1.startX,iMenux_y1.startY,iMenux_y2.startX,iMenux_y2.startY,false)
draw_set_alpha(1)
draw_set_color(c_white)

draw_set_valign(fa_middle)
draw_set_halign(fa_center)

var sep = 16

draw_text(iSettingsOpt1.startX+sep,iSettingsOpt1.startY+sep,opt1)
draw_text(iSettingsOpt2.startX+sep,iSettingsOpt2.startY+sep,opt2)
draw_text(iSettingsOpt3.startX+sep,iSettingsOpt3.startY+sep,opt3)

draw_text(iSettingsOpt1L.startX+sep,iSettingsOpt1L.startY+sep,"<")
draw_text(iSettingsOpt2L.startX+sep,iSettingsOpt2L.startY+sep,"<")
draw_text(iSettingsOpt3L.startX+sep,iSettingsOpt3L.startY+sep,"<")

draw_text(iSettingsOpt1R.startX+sep,iSettingsOpt1R.startY+sep,">")
draw_text(iSettingsOpt2R.startX+sep,iSettingsOpt2R.startY+sep,">")
draw_text(iSettingsOpt3R.startX+sep,iSettingsOpt3R.startY+sep,">")

draw_set_valign(fa_bottom)
draw_set_halign(fa_left)


var _c=mouse_check_button_pressed(mb_left)


if instance_position(mouse_x, mouse_y,iSettingsOpt1L)	and	 _c{SND_CHANGEVAL; optValue1-=10}
if instance_position(mouse_x, mouse_y,iSettingsOpt1R)	and	 _c{SND_CHANGEVAL; optValue1+=10}
																
if instance_position(mouse_x, mouse_y,iSettingsOpt2L)	and	 _c{SND_CHANGEVAL; optValue2-=10}
if instance_position(mouse_x, mouse_y,iSettingsOpt2R)	and	 _c{SND_CHANGEVAL; optValue2+=10}
																
if instance_position(mouse_x, mouse_y,iSettingsOpt3L)	and	 _c{SND_CHANGEVAL; showChat=!showChat}
if instance_position(mouse_x, mouse_y,iSettingsOpt3R)	and	 _c{SND_CHANGEVAL; showChat=!showChat}

optValue1=clamp(optValue1,0,100)
optValue2=clamp(optValue2,0,100)


}

/*
draw_set_valign(fa_bottom)
draw_set_halign(fa_left)
draw_text_ext(10,460-30,global.chatLog,15,500)
draw_set_halign(fa_left)