if(!(global.gameover || global.pause)) {
	instance_create_layer(room_width+100, spawn_height, "Drum", Drum_right);
}

timer_right = 1;