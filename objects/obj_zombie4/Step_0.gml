/// @description TEXT

// Inherit the parent event
event_inherited();

var inst=instance_nearest(x,y,Character);
if(delay==0)&&(distance_to_object(inst)<300){
	delay=120;
	var inst2=instance_create_layer(x+lengthdir_x(36,angle),y+lengthdir_y(36,angle),"layer_bullet",obj_zombie4_blood);
	inst2.direction=angle;
	inst2.speed=6;
	inst2.image_angle=angle;
}
delay=max(0,delay-1);