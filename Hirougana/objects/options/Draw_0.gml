draw_set_halign(fa_center)

if(!writeKeyboardObj.keyboardMode)
{
	drawRectangleStroke(xSeparation+40,yAnim1+ySelectedAnim1+closeAnim1+boxYFinal-boxBig,xSeparation+boxBig+40,yAnim1+ySelectedAnim1+closeAnim1+boxYFinal,selectedColor1,stroke)

	drawRectangleStroke((room_width/2)-boxBig/2,yAnim2+ySelectedAnim2+closeAnim2+boxYFinal-boxBig,(room_width/2)+boxBig-boxBig/2,yAnim2+ySelectedAnim2+closeAnim2+boxYFinal,selectedColor2,stroke)

	drawRectangleStroke(room_width-xSeparation-boxBig-40,yAnim3+ySelectedAnim3+closeAnim3+boxYFinal-boxBig,room_width-xSeparation-40,yAnim3+ySelectedAnim3+closeAnim3+boxYFinal,selectedColor3,stroke)

	draw_set_color(c_white)

	draw_set_font(fuentePreguntas)

	draw_set_valign(fa_center)

	draw_text_color(xSeparation+40+boxBig/2,yAnim1+ySelectedAnim1+closeAnim1+boxYFinal-(boxBig/2)+3,string(drawPrompt1),selectedColor1,selectedColor1,selectedColor1,selectedColor1,1)

	draw_text_color(room_width/2,yAnim2+ySelectedAnim2+closeAnim2+boxYFinal-(boxBig/2)+3,string(drawPrompt2),selectedColor2,selectedColor2,selectedColor2,selectedColor2,1)

	draw_text_color(room_width-xSeparation-40-boxBig/2,yAnim3+ySelectedAnim3+closeAnim3+boxYFinal-(boxBig/2)+3,string(drawPrompt3),selectedColor3,selectedColor3,selectedColor3,selectedColor3,1)

	draw_set_color(c_white)

	draw_set_font(manager.font2)


	if pos!=2
	{
		draw_text(room_width-xSeparation-40-(boxBig/2)+boxBig+(boxBig/2)+buttonArrowJuice-20,yAnim3+boxYFinal+closeAnim2-(boxBig/2),">")//>
	}

	if pos!=0
	{
		draw_text(xSeparation+40+(boxBig/2)-boxBig-(boxBig/2)-buttonArrowJuice+20,yAnim1+boxYFinal+closeAnim2-(boxBig/2),"<") //<
	}

}

if drawStreak=true
{
	draw_set_color(c_white)
	draw_set_font(fuentePreguntas)
	draw_text_ext_transformed((room_width/2)+streakXshake,streakY+streakYshake,"STREAK: "+string(streak),4,500,1,1,goodAnim)
}

if writeKeyboardObj.keyboardMode=true
{
	draw_set_font(arialBlack)
	draw_text_ext(room_width/2,yAnim2-80+closeAnim2+boxYFinal-(boxBig/2)+3,writeKeyboardObj.stringDraw,30,900)	
}