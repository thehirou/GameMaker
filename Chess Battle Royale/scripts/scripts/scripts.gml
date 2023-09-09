#macro		PAWN			"Pawn"
#macro		ROOK				"Rook"
#macro		KNIGHT			"Knight"
#macro		BISHOP			"Bishop"
#macro		QUEEN			"Queen"
#macro		KING				"King"

//Update
#macro		SOLDIER		"Soldier"
#macro		EMPEROR		"Emperor"
#macro		MOUSE			"Mouse"

#macro		BLACKS			"Blacks"
#macro		WHITES			"Whites"

function scr_init_spawn(){
	var tile=20
	var difX=o_spawn.x
	var difY=o_spawn.y
	var _depth=-9999
	
	repeat(1){		
		//Black Up
		instance_create_depth(difX+0*tile,difY+0*tile,_depth,o_piece,{type : ROOK,				launcher : BLACKS,		mainPiece : true,	refID : [BLACKS,1],			 image_blend : c_white,}) //646464 Is gray
		instance_create_depth(difX+1*tile,difY+0*tile,_depth,o_piece,{type : KNIGHT,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,2],			 image_blend : c_white,})
		instance_create_depth(difX+2*tile,difY+0*tile,_depth,o_piece,{type : BISHOP,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,3],			 image_blend : c_white,})
		instance_create_depth(difX+3*tile,difY+0*tile,_depth,o_piece,{type : QUEEN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,4],			 image_blend : c_white,})
		instance_create_depth(difX+4*tile,difY+0*tile,_depth,o_piece,{type : KING,				launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,5],			 image_blend : c_white,})
		instance_create_depth(difX+5*tile,difY+0*tile,_depth,o_piece,{type : MOUSE,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,6],			 image_blend : c_white,})
		instance_create_depth(difX+6*tile,difY+0*tile,_depth,o_piece,{type : SOLDIER,		launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,7],			 image_blend : c_white,})
		instance_create_depth(difX+7*tile,difY+0*tile,_depth,o_piece,{type : EMPEROR,		launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,8],			 image_blend : c_white,})
																																																											
		//Black pawn																																																			
		instance_create_depth(difX+0*tile,difY+1*tile,_depth,o_piece,{type : PAWN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,9],			image_blend : c_white,})
		instance_create_depth(difX+1*tile,difY+1*tile,_depth,o_piece,{type : PAWN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,10],		 image_blend : c_white,})
		instance_create_depth(difX+2*tile,difY+1*tile,_depth,o_piece,{type : PAWN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,11],		 image_blend : c_white,})
		instance_create_depth(difX+3*tile,difY+1*tile,_depth,o_piece,{type : PAWN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,12],		 image_blend : c_white,})
		instance_create_depth(difX+4*tile,difY+1*tile,_depth,o_piece,{type : PAWN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,13],		 image_blend : c_white,})
		instance_create_depth(difX+5*tile,difY+1*tile,_depth,o_piece,{type : PAWN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,14],		 image_blend : c_white,})
		instance_create_depth(difX+6*tile,difY+1*tile,_depth,o_piece,{type : PAWN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,15],		 image_blend : c_white,})
		instance_create_depth(difX+7*tile,difY+1*tile,_depth,o_piece,{type : PAWN,			launcher : BLACKS, 	mainPiece : true,	refID : [BLACKS,16],		 image_blend : c_white,})
																																																										
		//################################################################															
																																																										
		//White Up																																																			
		instance_create_depth(difX+0*tile,difY+7*tile,_depth,o_piece,{type : EMPEROR,				launcher : WHITES, 	mainPiece : true,	refID : [WHITES,1],			image_blend : c_white,})
		instance_create_depth(difX+1*tile,difY+7*tile,_depth,o_piece,{type : SOLDIER,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,2],			image_blend : c_white,})
		instance_create_depth(difX+2*tile,difY+7*tile,_depth,o_piece,{type : MOUSE,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,3],			image_blend : c_white,})
		instance_create_depth(difX+3*tile,difY+7*tile,_depth,o_piece,{type : KING,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,4],			image_blend : c_white,})
		instance_create_depth(difX+4*tile,difY+7*tile,_depth,o_piece,{type : QUEEN,				launcher : WHITES, 	mainPiece : true,	refID : [WHITES,5],			image_blend : c_white,})
		instance_create_depth(difX+5*tile,difY+7*tile,_depth,o_piece,{type : BISHOP,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,6],			image_blend : c_white,})
		instance_create_depth(difX+6*tile,difY+7*tile,_depth,o_piece,{type : KNIGHT,		launcher : WHITES, 	mainPiece : true,	refID : [WHITES,7],			image_blend : c_white,})
		instance_create_depth(difX+7*tile,difY+7*tile,_depth,o_piece,{type : ROOK,		launcher : WHITES, 	mainPiece : true,	refID : [WHITES,8],			image_blend : c_white,})
																																																																				
		//White pawn																																																												
		instance_create_depth(difX+0*tile,difY+6*tile,_depth,o_piece,{type : PAWN,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,9],			image_blend : c_white,})
		instance_create_depth(difX+1*tile,difY+6*tile,_depth,o_piece,{type : PAWN,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,10],		image_blend : c_white,})
		instance_create_depth(difX+2*tile,difY+6*tile,_depth,o_piece,{type : PAWN,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,11],		image_blend : c_white,})
		instance_create_depth(difX+3*tile,difY+6*tile,_depth,o_piece,{type : PAWN,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,12],		image_blend : c_white,})
		instance_create_depth(difX+4*tile,difY+6*tile,_depth,o_piece,{type : PAWN,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,13],		image_blend : c_white,})
		instance_create_depth(difX+5*tile,difY+6*tile,_depth,o_piece,{type : PAWN,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,14],		image_blend : c_white,})
		instance_create_depth(difX+6*tile,difY+6*tile,_depth,o_piece,{type : PAWN,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,15],		image_blend : c_white,})
		instance_create_depth(difX+7*tile,difY+6*tile,_depth,o_piece,{type : PAWN,			launcher : WHITES, 	mainPiece : true,	refID : [WHITES,16],		image_blend : c_white,})
	}																																																																										
																																																																											
}

