/// @description increment / decrement
// You can write your code in this editor

if keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
	option += 1;
else if keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
	option -= 1;

if option < 0
	option = maxOption;
else if option > maxOption
	option = 0;
	
if keyboard_check_pressed(vk_space) {
	switch option {
		case 0:
			audio_stop_sound(menu_music)
			room_goto(room0)
			break;
		
		case 1:
			game_end();
			break;
	}
}