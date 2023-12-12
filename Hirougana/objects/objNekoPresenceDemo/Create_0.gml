/// @description Initialize Discord.

#macro DISCORD_APP_ID "869252792823459912"

ready = false;
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	//show_error("NekoPresence init fail.", false);
	//LMAO I COMMENTED THAT BECAUSE IT CRASHED THE GAME IF YOU COULDN'T USE
	//DISCORD RICH PRESENCE LIKE WHY THE FUCK WOULD I WANT TO CRASH THE GAME ON
	//PURPOUSE BRUH, JUST DONT RUN IT
}

line2= "";

alarm_set(0, room_speed*2);