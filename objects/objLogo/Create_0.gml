/// @description physical layout of options
// You can write your code in this editor
option = 0;
maxOption = 1;

// menu
_x = floor(window_get_width() / 4*3);

optionStart = floor(window_get_height() * 0.66);
optionPad = 50;
_y[0] = optionStart;
_y[1] = optionStart + optionPad;

txt[0] = "START";
txt[1] = "QUIT";

audio_play_sound(menu_music, 1000, true);

