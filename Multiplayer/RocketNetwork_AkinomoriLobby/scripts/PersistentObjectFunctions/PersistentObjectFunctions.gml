
function CreatePersistentObject(roomId ,  persistentObjectStruct){
		var Buffer = buffer_create(1, buffer_grow, 1)
		//WHAT DATA 
		var data = ds_map_create();
		data[? "serverId"] = global.SERVERID;
		data[? "roomId"] = roomId;
		data[?"pOp"] = json_stringify(persistentObjectStruct)
		
		ds_map_add(data,"eventName","create_persistent_object");
		buffer_write(Buffer, buffer_text, json_encode(data))
		network_send_raw(oBrain.socket, Buffer, buffer_tell(Buffer),network_send_text)
		buffer_delete(Buffer)
		buffer_delete(Buffer)
		ds_map_destroy(data)

}


function EditPersistentObject(persistentObjectId ,  new_persistentObjectStruct){
		var Buffer = buffer_create(1, buffer_grow, 1)
		//WHAT DATA 
		var data = ds_map_create();
		data[? "serverId"] = global.SERVERID;
		data[? "POid"] = persistentObjectId;
		data[?"pOp"] = json_stringify(new_persistentObjectStruct)
		
		ds_map_add(data,"eventName","edit_persistent_object");
		buffer_write(Buffer, buffer_text, json_encode(data))
		network_send_raw(oBrain.socket, Buffer, buffer_tell(Buffer),network_send_text)
		buffer_delete(Buffer)
		ds_map_destroy(data)

}


function DestroyPersistentObject(persistentObjectId){
		var Buffer = buffer_create(1, buffer_grow, 1)
		//WHAT DATA 
		var data = ds_map_create();
		data[? "serverId"] = global.SERVERID;
		data[? "POid"] = persistentObjectId;
	
		
		ds_map_add(data,"eventName","destroy_persistent_object");
		buffer_write(Buffer, buffer_text, json_encode(data))
		network_send_raw(oBrain.socket, Buffer, buffer_tell(Buffer),network_send_text)
		buffer_delete(Buffer)
		ds_map_destroy(data)

}

function ShowPersistentObjectsInRoom(room_name){
	
	//send shared proerties to your server
	//format for sending info to server 
	var Buffer = buffer_create(1, buffer_grow, 1)
	
	//WHAT DATA 
	var data = ds_map_create();
	data[? "serverId"] = global.SERVERID;
	//whatever data you want to send as key value pairs

	
	
	ds_map_add(data,"roomName",room_name);
	ds_map_add(data,"eventName","show_pO_in_room");
	buffer_write(Buffer, buffer_text, json_encode(data))
	network_send_raw(oBrain.socket, Buffer, buffer_tell(Buffer),network_send_text)
	buffer_delete(Buffer)
	ds_map_destroy(data)

}