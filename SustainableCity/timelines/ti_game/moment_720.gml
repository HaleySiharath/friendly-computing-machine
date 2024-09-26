///@description end of day 5


// go to town hall
room_goto(room_townhall);

// unlock recycling
with(obj_recycling)
{
	alarm[0] = 1;
}

text = "Secretary: " + "Good morning, Mayor Green. I have some good news for you today. The permits for recycling plant have been approved, which means you now have access to the recycling plant.";

show_dialogue(text, 10);