if(object_exists(obj_player)) {
	distanceToPlayer = distance_to_object(obj_player);
	
	// if player is in the correct distance then respond to player
	if(distanceToPlayer < player_range) {
		// stop npc on path
		path_speed = 0;

		
		if(global.intro)
		{
			text1 = "Factory Manager: " + "Welcome to our factory, Mayor Green. I'm the manager here, and I'm glad to see you taking an interest in our operations. Our factory is a key part of the city's economy. We produce supplies that are used in the construction and upgrading of buildings all over town. Our supplies are almost synonymous with money.";
	
			text2 = "Factory Manager: " + "Unfortunately, the factory has been struggling lately due to poor management from the previous mayor. We've been operating at a much lower capacity than we could be. We need your help, Mayor Green, to rebuild and get back on track.";
	
			text3 = "Factory Manager: " + "We're still creating supplies, but at a much lower rate than we could be. With your help, we can invest in our operations and really start producing. This will help the entire city thrive.";
	
			text4 = "Factory Manager: " + "We know that you're new to the job, Mayor Green, but we believe in you. We're counting on you to help us get back on our feet and provide the supplies the city needs to grow. If you have any questions, please don't hesitate to ask.";
	
			text = [text1, text2, text3, text4];
	
			textIndex = 0;
	
			alarm[0] = 1;
			// make sure to set to false in the alarnm
		}

		else if(global.ratingApproval == 0 || global.ratingApproval == 1)
		{
			text1 = "Factory Manager:" + "Hello, Mayor. Our factory is struggling due to the pollution and supply shortages. We need more help."
	
			textLow = [text1];
	
			index = random_range(0, array_length(textLow) - 1);
	
			text = [textLow[index]];
			textIndex = 0;
	
	
			alarm[0] = 1;
		}
		else if(global.ratingApproval == 2 || global.ratingApproval == 3)
		{
			text1 = "Factory Manager: " + "Hello, Mayor. We're managing to keep the factory running despite the challenges. Any chance of more support?"
		
			textMedium = [text1];
	
			index = random_range(0, array_length(textMedium) - 1);
	
			text = [textMedium[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		else if(global.ratingApproval == 4)
		{
			text1 = "Factory Manager: " + "Hello, Mayor. The factory is running smoothly and we're meeting our targets. Keep up the good work.";
		
			textHigh = [text1];
	
			index = random_range(0, array_length(textHigh) - 1);
	
			text = [textHigh[index]];
			textIndex = 0;
	
			alarm[0] = 1;
		}

		
	}
}