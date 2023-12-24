
function callback_ReceivedMessage(theMessage , senderClientId){
	//show_message("You got a message : "+theMessage+" from "+string(senderClientId))
array_insert(global.chat,0,theMessage)
oManager.arrayChanged=true


//Can't do this shit now 6899
/*
if instance_exists(oPersistentObject)
{
	if oPersistentObject.type=persistype.chatlogger
	{
		date_set_timezone(timezone_utc)
		var _h=string(date_get_hour(date_current_datetime())	)
		var _m=string(date_get_minute(date_current_datetime())	)
		var _s=string(date_get_second(date_current_datetime())	)	
		var _d=string(date_get_day(date_current_datetime())		)
		var _mo=string(date_get_month(date_current_datetime())	)
		var _y=string(date_get_year(date_current_datetime())	)
		
		var stringDate="["+_d+"/"+_mo+"/"+_y+" - "+_h+":"+_m+":"+_s+"]"
		var stringStore=stringDate+" "+theMessage+"-ÃR71F#1C4-LLL-LINE?BREAK-"
		
		
		var jsonChat = 
		{
		date : 	stringDate,
		msg : theMessage,
		}
		
		oPersistentObject.storedJson=jsonChat
	}
	
}
*/

}