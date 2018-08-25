///@description Attack
///@param key_attack
///@param delay(s)

if (argument0 && chr_isAtkD == false) {
	//	Attack
	var _bullet = instance_create_layer(x + lengthdir_x(86, chr_dir), y + lengthdir_y(86, chr_dir), "layer_bullet", obj_bullet1);
	_bullet.image_angle = chr_dir;
	_bullet.direction = _bullet.image_angle;
	_bullet.speed = 12;
	
	//	Delay
	chr_isAtkD = true;
	alarm[0] = argument1 * room_speed;
}