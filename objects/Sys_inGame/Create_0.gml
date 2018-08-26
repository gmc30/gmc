
//	Add	Zombie
var grid_size = 32;
global.mgrid = mp_grid_create(0, 0, room_width div grid_size + 1, room_height + 1 div grid_size, grid_size, grid_size);
mp_grid_add_instances(global.mgrid,Avoid_Zombie,false);

if(instance_exists(obj_chr1)){
	cam=camera_create_view(median(0,obj_chr1.x-640,room_width-1280),median(0,obj_chr1.y-480,room_height-960),1280,960);
}
else{
	cam=camera_create_view(0,0,1280,960);
}
view_camera[0]=cam;