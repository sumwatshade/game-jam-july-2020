/// @description evaluate death
// You can write your code in this editor
if(hp <= 0) {
	Music.play_pitch = 0.7;
	audio_play_sound(jazz_flair_fail, 1000, false);
	global.gameover = 1
	
	highscore_add("Player", global.points)
	instance_destroy(oSpotlight)
	instance_destroy()
}

if(cant_take_damage > 0) {
	cant_take_damage--;
} else if(cant_take_damage == 0) {
	flash = 0;
}
