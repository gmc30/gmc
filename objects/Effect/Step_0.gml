/// @description Insert description here

//	Setting
image_xscale = image_scale;
image_yscale = image_scale;

//	Alpha
if (isAlpha) {
	if (isAlphaP == false) {
		if (image_alpha > 0) {
			image_alpha += alpha_speed;
		}
		else {
			instance_destroy();
		}
	}
	else {
		if (image_alpha <= 1) {
			image_alpha += alpha_speed
		}
		else {
			instance_destroy();
		}
	}
}

//	Scale
if (isScale) {
	if (isScaleP == false) {
		if (image_scale > 0) {
			image_scale += scale_speed;
		}
		else {
			instance_destroy();
		}
	}
	else {
		if (image_scale <= 1) {
			image_scale += scale_speed
		}
		else {
			instance_destroy();
		}
	}
}

//	Angle
image_angle += angle_speed