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
	        break;
	    case movement.left:
	        scrSpriteOnTop(eyes[spr.idleLeft])
	        scrSpriteOnTop(mout[spr.idleLeft])
	        scrSpriteOnTop(feet[spr.idleLeft])
	        scrSpriteOnTop(legs[spr.idleLeft])
	        scrSpriteOnTop(tors[spr.idleLeft])
	        scrSpriteOnTop(head[spr.idleLeft])
	        break;
	    case movement.up:
	        scrSpriteOnTop(eyes[spr.idleUp])
	        scrSpriteOnTop(mout[spr.idleUp])
	        scrSpriteOnTop(feet[spr.idleUp])
	        scrSpriteOnTop(legs[spr.idleUp])
	        scrSpriteOnTop(tors[spr.idleUp])
	        scrSpriteOnTop(head[spr.idleUp])
	        break;
	    case movement.down:
	        scrSpriteOnTop(eyes[spr.idleDown])
	        scrSpriteOnTop(mout[spr.idleDown])
	        scrSpriteOnTop(feet[spr.idleDown])
	        scrSpriteOnTop(legs[spr.idleDown])
	        scrSpriteOnTop(tors[spr.idleDown])
	        scrSpriteOnTop(head[spr.idleDown])
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
	        break;
	    case movement.left:
	        scrSpriteOnTop(eyes[spr.walkLeft])
	        scrSpriteOnTop(mout[spr.walkLeft])
	        scrSpriteOnTop(feet[spr.walkLeft])
	        scrSpriteOnTop(legs[spr.walkLeft])
	        scrSpriteOnTop(tors[spr.walkLeft])
	        scrSpriteOnTop(head[spr.walkLeft])
	        break;
	    case movement.up:
	        scrSpriteOnTop(eyes[spr.walkUp])
	        scrSpriteOnTop(mout[spr.walkUp])
	        scrSpriteOnTop(feet[spr.walkUp])
	        scrSpriteOnTop(legs[spr.walkUp])
	        scrSpriteOnTop(tors[spr.walkUp])
	        scrSpriteOnTop(head[spr.walkUp])
	        break;
	    case movement.down:
	        scrSpriteOnTop(eyes[spr.walkDown])
	        scrSpriteOnTop(mout[spr.walkDown])
	        scrSpriteOnTop(feet[spr.walkDown])
	        scrSpriteOnTop(legs[spr.walkDown])
	        scrSpriteOnTop(tors[spr.walkDown])
	        scrSpriteOnTop(head[spr.walkDown])
	        break;
	}
}