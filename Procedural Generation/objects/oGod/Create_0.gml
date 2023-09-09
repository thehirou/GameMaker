/*
NOTES:
	-FIX GENERATION RULES
	-DELETE OBJECTS AS THEY ARE BEING CREATED
	-GENERATE OBJECTS AS YOU WALK, IN A SET RENDER RADIUS
*/

//global.tileLayerCreate=layer_create(-1)
global.tileLayerCreate=layer_get_id("tileset")
global.tilemap=layer_tilemap_create(global.tileLayerCreate,0,0,tlTileset,room_width/2,room_height/2)


#macro TILEBIG 16
#macro CHOOSE_MOUNTAIN_OPTIONS choose(oGround,oMountain,oMountain)
#macro CHOOSE_WATER_OPTIONS choose(oGround, oWater,oWater)
#macro CHOOSE_TREE_OPTIONS choose(oGround,oGround, oTree, oRiverside)
#macro CHOOSE_RIVERSIDE_OPTIONS choose(oWater,oMountain)
#macro CHOOSE_GROUND_OPTIONS choose(oTree, oGround, oGround, oGround,oGround)


enum tiles
{
water,
ground,
tree,
mountain,
riverside,
}

timer=0
maxTime=real(get_string("Set render distance",""))
random_set_seed(real(get_string("Set seed","")))




global.childrenStop=false

startPointX=0
endPointX=640

startPointY=0
endPointY=480

finishedGenerating=false
