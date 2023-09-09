tileType=tiles.riverside
image_speed=0
image_index=tileType

checkYMIN=instance_create_layer(x,y-TILEBIG,layer,oChecker)
checkYPLUS=instance_create_layer(x,y+TILEBIG,layer,oChecker)
checkXPLUS=instance_create_layer(x+TILEBIG,y,layer,oChecker)
checkXMIN=instance_create_layer(x-TILEBIG,y,layer,oChecker)

replaceForTile();

timer=0