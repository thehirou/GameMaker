if instance_exists(oOtherPlayer)
{
	with (oOtherPlayer)
	{
	var thisClientId = clientId
	SendMessageToClient(thisClientId,"<Server> "+global.thisUserNameGlobal+" left the room.")
	}
}