///scr_load_menu()

//Load selected file
if (mpos < array_length_1d(menu) - 1)
{
    scr_load_game(mpos + 1);
}
else
{
    //Back to main menu
    room_goto(room_main_menu);
}
