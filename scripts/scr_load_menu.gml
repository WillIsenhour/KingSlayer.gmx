///scr_load_menu()

//Load selected file
if (mpos < array_length_1d(load_menu) - 1)
{
    scr_load_game(mpos + 1);
}
else
{
    //Back to main menu
    curr_menu = "main";
    mpos = 0;
    draw_set_color(c_black);
    draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), 0);
    scr_draw_menu(main_menu, mpos, space);
}
