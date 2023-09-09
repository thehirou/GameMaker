x=round(x)
y=round(y)

spd=clamp(spd,1,20)
if movePiece=true
{
			with(pieceID)	
			{
				if gotToThePoint=true and temporaryFreeSpace=FREE //and o_smooth.defGotToThePoint=true
				{
				global.pieceXfromLastTurn=x+10
				global.pieceYfromLastTurn=y+10
				selectedPiece=false
				wait=0
				global.seeAvailable=false
				global.selectedPiece=" "
				repeat(1){
				protector=CREATEPROTECTION}
				//if !instance_exists(protector){protector.x=x; protector.y=y}

				
				if launcher=WHITES and WHITETURN {
				global.whiteXlast=x+10
				global.whiteYlast=y+10
				}
				if launcher=BLACKS and BLACKTURN{
				global.blackXlast=x+10
				global.blackYlast=y+10
				}
				
				o_stretch.stretch=false
				o_wait.wait=true
				gotToThePoint=false
				o_smooth.movePiece=false
				o_smooth.timer=0
				once=true
				o_smooth.defGotToThePoint=false
				}
		
				if gotToThePoint=true and temporaryFreeSpace=EATABLE //and o_smooth.defGotToThePoint=true
				{
					if instance_exists(o_able){instance_destroy(o_able)}
					if instance_exists(o_eat){instance_destroy(o_eat)}	
						
					screenshake(3,5,0.1)
					SND_CRUNCH
					var _place=instance_place(destroyPosX,destroyPosY,o_piece)
					instance_destroy(_place)
					var _placeprot=instance_place(destroyPosX,destroyPosY,o_protected)
					instance_destroy(_placeprot)
				
					if !instance_exists(_place)
					{
						o_wait.wait=true
						gotToThePoint=false
						o_stretch.stretch=false
						o_smooth.movePiece=false
						o_smooth.timer=0
						once=true
						selectedPiece=false
				
						if launcher=WHITES and WHITETURN{
						global.whiteXlast=x+10
						global.whiteYlast=y+10
						}
						if launcher=BLACKS and BLACKTURN{
						global.blackXlast=x+10
						global.blackYlast=y+10
						}
						
						
						wait=0
						global.seeAvailable=false
						global.selectedPiece=" "
						repeat(1){
						protector=CREATEPROTECTION}
						if instance_exists(protector){protector.x=x; protector.y=y}
						o_smooth.defGotToThePoint=false

					}
				}
			}
}