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
    //Options
    case 1:
    {
        break;
    }
    //Exit to Main Menu
    case 2:
    {
        pause = 0;
        room_goto(room_main_menu);
        break;
    }
    //Exit Game
    case 3: 
    {
        game_end(); break;
    }
    //Save Game (Dev Only)
    case 4: 
    {
        save = 1;
        //reset menu position
        mpos = 0;
        scr_draw_menu(menu_save, mpos, space);
        break;
    }
    default: break;
}
