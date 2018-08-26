/// @description Insert description here

//	Draw HP bar
if (chr_isDie == false) {
	draw_set_color(c_red);
	draw_rectangle(x - 80, y - 80, x - 80 + (chr_hp / chr_hpMax) * 160, y - 60, 0);
	draw_set_color(c_black);
	draw_rectangle(x - 80, y - 80, x + 80, y - 60, 1);
}