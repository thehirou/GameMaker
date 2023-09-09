/*

This takes the same arguments as a draw_text_color but also adds the color_shadow argument (The color for your shadow),
pos_shadow_x, the X direction for the shadow (Can also be negative) and the 
pos_shadow_y, the Y direction for the shadow (Can also be negative)

*/

function draw_text_shadow(x_,y_,string_,color1,color2,color3,color4,color_shadow,pos_shadow_x,pos_shadow_y,alpha_){

draw_text_color(x_+pos_shadow_x,y_+pos_shadow_y,string_,color_shadow,color_shadow,color_shadow,color_shadow,alpha_)

draw_text_color(x_,y_,string_,color1,color2,color3,color4,alpha_)

}

function draw_text_ext_shadow(x_,y_,string_,sep_,w_,color1,color2,color3,color4,color_shadow,pos_shadow_x,pos_shadow_y,alpha_){

draw_text_ext_color(x_+pos_shadow_x,y_+pos_shadow_y,string_,sep_,w_,color_shadow,color_shadow,color_shadow,color_shadow,alpha_)

draw_text_ext_color(x_,y_,string_,sep_,w_,color1,color2,color3,color4,alpha_)

}

function draw_text_transformed_shadow(x_,y_,string_,xscale_,yscale_,angle_,color1,color2,color3,color4,color_shadow,pos_shadow_x,pos_shadow_y,alpha_){

draw_text_transformed_color(x_+pos_shadow_x,y_+pos_shadow_y,string_,xscale_,yscale_,angle_,color_shadow,color_shadow,color_shadow,color_shadow,alpha_)

draw_text_transformed_color(x_,y_,string_,xscale_,yscale_,angle_,color1,color2,color3,color4,alpha_)

}