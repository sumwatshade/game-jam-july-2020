if (timer2 > 0)
{
	timer2 --;
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(titleFont);
	draw_text(room_width/2, top_buffer, message);	
	draw_set_font(scoreFont);
}

else
{
	timer = 0
}

if (timer4 > 0)
{
	timer4 --;
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(titleFont);
	draw_text(room_width/2, top_buffer2, message2);	
	draw_set_font(scoreFont);
}

else
{
	timer3 = 0
}



//draw_text(100, top_buffer, Tomato_spawner.min_alarm);
//draw_text(100, top_buffer+50, Tomato_spawner.max_alarm);

//draw_text(100, top_buffer+150, Drum_spawner.min_alarm);
//draw_text(100, top_buffer+200, Drum_spawner.max_alarm);