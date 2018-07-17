///scrGetInput


rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
downKey = keyboard_check(vk_down);
upKey = keyboard_check(vk_up);
dashKey = keyboard_check_pressed(ord("C"));


xaxis = (rightKey - leftKey);
yaxis = (downKey - upKey);


