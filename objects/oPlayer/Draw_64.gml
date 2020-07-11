/// @description draw healthbar

draw_sprite_stretched(sHealthbar_bg, 0, healthbar_x, healthbar_y, healthbar_width + 4, healthbar_height + 4);

draw_sprite_stretched(sHealthbar_bar, 0, healthbar_x + 2, healthbar_y + 2, (hp/hp_max) * healthbar_width, healthbar_height);