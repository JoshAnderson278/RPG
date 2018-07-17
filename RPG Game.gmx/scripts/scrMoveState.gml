/// scrMoveState
scrGetInput();

if (dashKey) {
    state = scrDashState;
    alarm[0] = room_speed/8;
}

// Get the axist
var xaxis = (rightKey - leftKey);
var yaxis = (downKey - upKey);

// get Direction
dir = point_direction(0, 0, xaxis, yaxis);





// Get Length 
if ( xaxis == 0 and yaxis = 0) {
    len = 0;
} else {
    len = spd;
}

// get hspd and vsdp
hspd = lengthdir_x(len, dir)
vspd = lengthdir_y(len, dir)


// move
phy_position_x += hspd;
phy_position_y += vspd;


// Control the Sprite
image_speed = sign(len)*.2
if(len == 0) image_index = 0;

if(vspd > 0) sprite_index = sprPlayerDown;
else if(vspd < 0) sprite_index = sprPlayerUp;

if(hspd > 0) sprite_index = sprPlayerRight;
else if(hspd < 0) sprite_index = sprPlayerLeft;


