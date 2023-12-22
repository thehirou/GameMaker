if debug_mode
{
draw_text(90,90,import_url)
}

if receivedVersion!=999999
{
	if receivedVersion=versionReal and manageFromJson="open"
	{
		_string=match
		room_goto(rmSplashScreen)
	}
	
	if receivedVersion!=versionReal and manageFromJson="open"
	{
		_string=olderversion+"\n\nYou're currently running: "+global.version+"\n\nTo update, hold CONTROL while refreshing the webpage."
	}
	
	if manageFromJson="closed"
	{
		_string=reasonClosed
	}
}

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_ext(640/2,480/2,_string,20,400)

if debug_mode //ignore closed servers
{
	room_goto(rmSplashScreen)
}