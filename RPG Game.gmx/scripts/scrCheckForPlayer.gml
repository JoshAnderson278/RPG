/// scrCheckForPlayer

if( instance_exists(objPlayer)) {
    var dis = point_distance(x, y, objPlayer.x, objPlayer.y);
    if(dis < sight) {
        state = scrEnemyChaseState;
        var dir = point_direction(x, y, objPlayer.x, objPlayer.y);
        xaxis = lengthdir_x(1, dir);
        yaxis = lengthdir_y(1, dir);
    }
    else {
        scrEnemyChooseNextState();
    }
} else {
    scrEnemyChooseNextState();   
}
