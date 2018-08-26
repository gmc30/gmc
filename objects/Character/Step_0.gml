/// @description Insert description here

//	Rotate
var ad = angle_difference(chr_dir, chr_dirD);
if (ad > 0) {
	chr_dirD += min(ad, 15);
}
else if (ad < 0) {
	chr_dirD += max(ad, -15)
}