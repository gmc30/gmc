/// @description Draw Lighting

if (surface_exists(suf_light)) {
    draw_surface_ext(suf_light, camera_get_view_x(Sys_inGame.cam), camera_get_view_y(Sys_inGame.cam), 1, 1, 0, c_white, 0.8);
}
else {
	suf_light = surface_create(global.game_width, global.game_height);
	surface_set_target(suf_light);
	draw_clear_alpha(c_white, 0);
	surface_reset_target();
}

