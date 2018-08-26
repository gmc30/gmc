
//	Lighting Event
suf_light = surface_create(global.game_width, global.game_height);
surface_set_target(suf_light);
draw_clear_alpha(c_white, 0);
surface_reset_target();

//	Add	Zombie
var grid_size = 32;
global.mgrid = mp_grid_create(0, 0, room_width div grid_size + 1, room_height + 1 div grid_size, grid_size, grid_size);
mp_grid_add_instances(global.mgrid,Block,false);
