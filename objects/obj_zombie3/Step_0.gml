/// @description TEXT

if(run==0){
	event_inherited();
}
else{
	if(!place_meeting(x+lengthdir_x(8,image_angle),y+lengthdir_y(8,image_angle),Block)){
		x+=lengthdir_x(8,image_angle);
		y+=lengthdir_y(8,image_angle);
	}
}