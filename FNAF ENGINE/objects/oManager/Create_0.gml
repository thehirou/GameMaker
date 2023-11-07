enum anima
{
blank=0,
birne=1,
zitrone=2,
kirsche=3,
coco=4,
}

//DEBUG
skipIntro=false
skipMenu=false

if skipIntro=true{room_goto(rmMenu)}
if skipMenu=true{room_goto(rmGame)}

numberOfAnimatronics=4 //Either way I think I hard-coded this to be 4 so it's going to be hard to add more without remaking the engine

progress=0 //In ticks
howLongIsAnHourInMinutes=4 //(In minutes)
eachHour=60*howLongIsAnHourInMinutes*60 //Framerate * minutes * seconds (Return in ticks)
totalHours=5*eachHour //Total hours * how long an hour is in ticks

currentHour=0

global.generalInteligence=1

#macro KEY_FULLSCREEN	keyboard_check_pressed(vk_f11)
#macro KEY_RIGHTCLICK	mouse_check_button_pressed(mb_right)
#macro KEY_LEFTCLICK	mouse_check_button_pressed(mb_left)
#macro KEY_RESTART		keyboard_check_pressed(ord("R"))

timer[0]=0
intro_alpha[0]=-1
intro_alpha[1]=-1
intro_alpha[2]=0

sprIntroBg=sprite_add("pic/doners_bg.png",0,false,false,0,0)
sprIntroText=sprite_add("pic/five_nights_at_bg.png",0,false,false,0,0)
sprMap=sprite_add("pic/map.png",0,false,false,0,0)

global.fullscreen=true
global.mapAlpha=0.3