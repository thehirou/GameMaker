if(keyboardMode) and keyboard_string!=""
{
draw_set_font(arialBlack1)
draw_text_ext(room_width/2,room_height-50,"Press ->Enter<- when you're ready!",30,900)
}

if warning=true
{
	draw_sprite_ext(keyIcon2,0,room_width/2,room_height-150,1,1,0,c_white,wave)
}

//if(keyboardMode)
//{
//	if manager.answer="CHI" or manager.answer="TSU" or manager.answer="SHI"
//		{
//			draw_set_font(arialBlack)
//			draw_text_ext_color(room_width/2,options.yAnim2-50+options.closeAnim2+options.boxYFinal-(options.boxBig/2)+3,"_ _ _",30,900,c_gray,c_gray,c_gray,c_gray,1)		
//		}
//		else if manager.answer="A" or manager.answer="E" or manager.answer="I" or manager.answer="O" or manager.answer="U" or manager.answer="N"
//		{
//		draw_set_font(arialBlack)
//		draw_text_ext_color(room_width/2,options.yAnim2-50+options.closeAnim2+options.boxYFinal-(options.boxBig/2)+3,"_",90,900,c_gray,c_gray,c_gray,c_gray,1)	
//		}
//		else
//		{
//			draw_set_font(arialBlack)
//			draw_text_ext_color(room_width/2,options.yAnim2-50+options.closeAnim2+options.boxYFinal-(options.boxBig/2)+3,"_ _",90,900,c_gray,c_gray,c_gray,c_gray,1)	
//		}
//}