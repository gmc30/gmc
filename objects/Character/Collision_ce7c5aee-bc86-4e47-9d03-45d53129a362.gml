/// @description Ammo Max Up

if (wp_ammo[chr_weapon] < global.wp_ammoM[chr_weapon]) {
	wp_ammo[chr_weapon] = global.wp_ammoM[chr_weapon];
	
	with(other) {
		instance_destroy();
	}
	scr_effect(6, x, y, eft_item);
}