if(global.pause || global.gameover) { return; }

if (alarm_0_trigger = 1)
{
	alarm[0] = random_range(min_alarm, max_alarm);
}

if (alarm_1_trigger = 1)
{
	alarm[1] = 500;
}

// Crazy Levels:			[0,   1,    2,    3,    4,    5,    6,    7,    8,    9,    10   ]
image_speed_vals =			[0,   0,    0.2,  0.2,  0.4,  0.4,  0.6,  0.6,  0.8,  0.8,  1    ]
audience_frequency_vals =	[0,   0.05, 0.05, 0.07, 0.07, 0.09, 0.09, 0.11, 0.11, 0.11, 0.11 ]
audience_amplitude_vals =	[0,	  3,    4,    6,    9,    13,   15,   20,   20,   20,   20   ]

normalized_crazy_level = min(crazy_level, 10);

overhead_lights_right.image_speed = image_speed_vals[normalized_crazy_level];
overhead_lights_left.image_speed = image_speed_vals[normalized_crazy_level];
oAudience.frequency = audience_frequency_vals[normalized_crazy_level];
oAudience.amplitude = audience_amplitude_vals[normalized_crazy_level];


if(crazy_level > 10) {
	Tomato.collision_damage = 15;
	Tomato.sprite_index = sBasedrum_new
}