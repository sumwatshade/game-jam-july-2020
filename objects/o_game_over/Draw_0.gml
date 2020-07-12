/// @description draw "game over" message
// You can write your code in this editor
if (global.gameover) {
	// draw outline
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height, 0);
	draw_set_halign(fa_center);
	
	// Draw text
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press 'R' to try again...");
	draw_text(room_width / 2, room_height / 2 + 100, "Your Score: " + string(global.points));
	draw_text(room_width / 2, room_height / 2 + 150, "High Score: " + string(highscore_value(1)));
	// set back to default
	draw_set_color(c_white);
}