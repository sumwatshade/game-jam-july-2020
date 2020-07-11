if(!(global.gameover || global.pause)) {
	instance_create_layer(random_range(edge_buffer, room_width-edge_buffer), spawn_height, "Tomato", Tomato);
}

timer = 1;