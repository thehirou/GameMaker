if debug_mode
{
draw_text(90,90,import_url)
}

global.yourIp=import_url

if global.yourIp!=undefined and global.yourIp!=""
{
room_goto(rmBlacklistCheck);	
}