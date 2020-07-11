/// @description draw healthbar

draw_sprite(sHealthBar_border, 0, healthbar_x, healthbar_y);

draw_sprite_stretched(sHealthbar_line, 0, healthbar_x, healthbar_y, (hp / hp_max) * healthbar_width, healthbar_height);