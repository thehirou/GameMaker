#macro GRID_SIZE 32

#macro MACRO_SPD 1.5 //1.5 for street room
global.debug=false
global.path=0

troyroomPath=0

global.S_APFEL_RIGHT=TROY_right
global.S_APFEL_LEFT=TROY_left
global.S_APFEL_DOWN=TROY_down
global.S_APFEL_UP=TROY_up

lol=show_question("Proceed")

window_set_size(640*2,480*2)
window_center()

if room=rmInit{room_goto(room_street_new)}


nightRoom=false