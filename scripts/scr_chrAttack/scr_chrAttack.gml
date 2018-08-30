///@description Attack
///@param key_attack
///@param many
///@param bullet
///@param recoil
///@param damamge
///@param delay_s

var dist, use_ammo;
dist = 60; 
if (argument0 && chr_isAtkD == false && collision_line(x, y, x + lengthdir_x(dist, chr_dirD), y + lengthdir_y(dist, chr_dirD), Block, false, false) == noone) {
	if (wp_ammo[chr_weapon] > 0 || wp_ammo[chr_weapon] == -1) {
		//	Set Ammo
		if (wp_ammo[chr_weapon] >= argument1) {
			use_ammo = argument1;
		}
		else {
			use_ammo = wp_ammo[chr_weapon]; 
		}
		
		//	Infinity
		if (wp_ammo[chr_weapon] == -1) {
			use_ammo = argument1;
		}
		
		repeat(use_ammo) {
			//	Attack
			var _bullet = instance_create_layer(x + lengthdir_x(dist, chr_dirD), y + lengthdir_y(dist, chr_dirD), "layer_bullet", argument2);
			_bullet.image_angle = chr_dirD + random_range(-argument3, argument3);
			_bullet.direction = _bullet.image_angle;
			_bullet.damage = argument4;
	
			//	Delay
			chr_isAtkD = true;
			alarm[0] = argument5 * room_speed;
			
			if (wp_ammo[chr_weapon] != -1) {
				wp_ammo[chr_weapon] -= 1;
			}
		}
	}
	else {
		//TODO
	}
}