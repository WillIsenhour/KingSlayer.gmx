///scr_main_menu()

switch (mpos)
{
    //Start
    case 0: 
    {
        room_goto(room1);
        break;
    }
    //Load
    case 1:
    {
        curr_menu = "load";
        //reset menu position
        mpos = 0;
        scr_draw_menu(load_menu, mpos, space);
        break;
    }
    //Options
    case 2:
    {
        curr_menu = "options";
        //reset menu position
        mpos = 0;
        scr_draw_menu(options_menu, mpos, space);
        break;
    }
    //Exit
    case 3: 
    {
        scr_save_config();
        game_end(); 
        break;
    }
    default: break;
}
