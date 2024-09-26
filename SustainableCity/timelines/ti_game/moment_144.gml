///@description end of day 1


// go to town hall
room_goto(room_townhall);

// unlock housing

with(obj_housing)
{
	alarm[0] = 1;
}


global.intro = false