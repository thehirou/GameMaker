var buttonWidth=collisionBoxW/2
var buttonHeight=collisionBoxH/2
var oWid=5 //Outline Width

var c_outline=c_white
if cursorHover=false
{
var c_inside=c_gray
}
else
{
var c_inside=#5f5f60	
}
var c_text=c_white

var text_sep=14 //PROBABLY WILL HAVE TO CHANGE THIS ONCE I CHANGE THE FONT - 6899
var text_padding=3

//Outside
draw_set_color(c_outline)
draw_rectangle(x-buttonWidth-oWid,y-buttonHeight-oWid,x+buttonWidth+oWid,y+buttonHeight+oWid,false)
//Inside
draw_set_color(c_inside)
draw_rectangle(x-buttonWidth,y-buttonHeight,x+buttonWidth,y+buttonHeight,false)
//Text
draw_set_color(c_text)
draw_text_ext(x-buttonWidth+text_padding,y-buttonHeight,$"CAM\n{string(camID)}",text_sep,buttonWidth*2)