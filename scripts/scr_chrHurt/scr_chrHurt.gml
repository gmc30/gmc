///@description Damaged
///@param delay_s
///@param image_alpha
	
if (chr_isHurtD == false) {
	if (chr_hp - other.damage > 0) {
		//	Hurt
		chr_hp -= other.damage;
	
		chr_isHurtD = true;
		alarm[1] = room_speed * argument0;
		image_alpha = argument1;
	
		scr_effect(6, x, y, eft_blood);
	}
	else {
		//	Die
		chr_hp = 0;
	}
}