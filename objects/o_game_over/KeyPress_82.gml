/// @description restart game
// You can write your code in this editor
if (global.gameover) {
	global.gameover = 0;
	audio_stop_all();
	global.points = 0;
	room_restart();
}