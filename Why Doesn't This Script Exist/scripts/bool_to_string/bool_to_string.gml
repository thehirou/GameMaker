/*

0??, 1?? Just tell me if it is true or false!
Converts real number 1 or 0 to string true or false

*/

function bool_to_string(value){


	
	switch (real(value))
	{
	    case 0:
	            return "false"
	        break;
			
	    case 1:
	            return "true"
	        break;
			
	    default:
			    return "Not a boolean."
	        break;
	}

}