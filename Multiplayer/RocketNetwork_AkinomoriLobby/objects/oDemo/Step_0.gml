// A demo implementation of Rocket Networking
if(mouse_check_button_pressed(mb_right)){
	//show_message("right")
	//DestroyPersistentObject(1)
}

if(keyboard_check_pressed(ord("C"))){
	CreatePersistentObject(global.roomId,{ _x: mouse_x , _y: mouse_y})
}

if(mouse_check_button_pressed(mb_left)){
	var new_room = get_string("new room name","moon")
	ChangeRoom(new_room)
}
if(keyboard_check_pressed(ord("E"))){
	EditPersistentObject(1, {
	_x: mouse_x, 
	_y: mouse_y
	})
}

if(keyboard_check_pressed(ord("D"))){
	DestroyPersistentObject(1)
}
if(keyboard_check_pressed(ord("S"))){
	ShowPersistentObjectsInRoom(global.roomId)
	
	
}
if(keyboard_check_pressed(ord("K"))){
	KickPlayer(1)
}