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
	
	if (isFind) {
		path_start(path, spd, path_action_stop, 0);
		angle = point_direction(x, y, inst.x, inst.y);
	}
	else {
		path_end();
	}
}