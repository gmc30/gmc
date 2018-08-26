/// @description Lighting Event

suf_light = surface_create(global.game_width, global.game_height);
surface_set_target(suf_light);
draw_clear_alpha(c_white, 0);
surface_reset_target();
