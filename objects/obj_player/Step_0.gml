var cam_x = camera_get_view_x(view_camera[0]);
cam_x = lerp(cam_x, x - 683, 0.1);
cam_x = clamp(cam_x, 0, room_width - 1366);
camera_set_view_pos(view_camera[0], cam_x, 0);
var move = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - 
           (keyboard_check(vk_left)  || keyboard_check(ord("A")));

hsp = move * walkspeed;

if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
    if (place_meeting(x, y+1, obj_platform)) {
        vsp = jumpforce;
    }
}

vsp += grv;

if (place_meeting(x, y+vsp, obj_platform)) {
    while (!place_meeting(x, y+sign(vsp), obj_platform)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
if (place_meeting(x+hsp, y, obj_platform)) {
    while (!place_meeting(x+sign(hsp), y, obj_platform)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

if (x > room_width)  x = 0;
if (x < 0)           x = room_width;

if (place_meeting(x, y, obj_spike)) {
    x = respawn_x;
    y = respawn_y;
    vsp = 0;
    hsp = 0;
}

if (place_meeting(x, y, obj_exit)) {
    room_goto_next();
}