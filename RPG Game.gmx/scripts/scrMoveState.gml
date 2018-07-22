/// scrMoveState
scrGetInput();

if (dashKey and objPlayerStats.stamina >= 5) {
    state = scrDashState;
    alarm[0] = room_speed/8;
    objPlayerStats.stamina -= 5;
    objPlayerStats.alarm[0] = room_speed;
}

if (attackKey) {
    image_index = 0;
    state = scrAttackState;   
}

// Get the axist
var xaxis = (rightKey - leftKey);
var yaxis = (downKey - upKey);

// get Direction
dir = point_direction(0, 0, xaxis, yaxis);





// Get Length 
if ( xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scrGetFace();    
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


switch(face) {
    case RIGHT:
        sprite_index = sprPlayerRight;
        break;
    case UP:
        sprite_index = sprPlayerUp;
        break;
    case LEFT:
        sprite_index = sprPlayerLeft;
        break;
    case DOWN:
        sprite_index = sprPlayerDown;
        break;
}

