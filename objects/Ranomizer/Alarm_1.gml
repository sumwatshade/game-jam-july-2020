message2 = "Pick it up!"

if (Note_spawner.alarm_min > 20) Note_spawner.alarm_min -= 10;
if (Note_spawner.alarm_max > 40) Note_spawner.alarm_max -= 20;
if (Note_spawner.max_notes < 5) Note_spawner.max_notes += 1;
		

if (Music.play_pitch < 1.5) Music.play_pitch += 0.02;

alarm_1_trigger = 1
planned_text_timer = text_timer

crazy_level += 1;