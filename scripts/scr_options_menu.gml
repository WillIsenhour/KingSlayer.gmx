///scr_options_menu()

switch (mpos)
{
    //Switch between windowed and fullscreen
    case 0:
    {
        //Switch to windowed mode
        if (window_get_fullscreen())
        {
            //Reset option menu selection
            options_menu[0] = "Switch to fullscreen mode";
            global.full_screen = 0;
            scr_set_res(global.full_screen);
            
            alarm[0] = 1;
        }
        else    //Switch to full screen mode
        {
            //Reset option menu selection
            options_menu[0] = "Switch to windowed mode";
            global.full_screen = 1;
            scr_set_res(global.full_screen);
            
            alarm[0] = 1;
        }
        break;
    }
    //Back to main menu
    case 1:
    {
        curr_menu = "main";
        mpos = 0;
        draw_set_color(c_black);
        draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), 0);
        scr_draw_menu(main_menu, mpos, space);
        break;
    }
}
