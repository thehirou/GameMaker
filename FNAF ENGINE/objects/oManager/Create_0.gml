enum anima
{
blank=0,
birne=1,
zitrone=2,
kirsche=3,
coco=4,
}

enum cam
{
corridor1=1,
corridor2=2,
corridorA=3,
corridorB=4,
stage=5,
kitchen=6,
suplrm=7,
bath=8,
exitdoor=9,
lobby=10,
}

#macro HALF_HVIEW 1920/2
#macro HALF_VVIEW 1080/2

//Change all mouse checks to be an object that follows the mouse (? 6899

//DEBUG
global.debug=false

global.openCamera=false

skipIntro=false
skipMenu=true

if skipIntro=true{room_goto(rmMenu)}
if skipMenu=true{room_goto(rmGame)}

numberOfAnimatronics=4 //Either way I think I hard-coded this to be 4 so it's going to be hard to add more without remaking the engine

progress=0 //In ticks
howLongIsAnHourInMinutes=4 //(In minutes)
eachHour=60*howLongIsAnHourInMinutes*60 //Framerate * minutes * seconds (Return in ticks)
totalHours=5*eachHour //Total hours * how long an hour is in ticks

currentHour=0

global.generalInteligence=1
global.ventFocus=false

instance_create_depth(x,y,-999,oCursor)

#macro KEY_FULLSCREEN	keyboard_check_pressed(vk_f11)
#macro KEY_RIGHTCLICK	mouse_check_button_pressed(mb_right)
#macro KEY_LEFTCLICK	mouse_check_button_pressed(mb_left)
#macro KEY_RESTART		keyboard_check_pressed(ord("R"))

#macro KEY_DEBUG		keyboard_check_pressed(ord("M"))

timer[0]=0
intro_alpha[0]=-1
intro_alpha[1]=-1
intro_alpha[2]=0

sndEerieLayer[0]=audio_create_stream("sfx/sfx_eerie_layer_1.ogg")

//MISC
sprIntroBg=sprite_add("pic/doners_bg.png",0,false,false,0,0)
sprIntroText=sprite_add("pic/five_nights_at_bg.png",0,false,false,0,0)
sprMap=sprite_add("pic/map.png",0,false,false,620/2,470/2)
sprPreOffice=sprite_add("pic/pre_office.png",0,false,false,1500,1290)
sprCameraOverlay1=sprite_add("pic/camera_overlay_1.png",0,false,false,0,0)

//VIEWPORTS
sprViewportTest=sprite_add("pic/viewport_test.png",0,false,false,1500,0)
sprViewportKitchen=sprite_add("pic/viewport_kitchen.png",0,false,false,1500,0)
sprViewportStage=sprite_add("pic/viewport_stage.png",0,false,false,1500,0)

global.currentViewport=oManager.sprViewportTest
global.currentViewportPans=true
global.currentCamera=cam.stage
global.currentCameraString="STAGE"

global.fullscreen=true
global.mapAlpha=0.3