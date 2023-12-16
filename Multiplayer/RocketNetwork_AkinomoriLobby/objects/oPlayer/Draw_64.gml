if global.playerState=state.texting
{
draw_set_color(c_black)
draw_rectangle(0,480-50,640,480,false)
draw_set_color(c_white)
draw_set_valign(fa_bottom)
draw_set_halign(fa_left)
//draw_text_ext(10,460,msg+blinkingMotherfucker,15,5000)
draw_text(10,465,msg+blinkingMotherfucker)
draw_set_halign(fa_left)
}


//Sprite customization
if global.currentRoom!="none" and global.playerState=state.customizing
{
	
	var _c=mouse_check_button_pressed(mb_left)
	if instance_position(mouse_x, mouse_y,inst_L1)	and	 _c{eyesOption--			} //EYES
	if instance_position(mouse_x, mouse_y,inst_L2)	and	 _c{mouthOption--			} //MOUTH
	if instance_position(mouse_x, mouse_y,inst_L3)	and	 _c{accessoryOption--		} //ACCESSORY
	if instance_position(mouse_x, mouse_y,inst_L4)	and	 _c{headOption--			} //HEAD
	if instance_position(mouse_x, mouse_y,inst_L5)	and	 _c{torsoOption--			} //TORSO
	if instance_position(mouse_x, mouse_y,inst_L6)	and	 _c{legsOption--			} //LEGS
	if instance_position(mouse_x, mouse_y,inst_L7)	and	 _c{feetOption--			} //FEET
														
	if instance_position(mouse_x, mouse_y,inst_R1)	and	 _c{eyesOption++			} //EYES
	if instance_position(mouse_x, mouse_y,inst_R2)	and	 _c{mouthOption++			} //MOUTH
	if instance_position(mouse_x, mouse_y,inst_R3)	and	 _c{accessoryOption++		} //ACCESSORY
	if instance_position(mouse_x, mouse_y,inst_R4)	and	 _c{headOption++			} //HEAD
	if instance_position(mouse_x, mouse_y,inst_R5)	and	 _c{torsoOption++			} //TORSO
	if instance_position(mouse_x, mouse_y,inst_R6)	and	 _c{legsOption++			} //LEGS
	if instance_position(mouse_x, mouse_y,inst_R7)	and	 _c{feetOption++			} //FEET
	
	show_debug_message(eyesOption)
	
	eyesOption		=clamp(eyesOption		,0		,max_eyesOption		)
	mouthOption		=clamp(mouthOption		,0		,max_mouthOption		)
	accessoryOption	=clamp(accessoryOption	,0		,max_accessoryOption	)
	headOption		=clamp(headOption		,0		,max_headOption		)
	torsoOption		=clamp(torsoOption		,0		,max_torsoOption		)
	legsOption		=clamp(legsOption		,0		,max_legsOption		)
	feetOption		=clamp(feetOption		,0		,max_feetOption		)
	
	
	scrSwitchPart(part.torso,		torsoArray		[torsoOption]);
	scrSwitchPart(part.head,		headArray		[headOption]);
	scrSwitchPart(part.legs,		legsArray		[legsOption]);
	scrSwitchPart(part.feet,		feetArray		[feetOption]);
	scrSwitchPart(part.eyes,		eyesArray		[eyesOption]);
	scrSwitchPart(part.mouth,		mouthArray		[mouthOption]);
	scrSwitchPart(part.accessory,	accessoryArray	[accessoryOption]);
	
	//var _xcam=camera_get_view_x(view_camera[0])
	//var _ycam=camera_get_view_y(view_camera[0])
	//I FORGOT I HAD TO DRAW THIS ON GUI
	
	var _xcam=0
	var _ycam=0
	var _padding=90
	
	draw_set_alpha(0.5)
	draw_rectangle_color(_xcam+_padding,_ycam+_padding,_xcam+640-_padding,_ycam+480-_padding,
	c_black,c_black,c_black,c_black,false)
	
	var scale=5
	var _xOffset=-125
	
	//BASE
	draw_sprite_ext(sprIdleDown,0,			(_xcam+640/2)+_xOffset,_ycam+(480/2)+112,scale,scale,0,image_blend,1)
											
	//CURRENT OUTFIT						
	draw_sprite_ext(eyes[spr.idleDown],0,	(_xcam+640/2)+_xOffset,_ycam+(480/2)+112,scale,scale,0,c_white,1)
	draw_sprite_ext(mout[spr.idleDown],0,	(_xcam+640/2)+_xOffset,_ycam+(480/2)+112,scale,scale,0,c_white,1)
	draw_sprite_ext(feet[spr.idleDown],0,	(_xcam+640/2)+_xOffset,_ycam+(480/2)+112,scale,scale,0,c_white,1)
	draw_sprite_ext(legs[spr.idleDown],0,	(_xcam+640/2)+_xOffset,_ycam+(480/2)+112,scale,scale,0,c_white,1)
	draw_sprite_ext(tors[spr.idleDown],0,	(_xcam+640/2)+_xOffset,_ycam+(480/2)+112,scale,scale,0,c_white,1)
	draw_sprite_ext(head[spr.idleDown],0,	(_xcam+640/2)+_xOffset,_ycam+(480/2)+112,scale,scale,0,c_white,1)
	draw_sprite_ext(acsr[spr.idleDown],0,	(_xcam+640/2)+_xOffset,_ycam+(480/2)+112,scale,scale,0,c_white,1)
	
	draw_set_alpha(1)
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_text(400,144+32*0,textEyes)
	draw_text(400,144+32*1,textMouth)
	draw_text(400,144+32*2,textAccessory)
	draw_text(400,144+32*3,textHead)
	draw_text(400,144+32*4,textTorso)	
	draw_text(400,144+32*5,textLegs)
	draw_text(400,144+32*6,textFeet)
	
	for (var i = 0; i < 7; ++i)
	{
	    draw_text(304,144+32*i,"<")
	    draw_text(496,144+32*i,">")
	}
	
	draw_set_valign(fa_bottom)
	draw_set_halign(fa_left)
	
	if global.debug=true
	{
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(_xcam+640/2,_ycam+480/2,
	"Eyes"+"\n"+			textEyes		+"\n"+"\n"+
	"Mouth"+"\n"+			textMouth		+"\n"+"\n"+
	"Accessory"+"\n"+		textAccessory		+"\n"+"\n"+
	"Head"+"\n"+			textHead			+"\n"+"\n"+
	"Shirt"+"\n"+			textTorso		+"\n"+"\n"+
	"Pants"+"\n"+			textLegs		+"\n"+"\n"+
	"Shoes"+"\n"+			textFeet
	)
	draw_set_valign(fa_bottom)
	draw_set_halign(fa_left)
	}
}