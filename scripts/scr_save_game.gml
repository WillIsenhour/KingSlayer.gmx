///scr_save_game(file_num)
var fileName = "SaveFile" + string(argument0);

//Open save file (if none exists, one will be created)
ini_open("Save.sav");

//Save necessary variables
var SavedRoom = room;
ini_write_real(fileName, "room", SavedRoom);

//close save file
ini_close();

