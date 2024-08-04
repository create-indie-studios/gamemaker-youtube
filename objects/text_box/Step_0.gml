if (string_length(name) < 10 && writable){
	name = keyboard_string	
} else{
	keyboard_string = name	
}

if (time < 0) {
	time = default_time
	cursor = " "	
} else if (time >=0 && writable){
	cursor = "|"	
}

time -= 1 / game_get_speed(gamespeed_fps)

// logic for checking if we can write in the box or not and setting the windows cursor to
// the right thing
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