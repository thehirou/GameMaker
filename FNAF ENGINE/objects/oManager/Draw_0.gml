switch (room) {
    case rmInit:
        timer[0]++
		intro_alpha[1]+=0.01
		intro_alpha[0]+=0.005
		draw_sprite_ext(sprIntroBg,0,0,0,1,1,0,c_white,intro_alpha[0])
		draw_sprite_ext(sprIntroText,0,0,0,1,1,0,c_white,intro_alpha[1])
		
		if timer[0]>6*60
		{
		intro_alpha[2]+=0.005
		draw_set_color(c_black)
		draw_set_alpha(intro_alpha[2])
			draw_rectangle(0,0,9999,9999,false)	
		draw_set_alpha(1)
		draw_set_color(c_white)
		}
		
		if intro_alpha[2]>=1.7
		{
		room_goto(rmGame)	
		}
		
        break;
	
	case rmGame:
		draw_text(20,1040,progress)
		draw_text(20,1000,$"{currentHour} AM")
		break;
}

