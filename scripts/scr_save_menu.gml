///scr_save_menu()

//Save to selected save file
if (mpos < array_length_1d(save_menu) - 1)
{
    scr_save_game(mpos + 1);
}
else
{
    //Back to pause menu
    curr_menu = "pause";
    mpos = 0;
    draw_set_color(c_black);
    draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), 0);
    scr_draw_menu(pause_menu, mpos, space);
}
