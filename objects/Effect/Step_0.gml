/// @description Insert description here

//	Setting
image_alpha += alpha_speed;
image_angle += angle_speed;

image_scale += scale_speed;
image_xscale = image_scale;
image_yscale = image_scale;	

//	Scale
if (image_alpha <= 0 || image_scale <= 0) {
	instance_destroy();
}