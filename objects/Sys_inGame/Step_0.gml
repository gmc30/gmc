/// @description GotoNext

if (instance_number(Enemy) == 0) {
	instance_create_layer(x, y, "layer_chr", NextRoom);
}