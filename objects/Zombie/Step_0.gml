/// @description TEXT
event_inherited();

if (instance_exists(Character)){
	var inst=instance_nearest(x,y,Character);
	//mp_potential_step_object(inst.x,inst.y,spd,Avoid_Zombie);
	if mp_grid_path(global.mgrid,path,x,y,inst.x,inst.y,true){
		path_start(path, spd, path_action_stop, 0);
	}
	angle=point_direction(x,y,inst.x,inst.y);
}