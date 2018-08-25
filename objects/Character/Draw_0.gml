/// @description Insert description here
// You can write your code in this editor

//	Draw Self
draw_sprite_ext(sprite_index, -1, x, y, 1, 1, chr_dir, c_white, image_alpha);

//	Draw HP bar
draw_set_color(c_red);
draw_rectangle(x - 80, y - 80, x - 80 + (chr_hp / chr_hpMax) * 160, y - 60, 0);
draw_set_color(c_black);
draw_rectangle(x - 80, y - 80, x - 80 + (chr_hp / chr_hpMax) * 160, y - 60, 1);