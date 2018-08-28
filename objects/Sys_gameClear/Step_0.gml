/// @description next_room

if (image_alpha < 1) {
	image_alpha += 0.01;
}
else {
	if (room != rm_inGame3){
		room_goto_next();
	}
	else {
		 room_goto(rm_inMain);
	}
}