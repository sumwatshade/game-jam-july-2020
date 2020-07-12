if (randoms_text_timer > 0)
{
	randoms_text_timer --;
	//draw_set_halign(fa_center);
	//draw_set_valign(fa_center);
	//draw_set_font(titleFont);
	//draw_text(room_width/2, top_buffer, message);	
	//draw_set_font(scoreFont);
}

else
{
	alarm_0_trigger = 0
}

if (planned_text_timer > 0)
{
	planned_text_timer --;
	//draw_set_halign(fa_center);
	//draw_set_valign(fa_center);
	//draw_set_font(titleFont);
	//draw_text(room_width/2, top_buffer2, message2);	
	//draw_set_font(scoreFont);
}

else
{
	alarm_1_trigger = 0
}


	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(titleFont);
	draw_text(room_width/2, top_buffer, crazy_level);	
	draw_set_font(scoreFont);


//draw_text(100, top_buffer, Tomato_spawner.min_alarm);
//draw_text(100, top_buffer+50, Tomato_spawner.max_alarm);

//draw_text(100, top_buffer+150, Drum_spawner.min_alarm);
//draw_text(100, top_buffer+200, Drum_spawner.max_alarm);