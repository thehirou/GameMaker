timer=0

loadTimeSource=time_source_create(time_source_game,1,time_source_units_frames,function()
{
	timer++	;
}, [], -1);

time_source_start(loadTimeSource);