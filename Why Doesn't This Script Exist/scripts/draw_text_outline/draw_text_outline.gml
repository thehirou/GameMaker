/*

This is the quick solution to adding outlines to your text without using shaders, it takes the same arguments as a normal draw_text_color
but adds the color_outline argument, for the color of the outline and the outline_big argument to check how big the outline is going to be.

That last argument kinda depends on how big your font is, if you use a value excesively higher it might look bad, as I said, this is the quick
solution to adding outlines to your text, gotta play around with that value, usually, a value from 1 to 3 will look good in any font.

*/

function draw_text_outline(x_,y_,string_,color1,color2,color3,color4,color_outline,outline_big,alpha_){

draw_text_color(x_+outline_big,y_,string_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+
draw_text_color(x_,y_+outline_big,string_,color_outline,color_outline,color_outline,color_outline,alpha_) //Y+
draw_text_color(x_-outline_big,y_,string_,color_outline,color_outline,color_outline,color_outline,alpha_) //X-
draw_text_color(x_,y_-outline_big,string_,color_outline,color_outline,color_outline,color_outline,alpha_) //Y+

draw_text_color(x_+outline_big,y_+outline_big,string_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+ Y+
draw_text_color(x_-outline_big,y_-outline_big,string_,color_outline,color_outline,color_outline,color_outline,alpha_) //X- Y-
draw_text_color(x_+outline_big,y_-outline_big,string_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+ Y-
draw_text_color(x_-outline_big,y_+outline_big,string_,color_outline,color_outline,color_outline,color_outline,alpha_) //X- Y+

draw_text_color(x_,y_,string_,color1,color2,color3,color4,alpha_)

}

function draw_text_ext_outline(x_,y_,string_,sep_,w_,color1,color2,color3,color4,color_outline,outline_big,alpha_){

draw_text_ext_color(x_+outline_big,y_,string_,sep_,w_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+
draw_text_ext_color(x_,y_+outline_big,string_,sep_,w_,color_outline,color_outline,color_outline,color_outline,alpha_) //Y+
draw_text_ext_color(x_-outline_big,y_,string_,sep_,w_,color_outline,color_outline,color_outline,color_outline,alpha_) //X-
draw_text_ext_color(x_,y_-outline_big,string_,sep_,w_,color_outline,color_outline,color_outline,color_outline,alpha_) //Y+

draw_text_ext_color(x_+outline_big,y_+outline_big,string_,sep_,w_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+ Y+
draw_text_ext_color(x_-outline_big,y_-outline_big,string_,sep_,w_,color_outline,color_outline,color_outline,color_outline,alpha_) //X- Y-
draw_text_ext_color(x_+outline_big,y_-outline_big,string_,sep_,w_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+ Y-
draw_text_ext_color(x_-outline_big,y_+outline_big,string_,sep_,w_,color_outline,color_outline,color_outline,color_outline,alpha_) //X- Y+

draw_text_ext_color(x_,y_,string_,sep_,w_,color1,color2,color3,color4,alpha_)

}

function draw_text_transformed_outline(x_,y_,string_,xscale_,yscale_,angle_,color1,color2,color3,color4,color_outline,outline_big,alpha_){

draw_text_transformed_color(x_+outline_big,y_,string_,xscale_,yscale_,angle_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+
draw_text_transformed_color(x_,y_+outline_big,string_,xscale_,yscale_,angle_,color_outline,color_outline,color_outline,color_outline,alpha_) //Y+
draw_text_transformed_color(x_-outline_big,y_,string_,xscale_,yscale_,angle_,color_outline,color_outline,color_outline,color_outline,alpha_) //X-
draw_text_transformed_color(x_,y_-outline_big,string_,xscale_,yscale_,angle_,color_outline,color_outline,color_outline,color_outline,alpha_) //Y+

draw_text_transformed_color(x_+outline_big,y_+outline_big,string_,xscale_,yscale_,angle_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+ Y+
draw_text_transformed_color(x_-outline_big,y_-outline_big,string_,xscale_,yscale_,angle_,color_outline,color_outline,color_outline,color_outline,alpha_) //X- Y-
draw_text_transformed_color(x_+outline_big,y_-outline_big,string_,xscale_,yscale_,angle_,color_outline,color_outline,color_outline,color_outline,alpha_) //X+ Y-
draw_text_transformed_color(x_-outline_big,y_+outline_big,string_,xscale_,yscale_,angle_,color_outline,color_outline,color_outline,color_outline,alpha_) //X- Y+

draw_text_transformed_color(x_,y_,string_,xscale_,yscale_,angle_,color1,color2,color3,color4,alpha_)

}