/// @description pause/resume feature


// and keyboard_check_pressed(vk_a)
if (keyboard_check(vk_alt) && keyboard_check_pressed(ord("P")))
{

	// If game is not paused then pause
	if(global.paused == false)
	{
		global.paused = true;
		instance_deactivate_all(true);
		room_goto(room_pause_screen);
		audio_pause_all();
	}
	// if game is pause then resume
	else 
	{
		global.paused = false;
		instance_activate_all();
		room_goto(room_main);
		audio_resume_all();
	}
}

if(room = room_townhall && keyboard_check_pressed(vk_escape))
{
	room_goto(room_main);
	instance_create_layer(1300, 360, "Instances", obj_player);
}


