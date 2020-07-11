/// @description Insert description here
// You can write your code in this editor
global.pause = 0

option = 0;
maxOption = 2;

_x = floor(window_get_width() / 2);

optionStart = floor(window_get_height() * 0.66);
optionPad = 50;
_y[0] = optionStart;
_y[1] = optionStart + optionPad;
_y[2] = optionStart + optionPad * 2;

txt[0] = "Resume";
txt[1] = "Restart";
txt[2] = "Quit";