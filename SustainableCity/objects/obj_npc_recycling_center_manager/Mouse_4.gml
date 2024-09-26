if(object_exists(obj_player)) {
	distanceToPlayer = distance_to_object(obj_player);
	
	// if player is in the correct distance then respond to player
	if(distanceToPlayer < player_range) {
		// stop npc on path
		path_speed = 0;

		
		if(global.intro)
		{
			text1 = "Recycling Plant Manager: Welcome to our recycling plant, Mayor Green. I'm the manager here, and I'm glad to see you taking an interest in our operations. We work closely with the power plant to reduce waste and combat the pollution levels that have been plaguing the city."

			text2 = "Recycling Plant Manager: As you may know, the power plant provides bigger effects at a larger cost, while the recycling center provides smaller changes at a lower cost. However, both are crucial in our efforts to make the city a greener, healthier place to live."

			text3 = "Recycling Plant Manager: We're proud of the work we've done so far, but we require more funding and resources to really make a difference. With your help, Mayor Green, we can invest in new technologies that will make the recycling process more efficient and effective."

			text4 = "Recycling Plant Manager: We believe that by working together with the power plant and other organizations in the city, we can make a real impact on the environment. But we need your support to do it. We hope that you will consider investing in the recycling center and helping us to continue our important work."

			text5 = "Recycling Plant Manager: Thank you for taking the time to visit us today, Mayor Green. If you have any questions or concerns, please don't hesitate to ask. We're here to work with you in making the city a better place for everyone."

			text = [text1, text2, text3, text4, text5];
	
			textIndex = 0;
	
			alarm[0] = 1;
			// make sure to set to false in the alarnm
		}

		else if(global.ratingApproval == 0 || global.ratingApproval == 1)
		{
			text1 = "Recycling Plant Manager: Hey there, Mayor. Our recycling center is in dire need of funding and resources. Please help us out."

			textLow = [text1];
	
			index = random_range(0, array_length(textLow) - 1);
	
			text = [textLow[index]];
			textIndex = 0;
	
	
			alarm[0] = 1;
		}
		else if(global.ratingApproval == 2 || global.ratingApproval == 3)
		{
			text1 = "Recycling Plant Manager: Hey there, Mayor. The recycling center is doing well, but we could use more supplies to keep up with demand."

			textMedium = [text1];
	
			index = random_range(0, array_length(textMedium) - 1);
	
			text = [textMedium[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		else if(global.ratingApproval == 4)
		{
			text1 = "Recycling Plant Manager: Hey there, Mayor. The recycling center is thriving and we're making great progress. Thank you for your support."

			textHigh = [text1];
	
			index = random_range(0, array_length(textHigh) - 1);
	
			text = [textHigh[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		
	}
}