/// @description draw healthbar

draw_sprite_stretched(sHealthbar_bg, 0, healthbar_x-1, healthbar_y, healthbar_width + 11, healthbar_height + 10);

draw_sprite_stretched(sHealthbar_bar, 0, healthbar_x+2, healthbar_y+3, (hp/hp_max) * healthbar_width, healthbar_height);

draw_set_font(scoreFont);
draw_text(120,24,"Jazz Juice!");	