/// scrAttackState
movement = ATTACK;

image_speed = .5;

if(scrAnimationHitFrame(2)) {
    var attackAnimation = instance_create(x, y, objWeaponAnimation);
    attackAnimation.dir = face*90;
    attackAnimation.image_angle = (face*90)+45;
    attackAnimation.sprite_index = weapon_sprite;
}

if (scrAnimationHitFrame(3) ) {
    
    var xx = 0;
    var yy = 0
    
    switch(face) {
        case DOWN: 
            xx = x;
            yy = y + 12;
            break;
        case UP: 
            xx = x;
            yy = y - 10;
            break;
        case LEFT:
            xx = x - 10;
            yy = y + 2;
            break;
        case RIGHT:
            xx = x + 10;
            yy = y + 2;
            break;
    }
    audio_play_sound(snd_sword_attack, 8, false);
    var damage = instance_create(xx, yy, objDamage);
    damage.creator = id;
    damage.damage = objPlayerStats.attack;
    attacked = true;
}


