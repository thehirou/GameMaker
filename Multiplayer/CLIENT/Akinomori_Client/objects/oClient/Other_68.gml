client=network_create_socket(network_socket_ws)
connected=network_connect_async(client,"192.168.56.1",12345)
show_message(connected)

type_event=ds_map_find_value(async_load,"type")

switch (type_event) {
    case network_type_data:
		buffer=ds_map_find_value(async_load,"buffer")
		buffer_seek(buffer,buffer_seek_start,0)
		received_packet(buffer)
    break;
}

//I FUCKING GIVE UP 11-DEC-2023