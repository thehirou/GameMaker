// A demo implementation of Rocket Networking
if(mouse_check_button_pressed(mb_right)){
	ChangeRoom("public")
}

if(mouse_check_button_pressed(mb_left)){
	ShowAllClientsInRoom("public")
}

if(keyboard_check_pressed(ord("T"))){
	GetServerTime()
}