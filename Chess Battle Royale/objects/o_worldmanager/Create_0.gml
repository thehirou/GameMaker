//Create random pieces in the map
/*
var amount=1000

repeat(amount) //THIS CREATES A CROSS PATTERN, KINDA COOL TBH
{

	var randomPlaceX=irandom_range(1,299)
	var randomPlaceY=irandom_range(1,149)
	var randomChoose=choose(WHITES,BLACKS)
	
	//show_debug_message(round(o_spawn.y/20)+18)
	
	if				randomPlaceX>round(o_spawn.x/20)+18 or randomPlaceX<round(o_spawn.x/20)-10{var placeX=randomPlaceX}else{var placeX=999999}
	if				randomPlaceY<round(o_spawn.y/20)-10 or randomPlaceY>round(o_spawn.y/20)+18{var placeY=randomPlaceY}else{var placeY=999999}
	
	if randomChoose=WHITES
	{
		instance_create_depth(placeX*20,placeY*20,-999,o_piece,{sprite_index : spr_pawn_player,type : PAWN,launcher : WHITES, 	mainPiece : false,})
	}
	
	if randomChoose=BLACKS
	{
		instance_create_depth(placeX*20,placeY*20,-999,o_piece,{sprite_index : spr_pawn_enemy,type : PAWN,launcher : BLACKS, })
	}
	
}