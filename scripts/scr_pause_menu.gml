///scr_pause_menu()

switch (mpos)
{
    //Resume
    case 0: 
    {
        pause = 0;
        instance_activate_all();
        break;
    }
    //Exit to Main Menu
    case 1:
    {
        pause = 0;
        room_goto(room_main_menu);
        break;
    }
    //Exit Game
    case 2: 
    {
        scr_save_config();
        game_end(); 
        break;
    }
    //Save Game (Dev Only)
    case 3: 
    {
        curr_menu = "save";
        //reset menu position
        mpos = 0;
        scr_draw_menu(save_menu, mpos, space);
        break;
    }
    default: break;
}
