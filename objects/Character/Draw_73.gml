/// @description Forward UI

//	Draw HP bar
var hp_len = 50;
if (chr_isDie == false) {
	draw_set_color(c_red);
	draw_rectangle(x - hp_len, y - 70, x - hp_len + (chr_hp / chr_hpMax) * (hp_len * 2), y - 50, 0);
}
draw_set_color(c_black);
draw_rectangle(x - hp_len, y - 70, x + hp_len, y - 50, 1);

//	Draw Ammo
draw_set_font(ft_ammo);
if (global.wp_ammo[chr_weapon] != -1) {
	draw_text(x, y - 93, global.wp_name[chr_weapon] + ": " + string(global.wp_ammo[chr_weapon]));
}
else {
	draw_text(x, y - 93, global.wp_name[chr_weapon]);
}
draw_set_font(ft_main);