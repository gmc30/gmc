///@description Move Character
///@param key_left
///@param key_right
///@param key_up
///@param key_down
///@param mov_speed
///@param rot_speed

////////////////////////////////////////////////////////////
/// Input
//////////////////////////////////////////////////////////

/// Key Check
if (argument0 && key_left = 0) {
    key_count += 1;
    key_left = key_count;
}
if (argument1 && key_right = 0){
    key_count += 1;
    key_right = key_count;
}
if (argument2 && key_up = 0){
    key_count += 1;
    key_up = key_count;
}
if (argument3 && key_down = 0){    
    key_count += 1;
    key_down = key_count;
}

//	Without Key
if (!argument0 && key_left > 0) {
    if (key_left < key_right)				{key_right -= 1;}
    if (key_left < key_up)					{key_up -= 1;}
    if (key_left < key_down)                {key_down -= 1;}

    key_count -= 1;
    key_left = 0;
}
if (!argument1 && key_right > 0) {
    if (key_right < key_left)				{key_left -= 1;}
    if (key_right < key_up)					{key_up -= 1;}
    if (key_right < key_down)				{key_down -= 1;}

    key_count -= 1;
    key_right = 0;
}
if (!argument2 && key_up > 0) {
    if (key_up < key_left)					{key_left -= 1;}
    if (key_up < key_right)					{key_right -= 1;}
    if (key_up < key_down)					{key_down -= 1;}
    
    key_count -= 1;
    key_up = 0;
}
if (!argument3 && key_down > 0) {
    if (key_down < key_left)				{key_left -= 1;}
    if (key_down < key_right)				{key_right -= 1;}
    if (key_down < key_up)					{key_up -= 1;}
    
    key_count -= 1;
    key_down = 0;
}


////////////////////////////////////////////////////////////
/// Movement
//////////////////////////////////////////////////////////

var chr_speed, chr_xdir, chr_ydir, key_max;
chr_xdir = sign(key_right - key_left);
chr_ydir = sign(key_down - key_up);
key_max = max(key_left, key_right, key_up, key_down, 1);

if ((key_left > 0 || key_right > 0) && (key_up > 0 || key_down > 0) && 
        !place_meeting(x - argument4, y, Block) && !place_meeting(x + argument4, y, Block) && !place_meeting(x, y - argument4, Block) && !place_meeting(x, y + argument4, Block))
{
	//	Cross Speed
    chr_speed = (argument4 / sqrt(2));
	
	//	Cross Check
	if (key_left > key_right) {
		if (key_up > key_down)				{chr_dir = 135;}
		if (key_down > key_up)				{chr_dir = 225;}
	}
	if (key_right > key_left) {
		if (key_up > key_down)				{chr_dir = 45;}
		if (key_down > key_up)				{chr_dir = 315;}
	}
}
else {
	//	Straight Speed
    chr_speed = argument4;
	
	//	straight Check
	if (key_left == key_max && !place_meeting(x - 1, y, Block)) {
		chr_dir = 180;
	}
	if (key_right == key_max && !place_meeting(x + 1, y, Block)) {
		chr_dir = 0;
	}
	if (key_up == key_max && !place_meeting(x, y - 1, Block)) {
		chr_dir = 90;
	}
	if (key_down == key_max && !place_meeting(x, y + 1, Block)) {
		chr_dir = 270;
	}
}

// Horizontal
if (!place_meeting(x + chr_speed * chr_xdir, y, Block)) {
    x += chr_speed * chr_xdir;
}
else {
	while(!place_meeting(x + chr_xdir, y, Block)) {
		x += chr_xdir;
	}
}

//	Vertical
if (!place_meeting(x, y + chr_speed * chr_ydir, Block)) {
    y += chr_speed * chr_ydir;
}
else {
	while(!place_meeting(x, y + chr_ydir, Block)) {
		y += chr_ydir;
	}
}

//	Limit Position
x = clamp(x, camera_get_view_x(Sys_inGame.cam), camera_get_view_x(Sys_inGame.cam) + camera_get_view_width(Sys_inGame.cam));
y = clamp(y, camera_get_view_y(Sys_inGame.cam), camera_get_view_y(Sys_inGame.cam) + camera_get_view_height(Sys_inGame.cam));

//	Rotate
var ad = angle_difference(chr_dir, chr_dirD);
if (ad > 0) {
	chr_dirD += min(ad, argument5);
}
else if (ad < 0) {
	chr_dirD += max(ad, -argument5)
}