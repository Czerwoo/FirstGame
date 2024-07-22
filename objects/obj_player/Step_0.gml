//sneak and speed

if keyboard_check(vk_shift) {
	_speed = 2;	
} else if keyboard_check(vk_control) {
	_speed = 0.5;	
} else {
	_speed = 1;	
}

//movement and collision
if (keyboard_check(ord("A")) or keyboard_check(vk_left)) and (!place_meeting(x-1, y, wall_tilemap))
{	
	image_speed = 0.5
	if (image_index < 25 || image_index > 32 ) image_index = 25;
	if (image_index == 32) { image_index = 25 }
	x -= 1*_speed;	
}else if (keyboard_check(ord("D")) or keyboard_check(vk_right)) and (!place_meeting(x+1, y, wall_tilemap))
{
	image_speed = 0.5
	if (image_index < 17 || image_index > 24 ) image_index = 17;
	if (image_index == 24) image_index = 17 
	x += 1*_speed;
}else if (keyboard_check(ord("W")) or keyboard_check(vk_up)) and (!place_meeting(x, y-1, wall_tilemap))
{
	image_speed = 0.5
	if (image_index < 9 || image_index > 16 ) image_index = 9;
	if (image_index == 16) { image_index = 9 }
	y -= 1*_speed;
}else if (keyboard_check(ord("S")) || keyboard_check(vk_down)) && (!place_meeting(x, y+1, wall_tilemap))
{
	image_speed = 0.5
	if (image_index > 8 ) image_index = 0;
	if (image_index == 8) { image_index = 0 }
	y += 1*_speed;
}else {
	image_speed = 0	
	//Tu będzie animacja idle 
	// Reset animacji, brakuje pierwszej klatki/animacji idle
	image_index = image_index - image_index % 8
}


