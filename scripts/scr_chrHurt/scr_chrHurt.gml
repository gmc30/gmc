///@description Damaged
///@param delay_s
///@param image_alpha
	
if (chr_hp - other.damage > 0) {
	if (chr_isHurtD == false) {
		//	Hurt
		chr_hp -= other.damage;
	
		chr_isHurtD = true;
		alarm[1] = room_speed * argument0;
		image_alpha = argument1;
	}
}
else {
	//	Die
	chr_hp = 0;
}