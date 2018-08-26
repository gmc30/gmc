/// @description TEXT

with(other){
	scr_chrHurt(5, 0.5);
}

if (other.chr_isHurtD == false) {
	instance_destroy();
}