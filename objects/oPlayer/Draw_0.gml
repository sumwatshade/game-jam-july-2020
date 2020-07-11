/// @description Hit Flash 
// You can write your code in this editor
draw_self();

if(flash>0) && (flash%2==0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

else
{
	flash--;
}
