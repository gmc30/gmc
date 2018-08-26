/// @description TEXT

event_inherited();

if (instance_exists(Character)) {
	var inst = instance_nearest(x, y, Character);
	
	if (mp_grid_path(global.mgrid, path, x, y, inst.x, inst.y, true) && point_distance(x, y, inst.x, inst.y) <= 500 &&
		collision_line(x, y, inst.x, inst.y, Block, false, false) == noone && !place_meeting(x, y, Character))
	{
		//	Find
		isFind = true;	
	}
	else {
		//	Stop
		isFind = false;
	}
	
	if (isFind) {
		path_start(path, spd, path_action_stop, 0);
		
		var ad = angle_difference(point_direction(x, y, inst.x, inst.y), angle);
		if (ad > 0) {
			angle += min(ad, 10);
		}
		else if (ad < 0) {
			angle += max(ad, -10)
		}
	}
	else {
		path_end();
	}
}