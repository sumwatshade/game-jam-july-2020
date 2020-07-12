/// @description Insert description here
// You can write your code in this editor
if (super_timer > 0)
{
	super_timer --;
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(titleFont);
	draw_text(room_width/2, top_buffer, super_message);	
	draw_set_font(scoreFont);
}