/// scrDashState

len = spd*5;

// get hspd and vsdp
hspd = lengthdir_x(len, dir)
vspd = lengthdir_y(len, dir)


// move
phy_position_x += hspd;
phy_position_y += vspd;

// Create the Dash effect
var dash = instance_create( x, y, objDashEffect);
dash.sprite_index = sprite_index;



