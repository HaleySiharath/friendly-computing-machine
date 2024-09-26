// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_dialogue(show_text, show_time){
	
	if(room == room_main)
	{
		instance_create_layer(global.textboxX, global.textboxY, "PlayerCollision", obj_textbox);
	}
	else
	{
		instance_create_layer(global.textboxX, global.textboxY, "Instances", obj_textbox);
	}
	obj_textbox.dialogue = show_text;	
	
	// -1 represents no alarm
	if(show_time != -1){
		obj_textbox.alarm[0] = show_time * room_speed;
	}
}
