var debugSee=instance_number(oTileParent)
draw_text(30,30,debugSee)

if global.childrenStop=false
{
draw_text(20,410, "Generating terrain...")

var amountLoad=timer/maxTime*100

draw_healthbar(20,440,620,460,amountLoad,c_black,c_red,c_green,0,true,true)

show_debug_overlay(true)
}