draw_set_font(-1);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_text(display_get_width()/2, display_get_height()/2 - 40, "You escaped the loop.");
draw_text(display_get_width()/2, display_get_height()/2 + 10, "You kept going right when everyone else stopped.");
draw_set_halign(fa_left);
draw_set_valign(fa_top);