if stretch=true
{
	with(stretchID)
	{
		if y!=yprevious
		{
			image_index=1
		}
		
		if x!=xprevious
		{
			image_index=2
		}
	}

}else{

	with(stretchID)
	{
		image_index=0
		stretch=false
	}

}