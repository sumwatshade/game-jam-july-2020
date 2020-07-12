/// @description Do super
// You can write your code in this editor

if(global.points % super_modulo == 0 && global.points > 0 && global.points != super_point_val) {
	super_point_val = global.points
	super_type = round(random(3));
	super_timer = 50;
	switch(super_type) {
		// Add health
		case 0:
			oPlayer.hp = min(100, oPlayer.hp + 20)
			super_message = "Health +20"
			break;
		// Destroy all tomatoes
		case 1:
			instance_destroy(Tomato);
			super_message = "Destroy all Tomatoes!"
			break;
		// Destroy all drums
		case 2:
			super_message = "Destroy all Drums!"
			instance_destroy(Drum_left);
			instance_destroy(Drum_right);
			break;
		default:
			break;
	}
}