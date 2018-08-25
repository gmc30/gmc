/// @description Insert description here
// You can write your code in this editor
event_inherited();

scr_chrMov(keyboard_check(vk_left), keyboard_check(vk_right), keyboard_check(vk_up), keyboard_check(vk_down), 4);
scr_chrAttack(keyboard_check(191), global.wp_many[chr_weapon], global.wp_bullet[chr_weapon], global.wp_recoil[chr_weapon], global.wp_dmg[chr_weapon], global.wp_atkD[chr_weapon]);
scr_chrSwapWp(keyboard_check_pressed(190), keyboard_check_pressed(188));