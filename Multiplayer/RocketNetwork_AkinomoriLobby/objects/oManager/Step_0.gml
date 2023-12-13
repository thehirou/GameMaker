if keyboard_check_pressed(vk_enter) and global.currentRoom="none"
{
ChangeRoom("public")	
}

if global.debug
{
if keyboard_check(vk_control) and keyboard_check_pressed(ord("P"))
	{
	ShowAllClientsInRoom(global.currentRoom)
	}
}

global.peopleConnected=instance_number(oOtherPlayer)+instance_number(oPlayer)

if mouse_check_button_pressed(mb_left)
{
clickedSomewhere=true	
}