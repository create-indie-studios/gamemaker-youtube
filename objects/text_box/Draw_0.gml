

// draw outer rectangle to clarify we can input
if (writable){
	draw_rectangle_color(room_width/2 - 320, room_height/2 - 70, room_width/2 + 320, room_height/2 + 70, c_blue, c_blue, c_blue, c_blue, false)	
}
// draw the rectangle (the box for input)
draw_rectangle_color(x1, y1, x2, y2, c_white, c_white, c_white, c_white, false)

//draw text housekeeping
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_blue)
// please note I changed this from box_font to fnt_box to be
// consistant with gme naming standards 
draw_set_font(fnt_box)
draw_text_ext_transformed(x1 + 25, y1, name + cursor, 100, 2000, 1,1,0)

if (mouse_check_button_released(mb_left)){
	if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)){
		writable = true	
	} else {
		writable = false	
	}
}

if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)){
	window_set_cursor(cr_beam)
} else {
	window_set_cursor(cr_default)	
}	
