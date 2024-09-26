if(object_exists(obj_player)) {
	distanceToPlayer = distance_to_object(obj_player);
	
	// if player is in the correct distance then respond to player
	if(distanceToPlayer < player_range) {
		// stop npc on path
		path_speed = 0;

		
		if(global.intro)
		{
			text1 = "Commercial District Representative: Greetings, Mayor Green. I run this shop here, and serve  as a representative of the commercial district. As you can see, things are pretty run down these days, but I'm here to tell you about the important role our district plays in the city's economy. We are the primary producer of commerce for the city, and our shops provide all essentials to the city residents."

			text2 = "Commercial District Representative: Money is used in everything for the city, so as Mayor investing in our district will allow you to have the funds necessary for all other development needs. Whether it's building new infrastructure or providing resources to other districts, the commercial district can help make it happen."

			text3 = "Commercial District Representative: We are eager to see how you will improve conditions in the city and to its residents. As a store owner, I can attest to the importance of a thriving economy in ensuring the well-being of our community. We hope that you will recognize the critical role the commercial district plays in making that happen."

			text4 = "Commercial District Representative: Thank you for taking the time to visit us, Mayor Green. We look forward to working with you in the future to build a brighter, more prosperous city."

			text = [text1, text2, text3, text4];
	
			textIndex = 0;
	
			alarm[0] = 1;
			// make sure to set to false in the alarnm
		}

		else if(global.ratingApproval == 0 || global.ratingApproval == 1)
		{
			text1 = "Commercial District Rep: " + "Hello, Mayor. The pollution is really hurting business in the district. Customers are hesitant to come here"
	
			textLow = [text1];
	
			index = random_range(0, array_length(textLow) - 1);
	
			text = [textLow[index]];
			textIndex = 0;
	
	
			alarm[0] = 1;
		}
		else if(global.ratingApproval == 2 || global.ratingApproval == 3)
		{
			text1 = "Commercial District Rep: " + "Things are going okay in the district, but there's definitely room for improvement"
		
			textMedium = [text1];
	
			index = random_range(0, array_length(textMedium) - 1);
	
			text = [textMedium[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		else if(global.ratingApproval == 4)
		{
			text1 = "Commercial District Rep:  " + "The district is thriving thanks to your leadership, Mayor. Thanks for all of the support!";
		
			textHigh = [text1];
	
			index = random_range(0, array_length(textHigh) - 1);
	
			text = [textHigh[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		
	}
}