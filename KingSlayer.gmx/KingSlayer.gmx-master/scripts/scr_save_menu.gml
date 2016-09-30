///scr_save_menu()

//Save to selected save file
if (mpos < array_length_1d(menu_save) - 1)
{
    scr_save_game(mpos + 1);
}
else
{
    //Back to pause menu
    save = 0;
    mpos = 0;
    draw_set_color(c_black);
    draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);
    scr_draw_menu(menu, mpos, space);
}
