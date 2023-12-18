draw_self()




if global.currentRoom!="none"
{
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
var _padUs=5
draw_set_alpha(0.5)
draw_rectangle_color(x-(string_width(thisUsername)/2)-_padUs,y-global.nameHeight+_padUs-3,x+(string_width(thisUsername)/2)+_padUs,y-global.nameHeight-23,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
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
//6899 DISABLED UNTIL GAMEMAKER FIXES DRAW_TEXT_EXT BUG
//draw_text_ext(x,y-global.nameHeight-spaceBetweenNameAndMsg,sentMsg,15,250)
draw_set_halign(fa_left)
}

if timerMsg>msgDuration
{
sentMsg=""
timerMsg=0	
}
}


if !moveRight and !moveLeft and !moveUp and !moveDown 
{
	switch (moving) //IDLING
	{
	    case movement.right:
	        scrSpriteOnTop(eyes[spr.idleRight])
	        scrSpriteOnTop(mout[spr.idleRight])
	        scrSpriteOnTop(feet[spr.idleRight])
	        scrSpriteOnTop(legs[spr.idleRight])
	        scrSpriteOnTop(tors[spr.idleRight])
	        scrSpriteOnTop(head[spr.idleRight])
	        scrSpriteOnTop(acsr[spr.idleRight])
	        break;
	    case movement.left:
	        scrSpriteOnTop(eyes[spr.idleLeft])
	        scrSpriteOnTop(mout[spr.idleLeft])
	        scrSpriteOnTop(feet[spr.idleLeft])
	        scrSpriteOnTop(legs[spr.idleLeft])
	        scrSpriteOnTop(tors[spr.idleLeft])
	        scrSpriteOnTop(head[spr.idleLeft])
	        scrSpriteOnTop(acsr[spr.idleLeft])
	        break;
	    case movement.up:
	        scrSpriteOnTop(eyes[spr.idleUp])
	        scrSpriteOnTop(mout[spr.idleUp])
	        scrSpriteOnTop(feet[spr.idleUp])
	        scrSpriteOnTop(legs[spr.idleUp])
	        scrSpriteOnTop(tors[spr.idleUp])
	        scrSpriteOnTop(head[spr.idleUp])
	        scrSpriteOnTop(acsr[spr.idleUp])
	        break;
	    case movement.down:
	        scrSpriteOnTop(eyes[spr.idleDown])
	        scrSpriteOnTop(mout[spr.idleDown])
	        scrSpriteOnTop(feet[spr.idleDown])
	        scrSpriteOnTop(legs[spr.idleDown])
	        scrSpriteOnTop(tors[spr.idleDown])
	        scrSpriteOnTop(head[spr.idleDown])
	        scrSpriteOnTop(acsr[spr.idleDown])
	        break;
	}	
}
else
{
	switch (moving) //MOVING
	{
	    case movement.right:
	        scrSpriteOnTop(eyes[spr.walkRight])
	        scrSpriteOnTop(mout[spr.walkRight])
	        scrSpriteOnTop(feet[spr.walkRight])
	        scrSpriteOnTop(legs[spr.walkRight])
	        scrSpriteOnTop(tors[spr.walkRight])
	        scrSpriteOnTop(head[spr.walkRight])
	        scrSpriteOnTop(acsr[spr.walkRight])
	        break;
	    case movement.left:
	        scrSpriteOnTop(eyes[spr.walkLeft])
	        scrSpriteOnTop(mout[spr.walkLeft])
	        scrSpriteOnTop(feet[spr.walkLeft])
	        scrSpriteOnTop(legs[spr.walkLeft])
	        scrSpriteOnTop(tors[spr.walkLeft])
	        scrSpriteOnTop(head[spr.walkLeft])
	        scrSpriteOnTop(acsr[spr.walkLeft])
	        break;
	    case movement.up:
	        scrSpriteOnTop(eyes[spr.walkUp])
	        scrSpriteOnTop(mout[spr.walkUp])
	        scrSpriteOnTop(feet[spr.walkUp])
	        scrSpriteOnTop(legs[spr.walkUp])
	        scrSpriteOnTop(tors[spr.walkUp])
	        scrSpriteOnTop(head[spr.walkUp])
	        scrSpriteOnTop(acsr[spr.walkUp])
	        break;
	    case movement.down:
	        scrSpriteOnTop(eyes[spr.walkDown])
	        scrSpriteOnTop(mout[spr.walkDown])
	        scrSpriteOnTop(feet[spr.walkDown])
	        scrSpriteOnTop(legs[spr.walkDown])
	        scrSpriteOnTop(tors[spr.walkDown])
	        scrSpriteOnTop(head[spr.walkDown])
	        scrSpriteOnTop(acsr[spr.walkDown])
	        break;
	}
}

if global.playerState=state.customizing and keyboard_check_pressed(vk_escape)
{
	global.playerState=state.normal;
	customizing=false
	audio_play_sound(sndCloseMenu,1,false,global.sfxVolume)
}

if keyboard_check_pressed(ord("C")) and global.currentRoom!="none"
{
	if global.playerState=state.normal or global.playerState=state.customizing
	{
		customizing=!customizing
		
		if customizing=true{global.playerState=state.customizing; audio_play_sound(sndOpenMenu,1,false,global.sfxVolume)}
		if customizing=false{global.playerState=state.normal; audio_play_sound(sndCloseMenu,1,false,global.sfxVolume)}
		
	}
}

/*
if customizing=true{global.playerState=state.normal; customizing=false}
if customizing=false{global.playerState=state.customizing; customizing=true}
*/


if global.debug
{
	// Loop through all instances of oOtherPlayer
	var otherPlayerCount = instance_number(oOtherPlayer);

	for (var i = 0; i < otherPlayerCount; i++)
	{
	    // Get the current instance of oOtherPlayer
	    var currentOtherPlayer = instance_find(oOtherPlayer, i);

	    // Draw a line to the current instance of oOtherPlayer
		draw_set_color(c_red)
	    draw_line_width(x, y, currentOtherPlayer.x, currentOtherPlayer.y, 2);
		draw_set_color(c_white)
	}
}
