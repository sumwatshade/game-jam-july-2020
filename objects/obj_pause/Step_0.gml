/// @description Insert description here
// You can write your code in this editor

if (global.pause and !global.gameover) {
	if keyboard_check_pressed(vk_down)
		option += 1;
	else if keyboard_check_pressed(vk_up)
		option -= 1;

	if option < 0
		option = maxOption;
	else if option > maxOption
		option = 0;
	
	if keyboard_check_pressed(vk_space) {
		switch option {
			case 0:
				global.pause = 0;
				break;
		
			case 1:
				global.pause = 0;
				audio_stop_all();
				room_restart();
				break;
		
			case 2:
				game_end();
				break;
		}
	}
}