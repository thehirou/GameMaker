if (shake) 
{ 
   shake_time -= 1; 
   _xval = choose(-shake_magnitude, shake_magnitude); 
   _yval = choose(-shake_magnitude, shake_magnitude); 
   //camera_set_view_pos(view_camera[0], _xval, _yval); 

   if (shake_time <= 0) 
   { 
      shake_magnitude -= shake_fade; 

      if (shake_magnitude <= 0) 
      { 
		  _xval=0
		  _yval=0
         shake = false; 
      } 
   } 
}