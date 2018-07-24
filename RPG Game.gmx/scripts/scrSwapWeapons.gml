/// scrSwapWeapons(newWeapon()

var newWeapon = argument0;

var temp = weapon_sprite;

weapon_sprite = newWeapon.sprite_index;

newWeapon.sprite_index = temp;

