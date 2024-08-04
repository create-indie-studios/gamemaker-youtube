// define common rectangle coordinates for convenience when calling draw funtions
width = 600
height = 100
x1 = room_width/2 - 300
y1 = room_height/2 - 50
x2 = x1 + width
y2 = y1 + height

name = ""
writable = false
cursor = " "

// room_speed is now deprecated so we will use the number of frames per second instead 
// to determine our cursor blinking
default_time = 30 / game_get_speed(gamespeed_fps)
time = default_time

invalid_name = false
validation_output = ""
clicked = false