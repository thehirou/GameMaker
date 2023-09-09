global.maxVolumeMusic=0.2
global.maxVolumeSfx=1

musicPlus=instance_create_depth(-120,-120,-999,o_pixel,			{image_blend : c_red			,image_xscale : 20		, image_yscale :20,})
musicMinus=instance_create_depth(-120,-120,-999,o_pixel,		{image_blend : c_blue		,image_xscale : 20		, image_yscale :20,})
																																									
sfxPlus=instance_create_depth(-120,-120,-999,o_pixel,				{image_blend : c_green	,image_xscale : 20		, image_yscale :20,})
sfxMinus=instance_create_depth(-120,-120,-999,o_pixel,			{image_blend : c_yellow	,image_xscale : 20		, image_yscale :20,})

hideBars=-9999

multiplier=0.1