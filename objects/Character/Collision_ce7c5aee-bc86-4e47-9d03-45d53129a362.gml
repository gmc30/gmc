/// @description Ammo Max Up

if (global.wp_ammo[chr_weapon] < global.wp_ammoM[chr_weapon]) {
	global.wp_ammo[chr_weapon] = global.wp_ammoM[chr_weapon];
	
	with(other) {
		instance_destroy();
	}
}