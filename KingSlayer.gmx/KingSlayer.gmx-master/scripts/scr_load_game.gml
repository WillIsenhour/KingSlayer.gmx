///scr_load_game(file_num)
var fileName = "SaveFile" + string(argument0);

//Open save file if it already exists
if (file_exists("Save.sav")){
    ini_open("Save.sav");
    var LoadedRoom = ini_read_real(fileName, "room", -1);
    ini_close();
    
    if (room_exists(LoadedRoom)) room_goto(LoadedRoom);
}
else
{
    //error handling goes here
}
