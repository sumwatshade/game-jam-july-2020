/// @description increment / decrement
// You can write your code in this editor

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
			room_goto(room0)
			break;
		
		case 1:
			game_end();
			break;
	}
}