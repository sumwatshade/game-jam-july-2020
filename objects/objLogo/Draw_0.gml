/// @description you know, draw
// You can write your code in this editor

draw_self();

// draw arrow
sprite = sprite_index; // to set first sprite the same as default
sprite_index = -1; // disable default sprite so draw_sprite work properly
image_speed = 0.25; // Adjust to your needs since now 1 means sub image changes each frame

arrowGap = 4;
draw_sprite(spArrowDrumsticks, image_index, _x - arrowGap, _y[option]);

// draw text
draw_set_font(titleFont);
draw_set_valign(fa_middle);

// draw options
var i = 0;

while i <= maxOption {
	draw_text(_x, _y[i], txt[i]);
	i += 1;
}