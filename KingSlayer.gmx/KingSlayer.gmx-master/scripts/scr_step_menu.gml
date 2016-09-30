///scr_step_menu(selection_array, cursor_pos)
var curr_menu = argument0;
var curr_pos = argument1;

//Find direction of menu cursor movement
var move = 0;
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

//change menu position var based on input
if (move != 0)
{
    curr_pos += move;
    //will go to bottom position if pressing up at top position
    if (curr_pos < 0) curr_pos = array_length_1d(curr_menu) - 1;
    if (curr_pos > array_length_1d(curr_menu) - 1) curr_pos = 0;
} 

return curr_pos;
