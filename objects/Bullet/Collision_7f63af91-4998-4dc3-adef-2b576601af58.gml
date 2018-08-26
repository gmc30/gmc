/// @description TEXT

scr_enemyHurt(0.1);

//	KnockBack
if (!place_meeting(other.x + lengthdir_x(pow, direction), other.y, Block)) {
	//	Horizontal
	other.x += lengthdir_x(pow, direction);
}
else {
	while (!place_meeting(other.x + lengthdir_x(abs(pow), direction), other.y, Block)) {
		other.x += lengthdir_x(sign(pow), direction);
	}
}

if (!place_meeting(other.x, other.y + lengthdir_y(pow, direction), Block)) {
	//	Vertical
	other.y += lengthdir_y(pow, direction);
}
else {
	while (!place_meeting(other.x, other.y + lengthdir_y(pow, direction), Block)) {
		other.y += lengthdir_y(sign(pow), direction);
	}
}

instance_destroy();