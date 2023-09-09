if global.settings=true
{
	
var i=20

	hideBars=0

	musicPlus.x		=camera_get_view_x(view_camera[0])+i+280
	musicPlus.y		=camera_get_view_y(view_camera[0])+20+(65)

	musicMinus.x	=camera_get_view_x(view_camera[0])+i+i+i+(60)
	musicMinus.y	=camera_get_view_y(view_camera[0])+20+(65)

	sfxPlus.x			=camera_get_view_x(view_camera[0])+i+280
	sfxPlus.y			=camera_get_view_y(view_camera[0])+20+i+i+(55)

	sfxMinus.x		=camera_get_view_x(view_camera[0])+i+i+i+(60)
	sfxMinus.y		=camera_get_view_y(view_camera[0])+20+i+i+(55)

}else{

	hideBars=-9999

	musicPlus.x		=-999
	musicPlus.y		=-999

	musicMinus.x	=-999
	musicMinus.y	=-999

	sfxPlus.x			=-999
	sfxPlus.y			=-999

	sfxMinus.x		=-999
	sfxMinus.y		=-999

}

with(musicPlus)		{if instance_position(mouse_x,mouse_y,id){if mouse_check_button_pressed(mb_left){global.maxVolumeMusic+=o_volume.multiplier	; SND_SELPLACE}}} //6899 CHANGE SELPLACE TO ANOTHER SOUND
with(musicMinus)	{if instance_position(mouse_x,mouse_y,id){if mouse_check_button_pressed(mb_left){global.maxVolumeMusic-=o_volume.multiplier		; SND_SELPLACE}}}

with(sfxPlus)			{if instance_position(mouse_x,mouse_y,id){if mouse_check_button_pressed(mb_left){global.maxVolumeSfx+=o_volume.multiplier			; SND_SELPLACE}}}
with(sfxMinus)		{if instance_position(mouse_x,mouse_y,id){if mouse_check_button_pressed(mb_left){global.maxVolumeSfx-=o_volume.multiplier			; SND_SELPLACE}}}