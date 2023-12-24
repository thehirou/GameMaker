if instance_exists(oOtherPlayer)
{
	with (oOtherPlayer)
	{
	var thisClientId = clientId
	
	date_set_timezone(timezone_utc);

	var _h = string(date_get_hour(date_current_datetime()));
	var _m = string(date_get_minute(date_current_datetime()));
	var _s = string(date_get_second(date_current_datetime()));
	var _d = string(date_get_day(date_current_datetime()));
	var _mo = string(date_get_month(date_current_datetime()));
	var _y = string(date_get_year(date_current_datetime()));

	// Add leading zeros for single-digit values
	if (string_length(_h) == 1) _h = "0" + _h;
	if (string_length(_m) == 1) _m = "0" + _m;
	if (string_length(_s) == 1) _s = "0" + _s;
	if (string_length(_d) == 1) _d = "0" + _d;
	if (string_length(_mo) == 1) _mo = "0" + _mo;

	var stringDate="["+_d+"/"+_mo+"/"+_y+" - "+_h+":"+_m+":"+_s+"]"
	//"DATE-ç"+stringDate+"ç-DATE "
	
	SendMessageToClient(thisClientId,"DATE-ç"+stringDate+"ç-DATE "+"<Server> "+global.thisUserNameGlobal+" left the room.")
	}
}