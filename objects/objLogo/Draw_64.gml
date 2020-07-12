/// @description controls
// You can write your code in this editor

// Controls
ctl_x = floor(window_get_width() *0.65);
ctl_pad = 25

ctl_y = optionStart + 100;
curr_y = ctl_y;

controls = [
	"Move: Arrow Keys / WASD", 
	"Select/Jump: Spacebar"
] 

// draw options
var i = 0;
curr_y = ctl_y;

draw_set_color(c_aqua);
draw_set_font(subtitleFont);
while i < array_length_1d(controls) {
	draw_text(ctl_x, curr_y, controls[i]);
	i += 1;
	curr_y += ctl_pad
	
}

draw_set_color(c_white);
draw_set_font(titleFont)