///scr_draw_menu(selection_array, cursor_pos, space)
var curr_menu = argument0;
var curr_pos = argument1;
var curr_space = argument2;

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(font0);

x = window_get_width() / 4;
y = window_get_height() / 4;

//draw menu
var m, selections;
selections = "";
for (m = 0; m < array_length_1d(curr_menu); m++)
{
    selections = selections + curr_menu[m] + "#";
}

draw_text_ext(x, y, selections, curr_space, 300);

//draw menu cursor
draw_sprite_ext(spr_menu_arrow, 0, x - 16, y + 16 + curr_pos * curr_space, 0.5, 0.5, 0, c_white, 1);


