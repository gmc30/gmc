/// @description TEXT

event_inherited();

if (instance_exists(Character)) {
	var inst = instance_nearest(x, y, Character);
	if (point_distance(x, y, inst.x, inst.y) <= 500) {
		if (mp_grid_path(global.mgrid, path, x, y, inst.x, inst.y, true) && !place_meeting(x, y, Character)) {
			//	Find
			isFind = true;	
		}
		else {
			//	Stop
			isFind = false;
		}
	}
	
	var angleT = angle;
	if (isFind) {
		path_start(path, spd, path_action_stop, 0);
		
		//	Angle
		if (collision_line(x, y, inst.x, inst.y, Block, false, false) == noone) {
			angleT = point_direction(x, y, inst.x, inst.y);
		}
		else {
			angleT = direction;
		}
	}
	else {
		path_end();
	}
			
	//	Rotate		
	var ad = angle_difference(angleT, angle);
	if (ad > 0) {
		angle += min(ad, 10);
	}
	else if (ad < 0) {
		angle += max(ad, -10)
	}
}