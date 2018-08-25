///@description Attack
///@param Next
///@param Previous

if (argument0) {
	if (chr_weapon >= chr_unlock) {
		chr_weapon = 0;
	}
	else {
		chr_weapon++;
	}	
}
if (argument1) {
	if (chr_weapon <= 0) {
		chr_weapon = chr_unlock;
	}
	else {
		chr_weapon--;
	}
}
