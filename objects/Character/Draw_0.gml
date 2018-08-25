/// @description Insert description here

//	Rotate
chr_dirD += (sin(degtorad(chr_dir - chr_dirD)) * 20 + 0.1);
show_debug_message(chr_dirD mod 360);

//	Draw Self
draw_sprite_ext(sprite_index, -1, x, y, 1, 1, chr_dirD, c_white, image_alpha);

//	Draw HP bar
draw_set_color(c_red);
draw_rectangle(x - 80, y - 80, x - 80 + (chr_hp / chr_hpMax) * 160, y - 60, 0);
draw_set_color(c_black);
draw_rectangle(x - 80, y - 80, x - 80 + (chr_hp / chr_hpMax) * 160, y - 60, 1);