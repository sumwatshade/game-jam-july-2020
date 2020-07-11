/// @description Insert description here
// You can write your code in this editor
if (global.pause and !global.gameover) {
	
	// draw outline
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height, 0);
	draw_set_halign(fa_center);
	
	// Draw text
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text(room_width / 2, room_height / 2, "Game Paused");
	
	// set back to default
	draw_set_color(c_black);
	
	// #########################
	// ### Draw menu options ###
	// #########################
	
	// draw arrow
	arrowGap = 50;
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
	
}