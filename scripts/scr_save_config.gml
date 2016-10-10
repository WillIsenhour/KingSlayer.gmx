///scr_save_config()
//Saves user's configurations to use next time game is opened

//Open config file (if none exists, one will be created)
ini_open("Config.ini");

//Save necessary variables
ini_write_real("Options", "full_screen", global.full_screen);

//close config file
ini_close();
