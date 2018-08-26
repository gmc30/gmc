/// @description Insert description here

var pos, xpos, ypos;

if room==rm_inGame1{
	pos = irandom(1);
}
else if room==rm_inGame2{
	pos = irandom(2);
}
else if room==rm_inGame3{
	pos = irandom(3);
}


switch(pos) {
	case 0:
		//	Top
		xpos = random(room_width);
		ypos = 0;
		break;
	case 1:
		//	Right
		xpos = room_width;
		ypos = random(room_height);
		break;
	case 2:
		//	Bottom
		xpos = random(room_width);
		ypos = room_height;
		break;
	case 3:
		//	Left
		xpos = 0;
		ypos = room_height;
		break;
}
instance_create_layer(xpos, ypos, "layer_mob", choose(obj_zombie1, obj_zombie2, obj_zombie3));
alarm[0] = room_speed * 5;