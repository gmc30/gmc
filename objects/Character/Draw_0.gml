/// @description Insert description here

//	Draw Self
draw_sprite_ext(sprite_index, -1, x, y, 1, 1, chr_dirD, c_white, image_alpha);

//	Draw Weapon
draw_sprite_ext(global.wp_spr[chr_weapon], 0, x + lengthdir_x(32, chr_dirD), y + lengthdir_y(32, chr_dirD), 1, 1, chr_dirD, c_white, image_alpha); 

//	Draw HP bar
if (chr_isDie == false) {
	draw_set_color(c_red);
	draw_rectangle(x - 80, y - 80, x - 80 + (chr_hp / chr_hpMax) * 160, y - 60, 0);
	draw_set_color(c_black);
	draw_rectangle(x - 80, y - 80, x + 80, y - 60, 1);
}