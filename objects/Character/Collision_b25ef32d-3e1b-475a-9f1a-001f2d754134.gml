/// @description HP Max Up

if (chr_hp < chr_hpMax) {
	chr_hp = chr_hpMax;
	
	with(other) {
		instance_destroy();
	}
	scr_effect(6, x, y, eft_item);
}