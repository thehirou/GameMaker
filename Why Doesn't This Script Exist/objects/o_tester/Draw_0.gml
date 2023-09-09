var y_=30
draw_sprite(spr,0,position,room_height-100)
draw_set_font(f_font)

//Script examples

//draw_text_outline
draw_text_outline(30,y_,																								//X Y Position
"draw_text_outline",																										//String
c_white,c_yellow,c_white,c_gray,																				//Colors for the inside
c_black,1,																															//Color and size for the outline
1)																																		//Alpha
																																		
//draw_text_transformed_outline																			
draw_text_transformed_outline(30,y_+y_,																//X Y Position
"draw_text_transformed_outline",																			//String
1.6,0.6,45,																															//Transforming arguments
c_green,c_lime,c_yellow,c_orange,																			//Colors for the main text
c_blue,1,																															//Color and position for the shadow
1)																																		//Alpha
																																		
//draw_text_shadow																									 
draw_text_shadow(30,y_+y_+y_,																					//X Y Position
"draw_text_shadow",																										//String
c_white,c_red,c_purple,c_yellow,																				//Colors for the main text
c_black, +2, +2,																												//Color and position for the shadow
1)																																		//Alpha
																																		
//draw_text_transformed_shadow																		
draw_text_transformed_shadow(30,y_+y_+y_+y_,													//X Y Position
"draw_text_transformed_shadow",																			//String
1.6,0.6,-2,																															//Transforming arguments
c_green,c_lime,c_yellow,c_orange,																			//Colors for the main text
c_red,+2,+2,																														//Color and position for the shadow
1)																																		//Alpha

//draw_rectangle_thick
draw_rectangle_thick(30,y_+y_+y_+y_+y_+y_,140,y_+y_+y_+y_+y_+y_+y_+y_,	//X1 Y1 X2 Y2 Position
c_aqua,																																//Color for the outline
6)																																		//Thickness for the outline