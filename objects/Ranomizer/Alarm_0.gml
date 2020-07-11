if(!(global.gameover || global.pause)) {
	chooser = irandom_range(1, 3)



	if (chooser = 1)
	{
		message = "More Tomatoes!"
		if (Tomato_spawner.min_alarm > 10) Tomato_spawner.min_alarm -= 10;
		if (Tomato_spawner.max_alarm > 20) Tomato_spawner.max_alarm -= 10;
	}

	if (chooser = 2) 
	{
		message = "Drumroll Please!"
		if (Drum_spawner.min_alarm > 30) Drum_spawner.min_alarm -= 10;
		if (Drum_spawner.max_alarm > 50) Drum_spawner.max_alarm -= 30;
	}

	if (chooser = 3) 
	{
		message = "Light Show"
		if (Lights.flash_speed < 12) Lights.flash_speed += 1;
	}

};


alarm_0_trigger = 1;
randoms_text_timer = text_timer;