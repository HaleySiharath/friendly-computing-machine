/// @description Insert description here
// run dialog


if (textIndex < array_length(text))
{
	show_dialogue(text[textIndex], dialogue_time);
	textIndex++
	alarm[0] = dialogue_time
}
else
{
	path_speed = hsp;
}


