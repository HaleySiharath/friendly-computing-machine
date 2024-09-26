/// @description Insert description here
// You can write your code in this editor

// If the secretary is done with dialogue then walk to mayor building

if(walkToBuilding == true and instance_exists(obj_player))
{		
	// get the distance between secretary and player
	distanceToPlayer = distance_to_object(obj_player);
	
	// if player is far then stop walking
	if(distanceToPlayer > 50)
	{		
		// stop npc on path if too far
		path_speed = 0;
	}
	// if player is in distance then continue to walk 
	else
	{
		path_speed = 1;
		show_debug_message("walking");
	}
}

if(room = room_townhall)
{
	inTownHall = true;
	timeline_running = false;
}