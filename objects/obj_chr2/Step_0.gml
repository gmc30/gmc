/// @description Insert description here
// You can write your code in this editor
event_inherited();

scr_chrMov(keyboard_check(ord("A")), keyboard_check(ord("D")), keyboard_check(ord("W")), keyboard_check(ord("S")), 4);
scr_chrAttack(keyboard_check(vk_space), global.wp_many[chr_weapon], global.wp_bullet[chr_weapon], global.wp_recoil[chr_weapon], global.wp_dmg[chr_weapon], global.wp_atkD[chr_weapon]);
scr_chrSwapWp(keyboard_check_pressed(ord("E")), keyboard_check_pressed(ord("Q")));