/// @description Insert description here
// You can write your code in this editor

if (global.pause and !global.gameover) {
	if keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
		option += 1;
	else if keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
		option -= 1;

	if option < 0
		option = maxOption;
	else if option > maxOption
		option = 0;
	
	if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) {
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