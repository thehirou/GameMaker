enum anima
{
blank=0,
birne=1,
zitrone=2,
kirsche=3,
coco=4,
}

numberOfAnimatronics=4 //Either way I think I hard-coded this to be 4 so it's going to be hard to add more without remaking the engine

progress=0 //In ticks
howLongIsAnHourInMinutes=4 //(In minutes)
eachHour=60*howLongIsAnHourInMinutes*60 //Framerate * minutes * seconds (Return in ticks)
totalHours=5*eachHour //Total hours * how long an hour is in ticks

currentHour=0

global.generalInteligence=1

for (var i = 1; i <= numberOfAnimatronics; ++i) {
    global.animatronicInstance[i]=instance_create_depth(20,20,-999,oAnimatronic,{identity:i});
}

#macro KEY_FULLSCREEN	keyboard_check_pressed(vk_f11)
#macro KEY_RIGHTCLICK	mouse_check_button_pressed(mb_right)
#macro KEY_LEFTCLICK	mouse_check_button_pressed(mb_left)
#macro KEY_RESTART		keyboard_check_pressed(ord("R"))

global.fullscreen=false
global.mapAlpha=0.3