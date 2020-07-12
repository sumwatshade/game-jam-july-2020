/// @description you know, draw
// You can write your code in this editor

draw_self();

// draw arrow
arrowGap = 4;
draw_sprite(spArrowDrumsticks, image_index, _x - arrowGap, _y[option]);

// draw text
draw_set_color(c_white);
draw_set_font(titleFont);
draw_set_valign(fa_middle);

// draw options
var i = 0;

while i <= maxOption {
	draw_text(_x, _y[i], txt[i]);
	i += 1;
}