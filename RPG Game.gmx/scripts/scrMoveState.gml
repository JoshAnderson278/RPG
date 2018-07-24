/// scrMoveState

movement = MOVE;

if (objInput.dashKey) {
    var xdir = lengthdir_x(8, face*90);
    var ydir = lengthdir_y(8, face*90);
    var speaker = instance_place(x+xdir, y+ydir, objSpeaker);
    
    
    if( speaker != noone) {
        with(speaker) {
            if(!instance_exists(dialog)) {
                dialog = instance_create(x, y+yoffset, objDialog);
                dialog.text = text;
            } else {
                dialog.textpage++;
                dialog.textcount = 0;
                if(dialog.textpage > array_length_1d(dialog.text)-1) {
                    with(dialog) {
                        instance_destroy();
                    }
                }
            }
        }
    } 
    else if(objPlayerStats.stamina >= 5) {
        //Dash
        state = scrDashState;
        alarm[0] = room_speed/8;
        objPlayerStats.stamina -= 5;
        objPlayerStats.alarm[0] = room_speed;
    }
}

if (objInput.attackKey) {
    image_index = 0;
    state = scrAttackState;   
}

if( objInput.spellKey) {
    var p = instance_create(x, y, objProjectile);
    var xforce = lengthdir_x(20, face*90);
    var yforce = lengthdir_y(20, face*90);
    p.creator = id;
    
    with(p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }
    
}

if(objInput.swapKey) {
    var nearestWeapon = instance_nearest(x, y, objWeaponItem)
    
    if(place_meeting(x, y+4, nearestWeapon)) {
        scrSwapWeapons(nearestWeapon);
    }
}

// Get the axist
var xaxis = (objInput.rightKey - objInput.leftKey);
var yaxis = (objInput.downKey - objInput.upKey);

// get Direction
dir = point_direction(0, 0, xaxis, yaxis);





// Get Length 
if ( xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scrGetFace(dir);    
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



