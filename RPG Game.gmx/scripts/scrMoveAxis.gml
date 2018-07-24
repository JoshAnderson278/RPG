/// scrMoveAxis

var dir = point_direction(0, 0, xaxis, yaxis);

var hspd = lengthdir_x(spd, dir); 
var vspd = lengthdir_y(spd, dir);

if(hspd != 0) image_xscale = sign(hspd);

scrGetFace(dir);
movement = MOVE;

//Move toward target
phy_position_x += hspd;
phy_position_y += vspd;
