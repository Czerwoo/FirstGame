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
	sprite_index = spr_walk_left;
	x -= 1*_speed;	
} else if (keyboard_check(ord("D")) or keyboard_check(vk_right)) and (!place_meeting(x+1, y, wall_tilemap))
{
	sprite_index = spr_walk_right;
	x += 1*_speed;
} else if (keyboard_check(ord("W")) or keyboard_check(vk_up)) and (!place_meeting(x, y-1, wall_tilemap))
{
	sprite_index = spr_walk_up;
	y -= 1*_speed;
} else if (keyboard_check(ord("S")) || keyboard_check(vk_down)) && (!place_meeting(x, y+1, wall_tilemap))
{
	sprite_index = spr_walk_down;
	y += 1*_speed;
} else {
	sprite_index = spr_idles
	switch (keyboard_lastkey) {
		case vk_left:
			image_index = 3;
			break;
		case vk_right:
			image_index = 2;
			break;
		case vk_up:
			image_index = 1;
			break;
		case vk_down:
			image_index = 0;
			break;
		default:
			image_index = 1;
	}
}

