if movePiece=true
{
				if instance_exists(o_able){instance_destroy(o_able)}
				if instance_exists(o_eat){instance_destroy(o_eat)}
	with(pieceID)
	{
		if instance_exists(protector){instance_destroy(protector)}
		

		
		if point_distance(x, y, movX_, movY_) >= o_smooth.spd
		{
		    move_towards_point(movX_, movY_, o_smooth.spd);
			
			o_particle.particleStart=true
			o_particle.x=o_smooth.pieceID.x
			o_particle.y=o_smooth.pieceID.y
			
			o_stretch.stretch=true
			o_stretch.stretchID=id
		}else{
			speed = 0;
		}			
				o_followcamera.x=x+10
				o_followcamera.y=y+10
				
				with(o_smooth) //6899 THIS FIXES THAT FOR SOME REASON, THE PIECES THAT MOVE DIAGONALLY DON'T SNAP CORRECTLY
					{
						timer++

						if timer>=20 and pieceID.gotToThePoint=false		//SO IF 10 FRAMES PASSES AND THE PIECE DIDN'T SNAP, IT WILL SNAP
						{																							//THERE IS A SCREENSHAKE SO THE SNAP IS LESS NOTICEABLE
							with(pieceID)
							{
								//o_smooth.defGotToThePoint=true
								x=round(movX_)
								y=round(movY_)
							}
						}
					}	
					
				if x=movX_ and y=movY_
				{
					o_particle.particleStart=false
					gotToThePoint=true
				}
	}
}
