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
	image_index = 3;
	x -= 1*_speed;	
}
if (keyboard_check(ord("D")) or keyboard_check(vk_right)) and (!place_meeting(x+1, y, wall_tilemap))
{
	image_index = 2;
	x += 1*_speed;
}
if (keyboard_check(ord("W")) or keyboard_check(vk_up)) and (!place_meeting(x, y-1, wall_tilemap))
{
	image_index = 1;
	y -= 1*_speed;
}
if (keyboard_check(ord("S")) || keyboard_check(vk_down)) && (!place_meeting(x, y+1, wall_tilemap))
{
	image_index = 0;
	y += 1*_speed;
}

