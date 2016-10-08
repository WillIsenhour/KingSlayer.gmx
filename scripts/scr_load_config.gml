///scr_load_config()
//Loads user's configurations, if file exists

//Open config file if it already exists
if (file_exists("Config.ini"))
{
    ini_open("Config.ini");
    global.full_screen = ini_read_real("Options", "full_screen", 1);
    
    ini_close();
}
else
{
    global.full_screen = 1;
}
