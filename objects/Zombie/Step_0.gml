/// @description TEXT
if (instance_exists(Character)){
	var inst=instance_nearest(x,y,Character);
	mp_potential_step_object(inst.x,inst.y,spd,Avoid_Zombie);
	image_angle=point_direction(x,y,inst.x,inst.y);
}