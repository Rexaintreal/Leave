if (place_meeting(x, y, obj_player)) {
    with (obj_player) {
        x = respawn_x;
        y = respawn_y;
        vsp = 0;
        hsp = 0;
    }
}