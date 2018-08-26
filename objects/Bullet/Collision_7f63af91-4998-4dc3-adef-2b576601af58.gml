/// @description TEXT
scr_enemyHurt(0.1);
instance_destroy();
if(!place_meeting(x+lengthdir_x(pow,direction),y+lengthdir_y(pow,direction),Block)){
	other.x+=lengthdir_x(pow,direction);
	other.y+=lengthdir_y(pow,direction);
}