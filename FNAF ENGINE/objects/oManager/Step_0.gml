if KEY_FULLSCREEN
{
global.fullscreen=!global.fullscreen
window_set_fullscreen(global.fullscreen)
}

if KEY_RESTART
{
game_restart()	
}

progress++

scrHourCalculator();