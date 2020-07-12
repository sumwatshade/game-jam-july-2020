/// @description controls
// You can write your code in this editor

// Controls
if(global.pause and !global.gameover) {
	ctl_x = floor(room_width / 32);
	ctl_pad = 25

	ctl_y =  floor(window_get_height() * 0.75) + 100;
	curr_y = ctl_y;

	controls = [
		"Move: Arrow Keys / WASD", 
		"Select/Jump: Spacebar"
	] 

	// draw options
	var i = 0;
	curr_y = ctl_y;
	draw_set_valign(fa_left)
	draw_set_halign(fa_left)
	draw_set_color(c_aqua);
	draw_set_font(subtitleFont);
	while i < array_length_1d(controls) {
		draw_text(ctl_x, curr_y, controls[i]);
		i += 1;
		curr_y += ctl_pad
	
	}

	draw_set_color(c_white);
	draw_set_font(titleFont);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
}

