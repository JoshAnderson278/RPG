/// scrEnemyChaseState

scrCheckForPlayer();

var dir = point_direction(x, y, targetx, targety);

var hspd = lengthdir_x(spd, dir); 
var vspd = lengthdir_y(spd, dir);

if( hspd != 0) image_xscale = sign(hspd);

//Move toward target
phy_position_x += hspd;
phy_position_y += vspd;

