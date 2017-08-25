/// @description Insert description here
// You can write your code in this editor
camera_set_view_size(view_camera[0],view_w,view_h);

var _round = view_w/surface_get_width(application_surface);
camera_set_view_pos(view_camera[0],round_n(view_x,_round),round_n(view_y,_round));
/*if(room != rm_init){
	if(instance_exists(obj_player)){
		camera_set_view_target(view_camera[0],obj_Player);
		camera_set_view_speed(view_camera[0], -1, -1);
		camera_set_view_border(view_camera[0], 32, 32);
	}
}