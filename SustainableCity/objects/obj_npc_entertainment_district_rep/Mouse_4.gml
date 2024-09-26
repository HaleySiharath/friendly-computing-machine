 if(object_exists(obj_player)) {
	distanceToPlayer = distance_to_object(obj_player);
	
	// if player is in the correct distance then respond to player
	if(distanceToPlayer < player_range) {
		// stop npc on path
		path_speed = 0;

		
		if(global.intro)
		{
			text1 = "Entertainment District Representative: Welcome to the entertainment district, Mayor Green. I'm here to show you what we have to offer and how we can help the city thrive. As you know, our district provides commodities, recreation, and décor to both the city and its residents."

			text2 = "Entertainment District Representative: Investing in the entertainment district will not only allow you to decorate the town, but also make residents happier, which will ultimately increase your approval ratings. We believe that by ensuring the residents are happy, you will be re-elected and can continue to serve the city."

			text3 = "Entertainment District Representative: Our aspirations for the city are to be in a healthier place, both physically and emotionally. We believe that the entertainment district plays an important role in achieving this goal. By providing a space for people to unwind and have fun, we help reduce stress levels and promote well-being."

			text4 = "Entertainment District Representative: We hope that you will consider investing in our district, Mayor Green. With your support, we can expand our offerings and provide even more opportunities for the people of the city. Thank you for taking the time to visit us today."

			text = [text1, text2, text3, text4];
	
			textIndex = 0;
	
			alarm[0] = 1;
			// make sure to set to false in the alarnm
		}

		else if(global.ratingApproval == 0 || global.ratingApproval == 1)
		{
			text1 = "Entertainment District Representative: Welcome, Mayor. The city is suffering due to the poor conditions overall. We need more amenities and greenery."

			textLow = [text1];
	
			index = random_range(0, array_length(textLow) - 1);
	
			text = [textLow[index]];
			textIndex = 0;
	
	
			alarm[0] = 1;
		}
		else if(global.ratingApproval == 2 || global.ratingApproval == 3)
		{
			text1 = "Entertainment District Representative: Welcome, Mayor. The city is looking better and the citizens seem to be happier as of late."

			textMedium = [text1];
	
			index = random_range(0, array_length(textMedium) - 1);
	
			text = [textMedium[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		else if(global.ratingApproval == 4)
		{
			text1 = "Entertainment District Representative: Welcome, Mayor. The city is booming and we're seeing record numbers of visitors. Everyone loves the way the city looks. Keep up the good work."

			textHigh = [text1];
	
			index = random_range(0, array_length(textHigh) - 1);
	
			text = [textHigh[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		
	}
}