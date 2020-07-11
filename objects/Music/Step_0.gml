audio_sound_pitch(main_music, play_pitch);

if (global.pause) {
	audio_sound_gain(main_music, 0.2, 0);
} else {
	audio_sound_gain(main_music, 1, 0);
}