/*
 * If game paused, skip step
 */
if(!(global.gameover || global.pause)) {
	instance_create_layer(random_range(side_buffer, room_width - side_buffer), random_range(room_height - bottom_buffer, top_buffer), "Notes", Music_note);
}

timer = 1