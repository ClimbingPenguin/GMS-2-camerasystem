/// @description Move
var _h = keyboard_check(vk_right)-keyboard_check(vk_left);
var _v = keyboard_check(vk_down)-keyboard_check(vk_up);
var _dir = point_direction(0,0,_h,_v);
if(_h == 0 && _v == 0)
	_dir = undefined;
	
//Auto move for comparison
/*if(timer mod change_dir == 0)
{
	move_dir+=45;
} 
_dir=move_dir;
timer++;
*/
if(_dir != undefined)
{	//Some direction is being held, move.
	x += lengthdir_x(move_speed,_dir);
	y += lengthdir_y(move_speed,_dir);
}

//clamp to room
x=clamp(x,0,room_width);
y=clamp(y,0,room_height);

if(keyboard_check_pressed(vk_shift))
{
	if(room == room_1)
		room_goto(room_2);
	else
		room_goto(room_1);
}

