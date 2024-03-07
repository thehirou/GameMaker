x=0
y=0
draw_sprite_ext(enemyTest,0,640-32*4,128,2,2,0,c_white,1)

if enemyTurn=true
{

debugSpeed=7
qtePos+=debugSpeed

var wi=20
draw_rectangle(0,(480/2)-wi,640,(480/2)+wi,false)	
draw_set_color(c_black)
draw_rectangle(qtePos,(480/2)-wi*3,qtePos+20,(480/2)+wi*3,false)	
draw_set_color(c_white)

if qtePos>(640/2)-30 and qtePos< (640/2)+30 and keyboard_check_pressed(ord("Z"))
{
qteSuccess=true	
}

if qtePos>640 or qteSuccess=true
{
triggerEndTurn=true //debug
qteSuccess=false
}

}else{qtePos=0}