if (place_meeting(x, y, obj_player)) {
    draw_set_font(-1);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_text(display_get_width()/2, display_get_height()-60, hint_text);
    draw_set_halign(fa_left);
}