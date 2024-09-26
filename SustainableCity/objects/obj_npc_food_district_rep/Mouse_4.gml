if(object_exists(obj_player)) {
	distanceToPlayer = distance_to_object(obj_player);
	
	// if player is in the correct distance then respond to player
	if(distanceToPlayer < player_range) {
		// stop npc on path
		path_speed = 0;

		
		if(global.intro)
		{
			text1 = "Representative: Welcome to our city, Mayor Green. My name is John, and I represent the food district. Our district is responsible for creating the food that the residents of the city consume. We also help to generate money for the city, as well as raising the approval level of the mayor. By investing in our district, you can show the residents that you care, making them happier."

			text2 = "Representative: Our district is currently facing some challenges, and we need your help to overcome them. With your support, we can improve the quality and variety of the food that we produce, making the residents even happier. We also need more funds to invest in new equipment and training programs for our workers. By doing this, we can increase the production capacity of the district and generate even more money for the city."

			text3 = "Representative: We look forward to working with you, Mayor Green, to improve the conditions in the city and make the residents even happier. Thank you for your time."

			text = [text1, text2, text3];
	
			textIndex = 0;
	
			alarm[0] = 1;
			// make sure to set to false in the alarnm
		}

		else if(global.ratingApproval == 0 || global.ratingApproval == 1)
		{
			text1 = "Representative: Greetings, Mayor. The food district is struggling due to the pollution and supply shortages. Can you help us out?"

			textLow = [text1];
	
			index = random_range(0, array_length(textLow) - 1);
	
			text = [textLow[index]];
			textIndex = 0;
	
	
			alarm[0] = 1;
		}
		else if(global.ratingApproval == 2 || global.ratingApproval == 3)
		{
			text1 = "Representative: Greetings, Mayor. The food district is managing, but it's becoming more challenging. Can we get more support?"

			textMedium = [text1];
	
			index = random_range(0, array_length(textMedium) - 1);
	
			text = [textMedium[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		else if(global.ratingApproval == 4)
		{
			text1 = "Representative: Greetings, Mayor. The food district is thriving and we're seeing great results. Thank you for your support."

			textHigh = [text1];
	
			index = random_range(0, array_length(textHigh) - 1);
	
			text = [textHigh[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		
	}
}