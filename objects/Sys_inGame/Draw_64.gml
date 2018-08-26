
/// Draw Lighting
if (surface_exists(suf_light)) {
    draw_surface_ext(suf_light, 0, 0, 1, 1, 0, c_white, 0.9);
}
else {
	suf_light = surface_create(global.game_width, global.game_height);
	surface_set_target(suf_light);
	draw_clear_alpha(c_white, 0);
	surface_reset_target();
}

//	Draw Score
draw_text_transformed(global.game_width / 2, 100, global.point, abs(cos(get_timer() / 1000000)) + 1, abs(cos(get_timer() / 1000000)) + 1, sin(get_timer() / 500000));

//	Debug
draw_text(80, 60, fps_real);