if(object_exists(obj_player)) {
	distanceToPlayer = distance_to_object(obj_player);
	
	// if player is in the correct distance then respond to player
	if(distanceToPlayer < player_range) {
		// stop npc on path
		path_speed = 0;

		
		if(global.intro)
		{
			text1 = "Power Plant Manager: Welcome to our power plant, Mayor Green. I'm the manager here, and I'm glad to see you taking an interest in our operations. Our power plant is a crucial part of the city's efforts to fight back against the pollution levels that have been plaguing us."
			
			text2 = "Power Plant Manager: We work closely with the recycling center to reduce waste and promote sustainability. However, while the recycling center provides smaller changes at a lower cost, the power plant provides bigger effects at a larger cost."
			
			text3 = "Power Plant Manager: Unfortunately, the power plant has been struggling lately due to poor management from the previous mayor. We've been operating at a much lower capacity than we could be, and we're doing all we can to stop the pollution levels from getting worse. We need your help, Mayor Green, to rebuild and move towards healthier power options."
			
			text4 = "Power Plant Manager: With your help, we can invest in new technologies that will make the power plant greener and more efficient. This will not only help the environment, but it will also help the city's economy by attracting new businesses that are committed to sustainability."

			text5 = "Power Plant Manager: We know that you're new to the job, Mayor Green, but we believe in you. We're counting on you to help us get back on our feet and make the city a greener, healthier place to live. If you have any questions, please don't hesitate to ask."

			text = [text1, text2, text3, text4, text5];
	
			textIndex = 0;
	
			alarm[0] = 1;
			// make sure to set to false in the alarnm
		}

		else if(global.ratingApproval == 0 || global.ratingApproval == 1)
		{
			text1 = "Power Plant Manager: Greetings, Mayor. We're having trouble keeping up with the energy demands of the city. Something needs to be done."
			
			textLow = [text1];
	
			index = random_range(0, array_length(textLow) - 1);
	
			text = [textLow[index]];
			textIndex = 0;
	
	
			alarm[0] = 1;
		}
		else if(global.ratingApproval == 2 || global.ratingApproval == 3)
		{
			text1 = "Power Plant Manager: Greetings, Mayor. We're doing our best to keep the lights on, but it's becoming more challenging. Can we get more resources?"
			
			textMedium = [text1];
	
			index = random_range(0, array_length(textMedium) - 1);
	
			text = [textMedium[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		else if(global.ratingApproval == 4)
		{
			text1 = "Power Plant Manager: Greetings, Mayor. The power plant is running smoothly and we have a surplus of energy. Well done."
			
			textHigh = [text1];
	
			index = random_range(0, array_length(textHigh) - 1);
	
			text = [textHigh[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		
	}
}