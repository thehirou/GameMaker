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
	
	
	
	
	
	
	
	
	//CLOTHING
	var _c=mouse_check_button_pressed(mb_left)
	if instance_position(mouse_x, mouse_y,inst_L1)	and	 _c{if eyesOption			=0{eyesOption		=	max_eyesOption			+1};	eyesOption--			} //EYES
	if instance_position(mouse_x, mouse_y,inst_L2)	and	 _c{if mouthOption			=0{mouthOption		=	max_mouthOption			+1};	mouthOption--			} //MOUTH
	if instance_position(mouse_x, mouse_y,inst_L3)	and	 _c{if accessoryOption		=0{accessoryOption	=	max_accessoryOption		+1};	accessoryOption--		} //ACCESSORY
	if instance_position(mouse_x, mouse_y,inst_L4)	and	 _c{if headOption			=0{headOption		=	max_headOption			+1};	headOption--			} //HEAD
	if instance_position(mouse_x, mouse_y,inst_L5)	and	 _c{if torsoOption			=0{torsoOption		=	max_torsoOption			+1};	torsoOption--			} //TORSO
	if instance_position(mouse_x, mouse_y,inst_L6)	and	 _c{if legsOption			=0{legsOption		=	max_legsOption			+1};	legsOption--			} //LEGS
	if instance_position(mouse_x, mouse_y,inst_L7)	and	 _c{if feetOption			=0{feetOption		=	max_feetOption			+1};	feetOption--			} //FEET
														
	if instance_position(mouse_x, mouse_y,inst_R1)	and	 _c{if eyesOption			=max_eyesOption			+0		{eyesOption		=	-1};	eyesOption++			} //EYES
	if instance_position(mouse_x, mouse_y,inst_R2)	and	 _c{if mouthOption			=max_mouthOption		+0		{mouthOption	=	-1};	mouthOption++			} //MOUTH
	if instance_position(mouse_x, mouse_y,inst_R3)	and	 _c{if accessoryOption		=max_accessoryOption	+0		{accessoryOption=	-1};	accessoryOption++		} //ACCESSORY
	if instance_position(mouse_x, mouse_y,inst_R4)	and	 _c{if headOption			=max_headOption			+0		{headOption		=	-1};	headOption++			} //HEAD
	if instance_position(mouse_x, mouse_y,inst_R5)	and	 _c{if torsoOption			=max_torsoOption		+0		{torsoOption	=	-1};	torsoOption++			} //TORSO
	if instance_position(mouse_x, mouse_y,inst_R6)	and	 _c{if legsOption			=max_legsOption			+0		{legsOption		=	-1};	legsOption++			} //LEGS
	if instance_position(mouse_x, mouse_y,inst_R7)	and	 _c{if feetOption			=max_feetOption			+0		{feetOption		=	-1};	feetOption++			} //FEET
	
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
	
	//SKIN RGB
	
	
	
selectedColor=clamp(selectedColor,0,2)
skinR=clamp(skinR,0,255)
skinG=clamp(skinG,0,255)
skinB=clamp(skinB,0,255)
	
	if selectedColor>0
	{
	if instance_position(mouse_x, mouse_y,instRGB1)	and	 _c{selectedColor--}
	}
	
	if selectedColor<2
	{
	if instance_position(mouse_x, mouse_y,instRGB2)	and	 _c{selectedColor++}
	}
	
	var _c_m=mouse_check_button(mb_left)
	if instance_position(mouse_x, mouse_y,sliderRGB_L)	and	 _c_m
	{
		switch (selectedColor)
		{
		    case 0:		if skinR>0{skinR--}; break;
		    case 1:		if skinG>0{skinG--}; break;
		    case 2:		if skinB>0{skinB--}; break;
		    default:	if skinR>0{skinR--}; break;
		}
	}
	if instance_position(mouse_x, mouse_y,sliderRGB_R)	and	 _c_m
	{
		switch (selectedColor)
		{
		    case 0:		if skinR<255{skinR++}; break;
		    case 1:		if skinG<255{skinG++}; break;
		    case 2:		if skinB<255{skinB++}; break;
		    default:	if skinR<255{skinR++}; break;
		}
	}
	
	switch (selectedColor)
	{
	    case 0:		rgbOutputString="Red: "+string(skinR) break;
	    case 1:		rgbOutputString="Green: "+string(skinG) break;
	    case 2:		rgbOutputString="Blue: "+string(skinB) break;
	    default:	rgbOutputString="Red: "+string(skinR) break;
	}
	
	var _dis=16
	draw_set_color(c_white)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text(instRGBtextType.startX+_dis,instRGBtextType.startY+_dis,"Skin Color RGB")
	draw_text(instRGBoutput.startX+_dis,instRGBoutput.startY+_dis,rgbOutputString)
	draw_text(instRGB1.startX+_dis,instRGB1.startY+_dis,"<")
	draw_text(instRGB2.startX+_dis,instRGB2.startY+_dis,">")
	draw_text(sliderRGB_L.startX+_dis,sliderRGB_L.startY+_dis,"<")
	draw_text(sliderRGB_R.startX+_dis,sliderRGB_R.startY+_dis,">")
	draw_set_color(c_white)
	
	
	
	
	
}