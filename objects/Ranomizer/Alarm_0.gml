if(!(global.gameover || global.pause)) {
	chooser = irandom_range(1, 5)



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
		message = "Pick it up!"
		if (Music.play_pitch < 1.5) Music.play_pitch += 0.03;

	}

	if (chooser = 4) 
	{
		message = "More Notes!"
		if (Note_spawner.alarm_min > 30) Note_spawner.alarm_min -= 10;
		if (Note_spawner.alarm_max > 30) Note_spawner.alarm_max -= 20;
		if (Note_spawner.max_notes < 5) Note_spawner.max_notes += 1;
	}

	if (chooser = 5) 
	{
		message = "Light Show"
		if (Lights.flash_speed < 12) Lights.flash_speed += 1;
	}

};


timer = 1;
timer2 = text_timer;