// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function applyUpgrade(upgrade)
{
	global.money += upgrade.money;
	global.income += upgrade.income;
	global.approval += upgrade.approval;
	global.perception += upgrade.perception;
	global.resources += upgrade.resources;
	global.production += upgrade.production;
	global.pollution += upgrade.pollution;
}

function fillMenu(object) 
{
		// information for level 1
	obj_button.buttonName = object.name1;
	obj_menu.description1 = object.description1;
	obj_menu.money1 = object.money1;
	obj_menu.income1 = object.income1;
	obj_menu.approval1 = object.approval1;
	obj_menu.resources1 = object.resources1;
	obj_menu.production1 = object.production1;
	obj_menu.pollution1 = object.pollution1;
}

function changeUpgrade()
{
	building = obj_menu.currentBuilding;
	currentUpgrade = self.optionUpgrade;
	if (-currentUpgrade.money <= global.money and -currentUpgrade.resources <= global.resources)
	{
		audio_play_sound(snd_cash_register, 1, false)
		applyUpgrade(currentUpgrade)
		switch (self.optionId)
		{
			case 1:
			building.option1 = true;
			break;
			case 2:
			building.option2 = true;
			break;
			case 3:
			building.option3 = true;
			break;
		}
	}
	else
	{
		self.alarm[0] = 15
	}
}

//-------------------------------------------------------------------------
function makeMenu(){
	
	if(instance_exists(obj_menu))
	{
		deleteMenu();
	}
	
	// get where I want the menu to be 
	menuCoorX = staticItemX(global.menuX);
	menuCoorY = staticItemY(global.menuY);
	
	// get where I want the cancle button to be
	cancleCoorX = staticItemX(global.cancleButtonX);
	cancleCoorY = staticItemY(global.cancleButtonY);
	
	// get where I want the cancle button to be
	buttonCoorX = staticItemX(global.buttonX);
	buttonCoorY1 = staticItemY(global.buttonY1);
	
	buttonCoorY2 = staticItemY(global.buttonY2);
	
	buttonCoorY3 = staticItemY(global.buttonY3);
	
	//--------------------------------------------
	// create the buttons and place on GUI if not already bought
	
	button1 = instance_create_layer(buttonCoorX, buttonCoorY1, "Instances", obj_button);
	button1.depth = -1;
	button1.optionId = 1;
	button1.optionUpgrade = self.upgrades[1]
	
	button2 = instance_create_layer(buttonCoorX, buttonCoorY2, "Instances", obj_button);
	button2.depth = -1;
	button2.optionId = 2;
	button2.optionUpgrade = self.upgrades[2]
	
	button3 = instance_create_layer(buttonCoorX, buttonCoorY3, "Instances", obj_button);
	button3.depth = -1;
	button3.optionId = 3;
	button3.optionUpgrade = self.upgrades[3]
		
	if(self.option1 == true)
	{
		button1.pressed = true;
	}
	
	if(self.option2 == true)
	{
		button2.pressed = true;
	}
	
	if(self.option3 == true)
	{
		button3.pressed = true;
	}
	
	
	//--------------------------------------------	
	// create the cancle button and place on GUI
	cancle_button = instance_create_layer(cancleCoorX, cancleCoorY, "Instances", obj_x_button);
	cancle_button.depth = -1;
	
	//--------------------------------------------	
	// create the menu and place it on the GUI
	menu = instance_create_layer(menuCoorX, menuCoorY, "Instances", obj_menu);
	menu.depth = 0;

	//-----------------------------------------------
	// Write dynamic text
	//menu.currentStatement = "Pollution: " + self.currentPollution + "\n" +
	//						"Revenue: $" + self.currentRevenue + "\n" +
	//						"Resources: " + self.currentResources + "\n" +
	//						"Approval: " + self.currentApproval;
	
	// save the current building called into menu instance and set as global building
	menu.currentBuilding = self;
	menu.currentStatement = self.buildingName;
}

// keep X and Y coordinates static with player
function staticItemX(xInput)
{
	// get current view port
	viewportX = camera_get_view_x(view_camera[0]);
	
	// find where the current x value should be.
	xCoordinate = viewportX + xInput;
	
	return xCoordinate;
}

function staticItemY(yInput)
{
	// get current view port
	viewportY = camera_get_view_y(view_camera[0]);
	
	// find where the current y value should be.
	yCoordinate = viewportY + yInput;
	
	return yCoordinate;
}

// destroy instances that corelate to menu
function deleteMenu()
{
	instance_destroy(obj_menu);
	instance_destroy(obj_button);
	instance_destroy(obj_x_button);
}