///@description Move Character
///@param key_left
///@param key_right
///@param key_up
///@param key_down
///@param speed

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

/// Without Key
if (!argument0 && key_left > 0) {
    if (key_left < key_right)                 {key_right -= 1;}
    if (key_left < key_up)                    {key_up -= 1;}
    if (key_left < key_down)                  {key_down -= 1;}

    key_count -= 1;
    key_left = 0;
}
if (!argument1 && key_right > 0) {
    if (key_right < key_left)                 {key_left -= 1;}
    if (key_right < key_up)                   {key_up -= 1;}
    if (key_right < key_down)                 {key_down -= 1;}

    key_count -= 1;
    key_right = 0;
}
if (!argument2 && key_up > 0) {
    if (key_up < key_left)                    {key_left -= 1;}
    if (key_up < key_right)                   {key_right -= 1;}
    if (key_up < key_down)                    {key_down -= 1;}
    
    key_count -= 1;
    key_up = 0;
}
if (!argument3 && key_down > 0) {
    if (key_down < key_left)                  {key_left -= 1;}
    if (key_down < key_right)                 {key_right -= 1;}
    if (key_down < key_up)                    {key_up -= 1;}
    
    key_count -= 1;
    key_down = 0;
}


////////////////////////////////////////////////////////////
/// Movement
//////////////////////////////////////////////////////////

var chr_speed, chr_xdir, chr_ydir;
chr_xdir = sign(key_right - key_left);
chr_ydir = sign(key_down - key_up);

if ((key_left > 0 || key_right > 0) && (key_up > 0 || key_down > 0) && 
        !place_meeting(x - argument4, y, Block) && !place_meeting(x + argument4, y, Block) && !place_meeting(x, y - argument4, Block) && !place_meeting(x, y + argument4, Block))
{
    /// Cross Speed
    chr_speed = (argument4 / sqrt(2));
}
else {
    ///// Straight Speed
    chr_speed = argument4;
}


/// Horizontal
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
