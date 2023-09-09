if squish=true
{
	timer++
	if timer<squishTime
	{
		if squishingX=true
		{
			squisher.image_xscale+=squishAmount
		}
	
		if squishingY=true
		{
			squisher.image_yscale+=squishAmount
		}
	}
	
	if timer>squishTime
	{
		squisher.image_xscale=squishingDEFAULTX
		squisher.image_yscale=squishingDEFAULTY
		timer=0
		squish=false	
	}
	
}