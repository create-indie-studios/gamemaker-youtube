if (string_length(keyboard_string) < 10 && writable){
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

// logic for checking if we can write in the box or notzx
if (mouse_check_button_released(mb_left)){
	if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)){
		writable = true	
	} else {
		writable = false	
	}
}

// setting the window cursor to the right thing
if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)){
	window_set_cursor(cr_beam)
} else {
	window_set_cursor(cr_default)	
}	

// input validation 
if (clicked){
	if (string_length(name) >=3){
		validation_output = "successful submission!"
		audio_play_sound(snd_success, 0, 0)
	} else{
		validation_output = "name must be at least 3 characters!"
		audio_play_sound(snd_fail, 0, 0)
	}
}
