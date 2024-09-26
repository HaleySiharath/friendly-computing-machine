//////@description end of day 4


// go to town hall
room_goto(room_townhall);

// unlock dining
with(obj_dining)
{
	alarm[0] = 1;
}


// Have secetary say something
text = "Secretary: " + "Good morning, Mayor Green. I have some good news for you today. The permits for dining halls have been approved, which means you now have access to resturants.";


show_dialogue(text, 5);
