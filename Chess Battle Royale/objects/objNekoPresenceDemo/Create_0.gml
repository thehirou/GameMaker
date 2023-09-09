/// @description Initialize Discord.

#macro DISCORD_APP_ID ""

ready = false;

alarm[0] = room_speed * 5;

if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_debug_message("discord presence aint working")
}