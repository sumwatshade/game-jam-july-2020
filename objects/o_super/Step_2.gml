	/// @description Do super
// You can write your code in this editor

if(global.points % super_modulo == 0 && global.points > 0 && global.points != super_point_val) {
	super_point_val = global.points;
	super_type = round(random(100));
	super_timer = 75;
	
	Note_spawner.note_pitch = 1;		//Reset the pitch of the note collection sound
	
	if(super_type < 1) {
		instance_destroy(Tomato);
		super_message = "Tomatoes Cleared!"
	} else if(super_type >= 1 && super_type < 95)&&(instance_exists(Drum_left ||Drum_right)) {
		super_message = "Drums Cleared!"	
		Drum_left.launch = 1
		Drum_right.launch = 1
		//instance_destroy(Drum_left);
		//instance_destroy(Drum_right);
	} else if(super_type >= 95 && super_type < 96)&&(instance_exists(Drum_left ||Drum_right||Tomato)){
		super_message = "JAZZZ!!!"
	    instance_destroy(Drum_left);
		instance_destroy(Drum_right);
		instance_destroy(Tomato);
	} else if(super_type >= 96 && super_type < 97) {
		oPlayer.hp = min(100, oPlayer.hp + 20)
		super_message = "EVEN MORE JAZZ JUICE"
	} else {
		oPlayer.hp = min(100, oPlayer.hp + 5)
		super_message = "More Jazz Juice"
	}
}
