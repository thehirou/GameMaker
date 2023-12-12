if image_alpha<2
{
	image_alpha+=0.05	
}

if image_alpha>1.3
{
	instance_destroy(self);
}


//Script thingy, this shold work only when the selection menu happens.
		
if instance_exists(button)
	{
		if image_alpha>1
			{
				global.inLevel=true
				instance_destroy(button)
			}
	}