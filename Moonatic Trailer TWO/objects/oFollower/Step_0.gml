depth=-y

sprite_set_speed(sprite_index,6,spritespeed_framespersecond)

if room=room_street_new
{
x+=MACRO_SPD	
sprite_index=sprRight
}

switch (actor) {
    case "moon":
sprRight=MOON_right
sprLeft=MOON_left
sprDown=MOON_down
sprUp=MOON_up
        break;
    case "ten":
sprRight=TEN_right
sprLeft=TEN_left
sprDown=TEN_down
sprUp=TEN_up
        break;
    case "valentino":
sprRight=VALENTINO_right
sprLeft=VALENTINO_left
sprDown=VALENTINO_down
sprUp=VALENTINO_up
        break;
    case "ringo":
sprRight=RINGO_RIGHT
sprLeft=RINGO_LEFT
sprDown=RINGO_DOWN
sprUp=RINGO_UP
        break;
    default:
        // code here
        break;
}

if room=Room1
{
switch (path) {
    case 0:
		 sprite_index=sprDown
         y+=MACRO_SPD
        break;
    case 1:
		 sprite_index=sprRight
         x+=MACRO_SPD
        break;
    case 2:
		sprite_index=sprUp
         y-=MACRO_SPD
        break;
    case 3:
         x+=MACRO_SPD
        break;
    case 4:
         x+=MACRO_SPD
        break;
    default:
        // code here
        break;
}
}