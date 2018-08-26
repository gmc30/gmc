/// @description Insert description here

if (point_distance(sx, sy, x, y) >= range) {
	image_alpha -= 0.04;
}
else {
	image_alpha = 1;
}

if (image_alpha <= 0) {
	instance_destroy();
}