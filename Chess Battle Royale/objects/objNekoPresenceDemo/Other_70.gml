/// @description Capture async events from NekoPresence.

var ev_type = async_load[? "event_type"];

if (ev_type == "DiscordReady")
{
	global.discord_initialized = true;
	
	window_set_caption("Chess 2.0!");
	ready = true;
	show_debug_message("date: " + string(date_current_datetime()));
	np_setpresence_timestamps(date_current_datetime(), 0, false);
	np_setpresence_more("AMazI1nGg G4m3!!11!!", "AMazI1nGg G4m3!!11!!", false);
	
	// bruh
	np_setpresence_buttons(0, "Hirou's Webpage", "https://thehirou.com");
	//np_setpresence_buttons(1, "Hirou's Website", "https://thehirou.com");
	// DISCORD_MAX_BUTTONS == 2, so only allowed IDs are 0 and 1.
	
	//np_setpresence() should ALWAYS come the last!!
	np_setpresence("In development by TheHirou.", "Playing a match", "chers", "");
	
	// passing a URL will add this sprite asynchronously via *internets*
	sprite_add(np_get_avatar_url(async_load[? "user_id"], async_load[? "avatar"]), 1, false, false, 0, 0);
}