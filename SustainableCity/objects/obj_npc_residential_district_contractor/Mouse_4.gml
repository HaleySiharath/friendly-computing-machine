if(object_exists(obj_player)) {
	distanceToPlayer = distance_to_object(obj_player);
	
	// if player is in the correct distance then respond to player
	if(distanceToPlayer < player_range) {
		// stop npc on path
		path_speed = 0;

		
		if(global.intro)
		{
			text1 = "Contractor: Welcome, Mayor Green. I'm the contractor in charge of the residential district. As you can see, this district is where most of the city's homes are located."

			text2 = "Contractor: By building more housing for residents, we not only have more people to gather money from in the form of taxes, but we also make people happier by providing more homes. This directly affects the happiness of our city's residents, and ultimately leads to higher approval ratings for you, Mayor Green. We're excited to see how you'll improve conditions in the city for all its residents."

			text = [text1, text2];
	
			textIndex = 0;
	
			alarm[0] = 1;
			// make sure to set to false in the alarnm
		}

		else if(global.ratingApproval == 0 || global.ratingApproval == 1)
		{
			text1 = "Contractor: Hello, Mayor. The residents of the city are unhappy with the conditions of their homes. We need better resources."

			textLow = [text1];
	
			index = random_range(0, array_length(textLow) - 1);
	
			text = [textLow[index]];
			textIndex = 0;
	
	
			alarm[0] = 1;
		}
		else if(global.ratingApproval == 2 || global.ratingApproval == 3)
		{
			text1 = "Contractor: Hello, Mayor. The residential district is doing well, but we could use some help to improve the area."

			textMedium = [text1];
	
			index = random_range(0, array_length(textMedium) - 1);
	
			text = [textMedium[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		else if(global.ratingApproval == 4)
		{
			text1 = "Contractor: Hello, Mayor. The residential district is flourishing and the citizens are happy with their homes. Great job."

			textHigh = [text1];
	
			index = random_range(0, array_length(textHigh) - 1);
	
			text = [textHigh[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		
	}
}