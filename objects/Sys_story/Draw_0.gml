/// @description TEXT
if(num>4){
	room_goto_next();
}else{
	draw_set_valign(1);
	draw_set_halign(1);
	draw_set_color(c_white);
	draw_set_font(ft_ammo);
	draw_text_ext(640,480+100,text[num],22,640);
}