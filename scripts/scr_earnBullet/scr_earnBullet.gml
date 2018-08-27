///@description increase Ammo
///@param ammo_kind

var isEarn = false;
for (var i = 0; i <= global.wp_number; i++) {
	if (global.wp_bullet[i] == argument0 && wp_ammo[i] < global.wp_ammoM[i]) {
		wp_ammo[i] = global.wp_ammoM[i];
		isEarn = true;
	}
}

if (isEarn) {
	with(other) {
		instance_destroy();
		scr_effect(6, x, y, eft_item);
	}
}