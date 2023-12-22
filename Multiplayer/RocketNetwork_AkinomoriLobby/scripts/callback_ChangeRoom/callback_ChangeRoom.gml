
function callback_ChangeRoom(new_room_id){
//this is called after youv'e changed your room/joined a new room
//edit this function to do whatever you want

	//6899 ADD log_show SCRIPT
	if global.debug
	{
	show_message("The new room you joined is : " + new_room_id)
	}
	global.currentRoom=new_room_id

}