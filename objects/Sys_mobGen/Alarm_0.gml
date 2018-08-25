/// @description Insert description here

var pos, xpos, ypos;
pos = choose(0, 1, 2, 3);

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