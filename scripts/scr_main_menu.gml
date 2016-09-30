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
        room_goto(room_load_menu);
        break;
    }
    //Options
    case 2:
    {
        break;
    }
    //Exit
    case 3: game_end(); break;
    default: break;
}
