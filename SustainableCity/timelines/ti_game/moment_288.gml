///@description end of day2


// go to town hall
room_goto(room_townhall);

// unlock store
with(obj_store)
{
	alarm[0] = 1;
}


// Have secetary say something
text = "Secretary: " + "Good morning, Mayor Green. I have some good news for you today. The permits for stores have been approved, which means you now have access to store buildings.";


show_dialogue(text, 10);