function scr_hability(){
	
var _depth=-999

switch (type) {
	
    case PAWN:
			repeat(1){																	
				instance_create_depth(x,y-20,								_depth,o_able,{image_blend : c_white})
				instance_create_depth(x,y+20,								_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-20,y,								_depth,o_able,{image_blend : c_white})
				instance_create_depth(x+20,y,								_depth,o_able,{image_blend : c_white})
				//Eat
				if place_meeting(x,y-20,o_piece){
					instance_create_depth(x,y-20,				_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x,y+20,o_piece){
					instance_create_depth(x,y+20,				_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-20,y,o_piece){
					instance_create_depth(x-20,y,				_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x+20,y,o_piece){
					instance_create_depth(x+20,y,				_depth,o_eat,{image_blend : c_white})}
			}																				
        break;																			
																								
    case EMPEROR:																	

		var range=10
		
		for (var i = 1; i < range; i++) {
					instance_create_depth((x-5*20)+i*20,y-20*4,						_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y-20*4,	o_piece){
					instance_create_depth((x-5*20)+i*20,y-20*4,						_depth,o_eat,{image_blend : c_white})}
			}																						
		
		for (var i = 1; i < range; i++) {
					instance_create_depth((x-5*20)+i*20,y-20*3,						_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y-20*3,	o_piece){
					instance_create_depth((x-5*20)+i*20,y-20*3,						_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range; i++) {
					instance_create_depth((x-5*20)+i*20,y-20*2,						_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y-20*2,	o_piece){
					instance_create_depth((x-5*20)+i*20,y-20*2,						_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range-6; i++) {
					instance_create_depth((x-5*20)+i*20,y-20*1,						_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y-20*1,	o_piece){
					instance_create_depth((x-5*20)+i*20,y-20*1,						_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range-6; i++) {
					instance_create_depth((x-5*20)+i*20,y,								_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y,	o_piece){
					instance_create_depth((x-5*20)+i*20,y,								_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range-6; i++) {
					instance_create_depth((x-5*20)+i*20,y-20*-1,					_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y-20*-1,	o_piece){
					instance_create_depth((x-5*20)+i*20,y-20*-1,					_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range-6; i++) {
					instance_create_depth((x+1*20)+i*20,y-20*1,						_depth,o_able,{image_blend : c_white})
					if place_meeting((x+1*20)+i*20,y-20*1,	o_piece){
					instance_create_depth((x+1*20)+i*20,y-20*1,						_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range-6; i++) {
					instance_create_depth((x+1*20)+i*20,y,								_depth,o_able,{image_blend : c_white})
					if place_meeting((x+1*20)+i*20,y,	o_piece){
					instance_create_depth((x+1*20)+i*20,y,								_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range-6; i++) {
					instance_create_depth((x+1*20)+i*20,y-20*-1,					_depth,o_able,{image_blend : c_white})
					if place_meeting((x+1*20)+i*20,y-20*-1,	o_piece){
					instance_create_depth((x+1*20)+i*20,y-20*-1,					_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range; i++) {
					instance_create_depth((x-5*20)+i*20,y-20*-2,					_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y-20*-2,	o_piece){
					instance_create_depth((x-5*20)+i*20,y-20*-2,					_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range; i++) {
					instance_create_depth((x-5*20)+i*20,y-20*-3,					_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y-20*-3,	o_piece){
					instance_create_depth((x-5*20)+i*20,y-20*-3,					_depth,o_eat,{image_blend : c_white})}
			}
		
		for (var i = 1; i < range; i++) {
					instance_create_depth((x-5*20)+i*20,y-20*-4,					_depth,o_able,{image_blend : c_white})
					if place_meeting((x-5*20)+i*20,y-20*-4,	o_piece){
					instance_create_depth((x-5*20)+i*20,y-20*-4,					_depth,o_eat,{image_blend : c_white})}
			}

        break;		
		
    case MOUSE:																	

		var range=3
		
		for (var i = 1; i < range; i++) {
					instance_create_depth(x+(i+1)*20,y,						_depth,o_able,{image_blend : c_white})
					if place_meeting(x+(i+1)*20,y,o_piece){
					instance_create_depth(x+(i+1)*20,y,							_depth,o_eat,{image_blend : c_white})	
						break;}	
					if place_meeting(x+(i+1)*20,y,o_blocker){
						break;}	
			}		
			
						
		for (var i = 1; i < range; i++) {											
					instance_create_depth(x-(i+1)*20,y,							_depth,o_able,{image_blend : c_white})
					if place_meeting(x-(i+1)*20,y,o_piece){
					instance_create_depth(x-(i+1)*20,y,							_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x-(i+1)*20,y,o_blocker){
						break;}
			}																						
																										
		for (var i = 1; i < range; i++) {											
					instance_create_depth(x,y+(i+1)*20,						_depth,o_able,{image_blend : c_white})
					if place_meeting(x,y+(i+1)*20,o_piece){
					instance_create_depth(x,y+(i+1)*20,						_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x,y+(i+1)*20,o_blocker){
						break;}
			}																						
																										
		for (var i = 1; i < range; i++) {											
					instance_create_depth(x,y-(i+1)*20,							_depth,o_able,{image_blend : c_white})
					if place_meeting(x,y-(i+1)*20,o_piece){
					instance_create_depth(x,y-(i+1)*20,							_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x,y-(i+1)*20,o_blocker){
						break;}
			}

        break;	
		
    case ROOK:																	

		var range=10
		
		for (var i = 1; i < range; i++) {
					instance_create_depth(x+i*20,y,						_depth,o_able,{image_blend : c_white})
					if place_meeting(x+i*20,y,o_piece){
					instance_create_depth(x+i*20,y,						_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x+i*20,y,o_blocker){
						break;}
			}																						
																										
		for (var i = 1; i < range; i++) {											
					instance_create_depth(x-i*20,y,							_depth,o_able,{image_blend : c_white})
					if place_meeting(x-i*20,y,o_piece){
					instance_create_depth(x-i*20,y,							_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x-i*20,y,o_blocker){
						break;}
			}																						
																										
		for (var i = 1; i < range; i++) {											
					instance_create_depth(x,y+i*20,						_depth,o_able,{image_blend : c_white})
					if place_meeting(x,y+i*20,o_piece){
					instance_create_depth(x,y+i*20,						_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x,y+i*20,o_blocker){
						break;}
			}																						
																										
		for (var i = 1; i < range; i++) {											
					instance_create_depth(x,y-i*20,							_depth,o_able,{image_blend : c_white})
					if place_meeting(x,y-i*20,o_piece){
					instance_create_depth(x,y-i*20,							_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x,y-i*20,o_blocker){
						break;}
			}

        break;	
	
    case SOLDIER:						
			
				var range=4
				
				for (var i = 1; i < range; i++) {
							instance_create_depth(x+i*20,y+i*20,				_depth,o_able,{image_blend : c_white})
							if place_meeting(x+i*20,y+i*20,o_piece){
							instance_create_depth(x+i*20,y+i*20,				_depth,o_eat,{image_blend : c_white})	
								break;}
								
							if place_meeting(x+i*20,y+i*20,o_blocker){
								break;}
					}
			    
				for (var i = 1; i < range; i++) {	
							instance_create_depth(x+i*20,y-i*20,				_depth,o_able,{image_blend : c_white})
							if place_meeting(x+i*20,y-i*20,o_piece){
							instance_create_depth(x+i*20,y-i*20,				_depth,o_eat,{image_blend : c_white})	
								break;}
								
							if place_meeting(x+i*20,y-i*20,o_blocker){
								break;}
					}
			    
				for (var i = 1; i < range; i++) {
							instance_create_depth(x-i*20,y+i*20,				_depth,o_able,{image_blend : c_white})
							if place_meeting(x-i*20,y+i*20,o_piece){
							instance_create_depth(x-i*20,y+i*20,				_depth,o_eat,{image_blend : c_white})	
								break;}
								
							if place_meeting(x-i*20,y+i*20,o_blocker){
								break;}
					}
			    
				for (var i = 1; i < range; i++) {
							instance_create_depth(x-i*20,y-i*20,				_depth,o_able,{image_blend : c_white})
							if place_meeting(x-i*20,y-i*20,o_piece){
							instance_create_depth(x-i*20,y-i*20,				_depth,o_eat,{image_blend : c_white})	
								break;}
								
							if place_meeting(x-i*20,y-i*20,o_blocker){
								break;}
					}
	
			repeat(1){					
				//Close Range														
				instance_create_depth(x+40,y+20,						_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-40,y+20,							_depth,o_able,{image_blend : c_white})
																									
				instance_create_depth(x+40,y-20,							_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-40,y-20,							_depth,o_able,{image_blend : c_white})
																									
				//Far range																
				instance_create_depth(x+20,y+40,						_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-20,y+40,							_depth,o_able,{image_blend : c_white})
																									
				instance_create_depth(x+20,y-40,							_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-20,y-40,							_depth,o_able,{image_blend : c_white})
				
				//Close range Eat
				if place_meeting(x+40,y+20,o_piece){
					instance_create_depth(x+40,y+20,					_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-40,y+20,o_piece){
					instance_create_depth(x-40,y+20,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x+40,y-20,o_piece){
					instance_create_depth(x+40,y-20,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-40,y-20,o_piece){
					instance_create_depth(x-40,y-20,						_depth,o_eat,{image_blend : c_white})}
				
				//Far range Eat
				if place_meeting(x+20,y+40,o_piece){
					instance_create_depth(x+20,y+40,					_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-20,y+40,o_piece){
					instance_create_depth(x-20,y+40,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x+20,y-40,o_piece){
					instance_create_depth(x+20,y-40,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-20,y-40,o_piece){
					instance_create_depth(x-20,y-40,						_depth,o_eat,{image_blend : c_white})}
			}																					
        break;
	
    case KNIGHT:																
			repeat(1){																
				//Close Range														
				instance_create_depth(x+40,y+20,						_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-40,y+20,							_depth,o_able,{image_blend : c_white})
																									
				instance_create_depth(x+40,y-20,							_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-40,y-20,							_depth,o_able,{image_blend : c_white})
																									
				//Far range																
				instance_create_depth(x+20,y+40,						_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-20,y+40,							_depth,o_able,{image_blend : c_white})
																									
				instance_create_depth(x+20,y-40,							_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-20,y-40,							_depth,o_able,{image_blend : c_white})
				
				//Close range Eat
				if place_meeting(x+40,y+20,o_piece){
					instance_create_depth(x+40,y+20,					_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-40,y+20,o_piece){
					instance_create_depth(x-40,y+20,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x+40,y-20,o_piece){
					instance_create_depth(x+40,y-20,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-40,y-20,o_piece){
					instance_create_depth(x-40,y-20,						_depth,o_eat,{image_blend : c_white})}
				
				//Far range Eat
				if place_meeting(x+20,y+40,o_piece){
					instance_create_depth(x+20,y+40,					_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-20,y+40,o_piece){
					instance_create_depth(x-20,y+40,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x+20,y-40,o_piece){
					instance_create_depth(x+20,y-40,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-20,y-40,o_piece){
					instance_create_depth(x-20,y-40,						_depth,o_eat,{image_blend : c_white})}
			}																					
        break;
	
    case BISHOP:
        
		var range=10
		
		for (var i = 1; i < range; i++) {
					instance_create_depth(x+i*20,y+i*20,				_depth,o_able,{image_blend : c_white})
					if place_meeting(x+i*20,y+i*20,o_piece){
					instance_create_depth(x+i*20,y+i*20,				_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x+i*20,y+i*20,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {	
					instance_create_depth(x+i*20,y-i*20,				_depth,o_able,{image_blend : c_white})
					if place_meeting(x+i*20,y-i*20,o_piece){
					instance_create_depth(x+i*20,y-i*20,				_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x+i*20,y-i*20,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {
					instance_create_depth(x-i*20,y+i*20,				_depth,o_able,{image_blend : c_white})
					if place_meeting(x-i*20,y+i*20,o_piece){
					instance_create_depth(x-i*20,y+i*20,				_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x-i*20,y+i*20,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {
					instance_create_depth(x-i*20,y-i*20,				_depth,o_able,{image_blend : c_white})
					if place_meeting(x-i*20,y-i*20,o_piece){
					instance_create_depth(x-i*20,y-i*20,				_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x-i*20,y-i*20,o_blocker){
						break;}
			}
		
        break;
	
    case KING:
			repeat(1){
				instance_create_depth(x+20,y+20,						_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-20,y+20,							_depth,o_able,{image_blend : c_white})
																									
				instance_create_depth(x+20,y-20,							_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-20,y-20,							_depth,o_able,{image_blend : c_white})
																									
				instance_create_depth(x+20,y,								_depth,o_able,{image_blend : c_white})
				instance_create_depth(x,y+20,								_depth,o_able,{image_blend : c_white})
																									
				instance_create_depth(x,y-20,								_depth,o_able,{image_blend : c_white})
				instance_create_depth(x-20,y,								_depth,o_able,{image_blend : c_white})
				
				if place_meeting(x+20,y+20,o_piece){
					instance_create_depth(x+20,y+20,					_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-20,y+20,o_piece){
					instance_create_depth(x-20,y+20,						_depth,o_eat,{image_blend : c_white})}
					
				if place_meeting(x+20,y-20,o_piece){
					instance_create_depth(x+20,y-20,						_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-20,y-20,o_piece){
					instance_create_depth(x-20,y-20,						_depth,o_eat,{image_blend : c_white})}
					
				if place_meeting(x+20,y,o_piece){
					instance_create_depth(x+20,y,							_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x,y+20,o_piece){
					instance_create_depth(x,y+20,							_depth,o_eat,{image_blend : c_white})}
					
				if place_meeting(x,y-20,o_piece){
					instance_create_depth(x,y-20,							_depth,o_eat,{image_blend : c_white})}
				if place_meeting(x-20,y,o_piece){
					instance_create_depth(x-20,y,							_depth,o_eat,{image_blend : c_white})}
			}
        break;
	
    case QUEEN:
		var range=10
		
		for (var i = 1; i < range; i++) {
					instance_create_depth(x+i*20,y+i*20,				_depth,o_able,{image_blend : c_white})
					if place_meeting(x+i*20,y+i*20,o_piece){
					instance_create_depth(x+i*20,y+i*20,				_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x+i*20,y+i*20,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {	
					instance_create_depth(x+i*20,y-i*20,				_depth,o_able,{image_blend : c_white})
					if place_meeting(x+i*20,y-i*20,o_piece){
					instance_create_depth(x+i*20,y-i*20,				_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x+i*20,y-i*20,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {
					instance_create_depth(x-i*20,y+i*20,				_depth,o_able,{image_blend : c_white})
					if place_meeting(x-i*20,y+i*20,o_piece){
					instance_create_depth(x-i*20,y+i*20,				_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x-i*20,y+i*20,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {
					instance_create_depth(x-i*20,y-i*20,				_depth,o_able,{image_blend : c_white})
					if place_meeting(x-i*20,y-i*20,o_piece){
					instance_create_depth(x-i*20,y-i*20,				_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x-i*20,y-i*20,o_blocker){
						break;}
			}

		for (var i = 1; i < range; i++) {
					instance_create_depth(x+i*20,y,						_depth,o_able,{image_blend : c_white})
					if place_meeting(x+i*20,y,o_piece){
					instance_create_depth(x+i*20,y,						_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x+i*20,y,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {	
					instance_create_depth(x-i*20,y,							_depth,o_able,{image_blend : c_white})
					if place_meeting(x-i*20,y,o_piece){
					instance_create_depth(x-i*20,y,							_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x-i*20,y,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {
					instance_create_depth(x,y+i*20,						_depth,o_able,{image_blend : c_white})
					if place_meeting(x,y+i*20,o_piece){
					instance_create_depth(x,y+i*20,						_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x,y+i*20,o_blocker){
						break;}
			}
        
		for (var i = 1; i < range; i++) {
					instance_create_depth(x,y-i*20,							_depth,o_able,{image_blend : c_white})
					if place_meeting(x,y-i*20,o_piece){
					instance_create_depth(x,y-i*20,							_depth,o_eat,{image_blend : c_white})	
						break;}
						
					if place_meeting(x,y-i*20,o_blocker){
						break;}
			}
        break;

}
	
	
}

function screenshake(_time, _magnitude, _fade)
{
   with (o_screenshake)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
   }
}

function scr_sound_switch(){
				switch (type) {
				    case ROOK:
				        SND_SLIDE
				        break;
						
				    case KNIGHT:
				        SND_HORSE
				        break;
						
				    case BISHOP:
				        SND_BISHOP
				        break;
						
				    case PAWN:
				        SND_PAWN
				        break;
						
				    case KING:
				        SND_KING
				        break;
						
				    case QUEEN:
				        SND_QUEEN
				        break;
						
				    case EMPEROR:
				        SND_EMPEROR
				        break;
						
				    case SOLDIER:
				        SND_SOLDIER
				        break;
						
				    case MOUSE:
				        SND_MOUSE
				        break;
				}	
}

function scr_squish(xS,yS,amount,time,idSquished,defX=1,defY=1){

o_squish.squish=true
o_squish.squishingX=xS
o_squish.squishingY=yS
o_squish.squishAmount=amount
o_squish.squishTime=time
o_squish.squisher=idSquished
o_squish.squishingDEFAULTX=defX
o_squish.squishingDEFAULTY=defY

}


function scr_shiganshina_walls(){
	
	var _depth=-9999
	var tileBig=20
	
	var _yTop=0
	var _yBottom=149*20
	var _xLeft=0
	var _xRight=299*20

	
	for (var i = 0; i < room_width/tileBig; i++) {
			instance_create_depth(i*tileBig,_yTop,						_depth,o_blocker)
	}																														
																															
	for (var i = 0; i < room_width/tileBig; i++) {											
			instance_create_depth(i*tileBig,_yBottom,					_depth,o_blocker)
	}																															
																																
	for (var i = 0; i < room_height/tileBig; i++) {												
			instance_create_depth(_xLeft,i*tileBig,						_depth,o_blocker)
	}																														
																															
	for (var i = 0; i < room_height/tileBig; i++) {											
			instance_create_depth(_xRight,i*tileBig,						_depth,o_blocker)
	}
	
}

function scr_draw_text_outline(string_,x_,y_,outlinebig_,outlinecolor_,textcolor_,alpha_){

//OUTLINE
draw_text_color(x_+outlinebig_,y_,string_,outlinecolor_,outlinecolor_,outlinecolor_,outlinecolor_,alpha_)
draw_text_color(x_-outlinebig_,y_,string_,outlinecolor_,outlinecolor_,outlinecolor_,outlinecolor_,alpha_)
draw_text_color(x_,y_+outlinebig_,string_,outlinecolor_,outlinecolor_,outlinecolor_,outlinecolor_,alpha_)
draw_text_color(x_,y_-outlinebig_,string_,outlinecolor_,outlinecolor_,outlinecolor_,outlinecolor_,alpha_)

draw_text_color(x_+outlinebig_,y_+outlinebig_,string_,outlinecolor_,outlinecolor_,outlinecolor_,outlinecolor_,alpha_)
draw_text_color(x_-outlinebig_,y_-outlinebig_,string_,outlinecolor_,outlinecolor_,outlinecolor_,outlinecolor_,alpha_)
draw_text_color(x_+outlinebig_,y_-outlinebig_,string_,outlinecolor_,outlinecolor_,outlinecolor_,outlinecolor_,alpha_)
draw_text_color(x_-outlinebig_,y_+outlinebig_,string_,outlinecolor_,outlinecolor_,outlinecolor_,outlinecolor_,alpha_)

//TEXT
draw_text_color(x_,y_,string_,textcolor_,textcolor_,textcolor_,textcolor_,alpha_)

}