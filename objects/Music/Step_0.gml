/// @description set new volume + pitch
audio_sound_pitch(main_music, play_pitch);

new_volume = 1;
if (global.mute) {
	new_volume = 0;
}
else if (global.pause and !global.gameover) {
	new_volume = 0.2;
}

audio_sound_gain(main_music, new_volume, 0);