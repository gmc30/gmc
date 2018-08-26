/// @description RunRun CoolTime

if(run==0) {
	run=1;
	if (instance_exists(Character)){
		var inst = instance_nearest(x, y, Character);
		path_end();
		angle = point_direction(x , y, inst.x, inst.y);
	}
	alarm[1] = room_speed;
}
else {
	run = 0;
	alarm[1] = room_speed * 5;
}