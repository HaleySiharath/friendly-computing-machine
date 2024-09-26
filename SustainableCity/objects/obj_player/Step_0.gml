/// @description Basic player movement inputs

// Stop Player Movement
hspeed = 0
vspeed = 0
//sprite_index = spr_player_still


// Move player based on input
//------------------------ UP -----------------------------
if (keyboard_check(vk_up) or keyboard_check(ord("W")))
{
	// change sprite and its animation speed
	sprite_index = spr_player_walk_up
	sprite_set_speed(sprite_index, 5, spritespeed_framespersecond)
	
	// move the sprite
	vspeed = -movementSpeed
}

//------------------------ DOWN -----------------------------
else if (keyboard_check(vk_down) or keyboard_check(ord("S")))
{
	// change sprite and its animation speed
	sprite_index = spr_player_walk_down
	sprite_set_speed(sprite_index, 5, spritespeed_framespersecond)
	
	// move the sprite
	vspeed = movementSpeed
}

//------------------------ LEFT -----------------------------
else if (keyboard_check(vk_left) or keyboard_check(ord("A")))
{
	// change sprite and its animation speed
	sprite_index = spr_player_walk_left
	sprite_set_speed(sprite_index, 5, spritespeed_framespersecond)
	
	// move the sprite
	hspeed = -movementSpeed
}

//------------------------ RIGHT -----------------------------
else if (keyboard_check(vk_right) or keyboard_check(ord("D")))
{
	// change sprite and its animation speed
	sprite_index = spr_player_walk_right
	sprite_set_speed(sprite_index, 5, spritespeed_framespersecond);
	
	// move the sprite
	hspeed = movementSpeed
}

//------------------------ STILL -----------------------------
else
{
	// change sprite to default
	sprite_index = spr_player_still
}


// Check for Collision
if (instance_place(x + hspeed, y, obj_boundary)|| instance_place(x + hspeed, y, obj_npc))
{
	hspeed = 0
}
if (instance_place(x, y + vspeed, obj_boundary) || instance_place(x, y + vspeed, obj_npc))
{
	vspeed = 0
	
}