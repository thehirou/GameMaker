

if endMenu=false
{
	draw_txt_color(20,20,"Selected option: "+string(optionstring),c_yellow)
	if menu!="none"{draw_txt_color(20,40,menu,c_yellow)}

	if menu="alchemy" or menu="combo"
	{
	var drawX = 20+/*padding*/20;
	var drawY = 60;

	for (var i = 0; i < array_length(defaultAlchemy); i++) {
	    draw_text(drawX, drawY + i * 20, defaultAlchemy[i]);
	}

	//selector
	draw_txt_color(20,60+selectorVertPosition,">",c_yellow)
	}
}

draw_set_halign(fa_right)
draw_txt_color(640-20,20,"LIFE: "+string(lifePoints)+"/"+string(MAXlifePoints)+"\nSANITY: "+string(alchPoints)+"/"+string(MAXalchPoints),c_red)
draw_set_halign(fa_left)

if endMenu=true
{

if menu="alchemy" or menu="combo"
{
	logstring="Apfel used " +string(defaultAlchemy[optionAlchemy]) + " alchemy"
	timer[5]++
	if timer[5]>2*60
	{
	//Reset psyching up if player uses alchemy
	if menu="combo"{if psyched=true{psyched=false}}
	timer[0]=0
	timer[5]=0
	enemyTurn=true
	}
	//draw_text(20, 480-40, defaultAlchemy[optionAlchemy]);
}

}

draw_set_valign(fa_bottom)
draw_set_color(c_black)
draw_text_ext(20,480-80,logstring,-20,300)
draw_set_color(c_white)
draw_set_valign(fa_top)

if keyboard_check(vk_enter)
{
for (var i = 0; i < array_length(timer); i++) {
    draw_txt_color(30, 60 + i * 20, "Timer"+string(i)+": "+string(timer[i]),c_blue);
}
}