var touchingPiece = instance_place(x,y,o_piece)

if instance_place(x,y,touchingPiece)
{
	if !instance_exists(o_warp_particle)
	{
		var particle=instance_create_layer(touchingPiece.x,touchingPiece.y,"inst_particle",o_warp_particle,{getID : touchingPiece})
		particle.x=touchingPiece.x
		particle.x=touchingPiece.x
	}
	wrappingText=true
}else{wrappingText=false}

if instance_place(x,y,touchingPiece) and o_wait.done=true
{

	
	var touchingProt = instance_place(x,y,o_protected)
	
	if instance_place(x,y,touchingProt)
	{
		instance_destroy(touchingProt)	
	}
	
	show_debug_message("eyyyy")
	switch (wrapping) {
	
	    case "top":
				touchingPiece.y=147*20
	        break;
	
	    case "bottom":
				touchingPiece.y=2*20
	        break;
	
	    case "sideR":
				touchingPiece.x=2*20
	        break;
	
	    case "sideL":
				touchingPiece.x=297*20
	        break;

	}
			with(touchingPiece){
				if launcher=WHITES and WHITETURN{
					global.whiteXlast=x+10
					global.whiteYlast=y+10
				}
				if launcher=BLACKS and BLACKTURN{
					global.blackXlast=x+10
					global.blackYlast=y+10
				}
			}
	
}