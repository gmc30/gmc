///@description Blood Effect
///@param number
///@param x
///@param y
///@param kind


for(var i = 1; i <= argument0; i++) {
	var eft = instance_create_layer(argument1, argument2, "layer_effect", argument3);
	with(eft) {
		//	Default
		image_scale = 1;

		isAlpha = false;
		isScale = false;

		//	True++ False--
		isAlphaP = false;
		isScaleP = false;

		alpha_speed = 0;
		scale_speed = 0;


		switch(argument3) {
			case eft_blood1:
				//	Rands
				direction = random(360);
				image_angle = direction;
				speed = random_range(2, 4);
				image_speed=1;
				
				//image_alpha = 1;
				//isAlpha = true;
				//alpha_speed = -0.02;
				break;
		}
	}
}