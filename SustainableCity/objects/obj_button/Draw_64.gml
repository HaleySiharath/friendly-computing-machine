/// @description write the labels on the buttons

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

if(optionId == 1)
{
	if(pressed == false)
	{
		buttonName = obj_menu.currentBuilding.name1;
		draw_text_transformed(1685, 200, string(buttonName), 1, 1, 0);
	}
	else
	{
		draw_text_transformed(1685, 200, "Equipped", 1, 1, 0);
	}
}

else if (optionId == 2)
{
	if(pressed == false)
	{
		buttonName = obj_menu.currentBuilding.name2;
		draw_text_transformed(1685, 400, string(buttonName), 1, 1, 0);
	}
	else
	{
		draw_text_transformed(1685, 400, "Equipped", 1, 1, 0);
	}
}

else if (optionId == 3)
{
	if(pressed == false)
	{
		buttonName = obj_menu.currentBuilding.name3;
		draw_text_transformed(1685, 600, string(buttonName), 1, 1, 0);
	}
	else
	{
		draw_text_transformed(1685, 600, "Eqquiped", 1, 1, 0);
	}
}