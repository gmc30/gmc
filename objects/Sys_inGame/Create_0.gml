
//	Add	Zombie
var grid_size = 32;
global.mgrid = mp_grid_create(0, 0, room_width div grid_size + 1, room_height + 1 div grid_size, grid_size, grid_size);
mp_grid_add_instances(global.mgrid,Block,false);
