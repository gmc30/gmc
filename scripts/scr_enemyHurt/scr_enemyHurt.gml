///@description Damaged
///@param delay_s
	
if (other.hp - damage > 0) {
	if (other.enemy_isHurtD == false) {
		//	Hurt
		other.hp -= damage;
	
		other.enemy_isHurtD = true;
		other.alarm[0] = room_speed * argument0;
		
		scr_effect(1, other.x, other.y, eft_blood);
	}
}
else {
	//	Die
	other.hp = 0;
	scr_effect(1, other.x, other.y, eft_blood);
}