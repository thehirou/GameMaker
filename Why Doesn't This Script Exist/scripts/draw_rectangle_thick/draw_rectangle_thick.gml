/*

Draw a rectangle with outline borders that you can modify

*/

function draw_rectangle_thick(x1,y1,x2,y2,color,width){

draw_set_color(color)
draw_rectangle(x1,y1,x2,y2,true)

var i = 0

do
{
    i += 1
    draw_rectangle(x1-i,y1-i,x2+i,y2+i,true)
}
until(i = width)

}