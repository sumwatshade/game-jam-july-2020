/// @description physical layout of options
// You can write your code in this editor
option = 0;
maxOption = 1;

// menu
_x = floor(window_get_width() / 4*3);

optionStart = floor(window_get_height() * 0.75);
optionPad = 50;
_y[0] = optionStart;
_y[1] = optionStart + optionPad;

txt[0] = "Start";
txt[1] = "Quit";

audio_play_sound(menu_music, 1000, true);

