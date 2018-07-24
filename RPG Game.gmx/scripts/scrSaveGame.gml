/// scrSaveGame

// objPlayer exists
if(!instance_exists(objPlayerStats)) exit;

//create save data structure

var saveData = ds_map_create();

with(objPlayerStats) {
    saveData[? "room"] = previousRoom;
    saveData[? "x"] = playerXStart;
    saveData[? "y"] = playerYStart;
    saveData[? "hp"] = hp;
    saveData[? "maxhp"] = maxhp;
    saveData[? "stamina"] = stamina;
    saveData[? "maxstamina"] = maxstamina;
    saveData[? "expr"] = expr;
    saveData[? "maxexpr"] = maxexpr;
    saveData[? "level"] = level;
    saveData[? "attack"] = attack;
}


var saveString = json_encode(saveData);
ds_map_destroy(saveData);
saveString = base64_encode(saveString);

show_message("Game Saved");

var file = file_text_open_write(working_directory + "mysavegame.txt");
file_text_write_string(file, saveString);
file_text_close(file);





