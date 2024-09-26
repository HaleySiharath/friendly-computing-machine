///@description end of day3


// go to town hall
room_goto(room_townhall);

//unlock train station
with(obj_train)
{
	alarm[0] = 1;
}

text = "Secretary: " + "Good morning, Mayor Green. I have some good news for you today. The permits for the train station have been approved, which means you now have access to the train station.";

show_dialogue(text, 10);