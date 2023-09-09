image_xscale=1
image_yscale=1
image_alpha=1
image_index=0

finish=false
timer=0


var target = instance_position(x, y, o_piece);

if (target.launcher == BLACKS) and global.selectedColor=BLACKS
{
	instance_destroy(id)
}

if (target.launcher == WHITES) and global.selectedColor=WHITES
{
	instance_destroy(id)
}
