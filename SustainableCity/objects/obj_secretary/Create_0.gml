/// @description 


// introduction from moving from main scren to mayor building
walkToBuilding = false;

// set the secretary on the path to the mayors building
path_start(path_secretary, 0, path_action_stop, true);

// source: https://www.youtube.com/watch?v=_WyZ9rxbS5M
// set this object to the timeline
timeline_index = ti_secretary;

// make it go by the second
timeline_speed = 1 / room_speed;

timeline_loop = true;

// make sure the time line is running
if(!timeline_running)
{
	timeline_running = true;
}



