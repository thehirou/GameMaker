layer_set_visible(layer_get_id("MapPreview"),false) //Should always be set to false in-game
oldGlobalOpenCamera=global.openCamera

if global.debug=true //SHOW THE ROOM AREAS IN DEBUG MODE
{
layer_set_visible(layer_get_id("RoomPlacements"),true)
}
else
{
layer_set_visible(layer_get_id("RoomPlacements"),false)
}

