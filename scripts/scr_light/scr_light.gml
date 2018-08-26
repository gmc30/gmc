
//	Reset Live Lighting
surface_set_target(suf_light);
draw_clear(c_black);

//	Reset Light
var light_size = 1 + random_range(-0.02, 0.02);

//	Draw Light
var rw = global.game_width / view_wview;
var rh = global.game_height / view_hview;

//	Set Blend Mode
gpu_set_blendmode(bm_subtract);

with(Character) {
    draw_sprite_ext(spr_light1, 0, (x - camera_get_view_x(Sys_inGame.cam)) * rw, (y - camera_get_view_y(Sys_inGame.cam)) * rh, light_size * rw * 7, light_size * rh * 7, 0, c_white, 1);
}

with(Bullet) {
    draw_sprite_ext(spr_light1, 0, (x - camera_get_view_x(Sys_inGame.cam)) * rw, (y - camera_get_view_y(Sys_inGame.cam)) * rh, light_size * rw * 0.6, light_size * rh * 0.6, 0, c_white, 0.5);
}

with(Flash) {
    draw_sprite_ext(spr_light1, 0, (x - camera_get_view_x(Sys_inGame.cam)) * rw, (y - camera_get_view_y(Sys_inGame.cam)) * rh, light_size * rw * 10, light_size * rh * 10, 0, c_white, 1);
}

//	Reset
gpu_set_blendmode(bm_normal);
surface_reset_target();