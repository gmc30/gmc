/// @description TEXT

//	Draw Self
draw_sprite_ext(sprite_index, -1, x, y, 1, 1, chr_dirD, c_white, image_alpha);

//	Draw Weapon
draw_sprite_ext(global.wp_spr[chr_weapon], 0, x + lengthdir_x(32, chr_dirD), y + lengthdir_y(32, chr_dirD), 1, 1, chr_dirD, c_white, image_alpha); 