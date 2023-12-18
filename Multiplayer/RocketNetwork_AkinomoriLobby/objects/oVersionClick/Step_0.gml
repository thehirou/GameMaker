if instance_position(mouse_x, mouse_y,id)
{
window_set_cursor(cr_handpoint)
if mouse_check_button_pressed(mb_left){url_open_ext(url,"_blank")}
}else{window_set_cursor(cr_default)}