
function ShowAllRooms(){
	
	//send shared proerties to your server
	//format for sending info to server 
	var Buffer = buffer_create(1, buffer_grow, 1)
	
	//WHAT DATA 
	var data = ds_map_create();

	//whatever data you want to send as key value pairs

	
	

	ds_map_add(data,"eventName","show_all_rooms");
	buffer_write(Buffer, buffer_text, EC(string(json_encode(data))))
	network_send_raw(oBrain.socket, Buffer, buffer_tell(Buffer),network_send_text)
	buffer_delete(Buffer)
	ds_map_destroy(data)

}