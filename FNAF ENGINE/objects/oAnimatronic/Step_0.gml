image_index=identity
image_blend=debugColor


scrAnimatronicManager();

if place_meeting(x,y,oRoomKitchen)
{
inRoom=true	
roomLocated="Kitchen"
}

if place_meeting(x,y,oRoomLobby)
{
inRoom=true	
roomLocated="Lobby"
}

if place_meeting(x,y,oRoomBath)
{
inRoom=true	
roomLocated="Bathroom"
}

if place_meeting(x,y,oRoomStage)
{
inRoom=true	
roomLocated="Stage"
}

if place_meeting(x,y,oRoomSupl)
{
inRoom=true	
roomLocated="Supply Room"
}

if place_meeting(x,y,oRoomSecurity)
{
inRoom=true	
roomLocated="Security"
}

if place_meeting(x,y,oRoomCorridor_1)
{
inRoom=true	
roomLocated="Corridor South"
}

if place_meeting(x,y,oRoomCorridor_2)
{
inRoom=true	
roomLocated="Corridor West"
}

if place_meeting(x,y,oRoomCorridor_A)
{
inRoom=true	
roomLocated="Corridor East"
}

if place_meeting(x,y,oRoomCorridor_B)
{
inRoom=true	
roomLocated="Corridor North"
}