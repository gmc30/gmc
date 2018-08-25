/// @description Insert description here
// You can write your code in this editor
event_inherited();

scr_chrMov(keyboard_check(vk_left), keyboard_check(vk_right), keyboard_check(vk_up), keyboard_check(vk_down), 4);
scr_chrAttack(keyboard_check(191), global.wp_atkD[chr_weapon]);
scr_chrSwapWp(keyboard_check_pressed(192), keyboard_check_pressed(191));