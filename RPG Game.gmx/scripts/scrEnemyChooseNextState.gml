/// scrEnemyChooseNextState

if(alarm[0] <= 0){
    state = choose(scrEnemyWanderState, scrEnemyIdleState);
    alarm[0] = room_speed*irandom_range(2,4)
    if(state == scrEnemyWanderState) {
        xaxis = random_range(-1, 1);
        yaxis = random_range(-1, 1);
    }
}

