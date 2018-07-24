/// scrLoadGame

var file = file_text_open_read(working_directory+"mysavegame.txt");
var saveString = file_text_read_string(file);
file_text_close(file);

saveString = base64_decode(saveString);

var saveData = json_decode(saveString);

var saveRoom = saveData[? "room"];
if(room != saveRoom) {
    room_goto(saveRoom);
}

with(objPlayerStats) {
    playerXStart = saveData[? "x"];
    playeryStart = saveData[? "y"];
    if( instance_exists(objPlayer)) {
        objPlayer.x = playerXStart;
        objPlayer.y = playerYStart;
        objPlayer.phy_position_x = playerXStart;
        objPlayer.phy_position_y = playerYStart;
        
    } else {
        instance_create(playerXStart, playerYStart, objPlayer);
    }
    hp = saveData[? "hp"];
    maxhp = saveData[? "maxhp"];
    stamina = saveData[? "stamina"];
    maxstamina = saveData[? "maxstamina"];
    expr = saveData[? "expr"];
    maxexpr = saveData[? "maxexpr"];
    level = saveData[? "level"];
    attack = saveData[? "attack"];
}

ds_map_destroy(saveData);
