/// scrGetInput

rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
upKey = keyboard_check(vk_up);
dashKey = keyboard_check_pressed(ord("C"));
attackKey = keyboard_check_pressed(ord("X"));



// Get the Axis
xaxis = (rightKey - leftKey);
yaxis = (downKey - upKey);


