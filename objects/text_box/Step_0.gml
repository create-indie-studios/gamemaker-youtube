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