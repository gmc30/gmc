/// @description Camera

var _x,_y;

_x = camera_get_view_x(cam);
_y = camera_get_view_y(cam);

if instance_exists(obj_chr1)&&instance_exists(obj_chr2){
	_x+=(median(0,(obj_chr1.x+obj_chr2.x)/2-640,room_width-1280)-_x)*0.02;
	_y+=(median(0,(obj_chr1.y+obj_chr2.y)/2-480,room_height-960)-_y)*0.02;
}
else if instance_exists(obj_chr1){
	_x+=(median(0,obj_chr1.x-640,room_width-1280)-_x)*0.02;
	_y+=(median(0,obj_chr1.y-480,room_height-960)-_y)*0.02;
}
else if instance_exists(obj_chr2){
	_x+=(median(0,obj_chr2.x-640,room_width-1280)-_x)*0.02;
	_y+=(median(0,obj_chr2.y-480,room_height-960)-_y)*0.02;	
}

camera_set_view_pos(cam,_x,_y);