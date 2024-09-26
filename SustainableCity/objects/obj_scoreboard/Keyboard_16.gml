/// @description jump timeline

if(keyboard_check_pressed(ord("Q")))
{
	if(timeline_exists(ti_secretary))
	{
		//pause ti_secratary
		timeline_index = ti_secretary;
		timeline_running = false;
	}
	
	// change to game timeline
	timeline_index = ti_game;
	timeline_running = true;
	timeline_position = 144;
	show_debug_message("Change timeline");
	
	// change gloabl time
	global.time = timeline_position * 10;
}

if(keyboard_check_pressed(ord("W")))
{
	if(timeline_exists(ti_secretary))
	{
		//pause ti_secratary
		timeline_index = ti_secretary;
		timeline_running = false;
	}
	
	// change to game timeline
	timeline_index = ti_game;
	timeline_running = true;
	timeline_position = 288;
	show_debug_message("Change timeline");
	
	// change gloabl time
	global.time = timeline_position * 10;
}

if(keyboard_check_pressed(ord("E")))
{
		if(timeline_exists(ti_secretary))
	{
		//pause ti_secratary
		timeline_index = ti_secretary;
		timeline_running = false;
	}
	
	// change to game timeline
	timeline_index = ti_game;
	timeline_running = true;
	timeline_position = 432;
	show_debug_message("Change timeline");
	
	// change gloabl time
	global.time = timeline_position * 10;
}


if(keyboard_check_pressed(ord("R")))
{
		if(timeline_exists(ti_secretary))
	{
		//pause ti_secratary
		timeline_index = ti_secretary;
		timeline_running = false;
	}
	
	// change to game timeline
	timeline_index = ti_game;
	timeline_running = true;
	timeline_position = 576;
	show_debug_message("Change timeline");
	
	// change gloabl time
	global.time = timeline_position * 10;
}

if(keyboard_check_pressed(ord("T")))
{

	if(timeline_exists(ti_secretary))
	{
		//pause ti_secratary
		timeline_index = ti_secretary;
		timeline_running = false;
	}
	
	// change to game timeline
	timeline_index = ti_game;
	timeline_running = true;
	timeline_position = 720;
	show_debug_message("Change timeline");
	
	// change gloabl time
	global.time = timeline_position * 10;
}


if(keyboard_check_pressed(ord("Y")))
{
		if(timeline_exists(ti_secretary))
	{
		//pause ti_secratary
		timeline_index = ti_secretary;
		timeline_running = false;
	}
	
	// change to game timeline
	timeline_index = ti_game;
	timeline_running = true;
	timeline_position = 1440;
	show_debug_message("Change timeline");
	
	// change gloabl time
	global.time = timeline_position * 10;
}