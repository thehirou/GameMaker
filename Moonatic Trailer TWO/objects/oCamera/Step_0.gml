if global.debug=true
{
image_alpha=1	
}else{image_alpha=0}

if room=Room1 or room=room_street_new or room=cheeseroom
{
x=oDummy.x+sprite_get_height(TROY_up)/2
y=oDummy.y+sprite_get_width(TROY_up)/2
}

if room=Room4
{
y+=1	
}