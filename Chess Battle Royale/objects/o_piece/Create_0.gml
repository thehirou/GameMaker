color_row_index=global.color_row_index
color_sets=global.color_sets

v_offset=global.v_offset
v_normal=global.v_normal

palette_swap_sampler=global.palette_swap_sampler
texture_palette=global.texture_palette

difX=0
difY=0
x+=difX
y+=difY
speed=0

ownFog=instance_create_depth(x+10,y+10,-999,o_fog)

#macro		RANDOMRGBLIMIT			 irandom_range(100,200)
ownColor=make_color_rgb(RANDOMRGBLIMIT,RANDOMRGBLIMIT,RANDOMRGBLIMIT)

#macro		CREATEPROTECTION			instance_create_depth(x,y,-999,o_protected,{image_blend : c_fuchsia, image_alpha : 0})
repeat(1){
protector=CREATEPROTECTION}

global.freespace=NOTFREE
temporaryFreeSpace=NOTFREE
global.seeAvailable=false

movX_=0
movY_=0
once=true
gotToThePoint=false

wait=0

tileBig=20

mouseHover=false

global.blackXlast=o_spawn.x+50
global.blackYlast=o_spawn.y+20

global.whiteXlast=o_spawn.x+50
global.whiteYlast=o_spawn.y+7*20

destroyPosX=0
destroyPosY=0

selectedPiece=false
selectedPieceString="Not Selected"


#macro NONE "No color"
global.selectedColor=NONE
insideSelectedColor=WHITES

#macro WHITETURN global.turn % 2 == 0
#macro BLACKTURN global.turn % 2 == 1

global.selectedID=instance_position(mouse_x, mouse_y, o_piece);

danger=false
dangerString="Danger"


//6899 CHANGE WHEN ADDING NEW PIECES
switch (type) {
	
    case PAWN:
			sprite_index=spr_pawn
        break;
	
    case ROOK:
			sprite_index=spr_rook
        break;
	
    case BISHOP:
			sprite_index=spr_bishop
        break;
	
    case QUEEN:
			sprite_index=spr_queen
        break;
	
    case KNIGHT:
			sprite_index=spr_knight
        break;
	
    case KING:
			sprite_index=spr_king
        break;
	
    case EMPEROR:
			sprite_index=spr_emperor
        break;
	
    case SOLDIER:
			sprite_index=spr_soldier
        break;
	
    case MOUSE:
			sprite_index=spr_mouse
        break;

}
