/// @description Insert description here
// You can write your code in this editor
view_camera[0]=camera;
view_enabled=true;
view_visible[0]=true;

camera_set_view_target(view_camera[0],obj_player);
camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_border(view_camera[0], room_height/2, room_width/2);