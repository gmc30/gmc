/// @description GameStatus

//	GameOver
if (instance_number(Character) == 0) {
	instance_create_layer(x, y, "layer_chr", Sys_gameOver);
}

//	Clear
if (instance_number(Enemy) == 0) {
	instance_create_layer(x, y, "layer_chr", Sys_gameClear);
}