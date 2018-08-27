///@description Attack
///@param Next
///@param Previous

if (chr_isAtkD == false) {
	if (argument0) {
		if (chr_weapon >= global.wp_number) {
			chr_weapon = 0;
		}
		else {
			chr_weapon++;
		}	
	}
	if (argument1) {
		if (chr_weapon <= 0) {
			chr_weapon = global.wp_number;
		}
		else {
			chr_weapon--;
		}
	}
}
