/// @description draw_button_and_check_clicked(text_to_draw, rectangle, x, y, font, font scale, bool align, color_button, color_text)
/// @param  text_to_draw
/// @param  x
/// @param  y
/// @param  font
/// @param  font_scale
/// @param  center_align
/// @param  color_button
/// @param  color_text
function draw_button_and_check_clicked(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {

	// example call:
	// clicked = draw_button_and_check_clicked("submit", true, x1+ 150, y1 + 150, fnt_box, 1, false, c_red, c_white);

	text_to_draw = argument0;
	rectangle= argument1;
	x_cor = argument2
	y_cor = argument3;
	font = argument4;
	font_scale = argument5;
	center_align = argument6;
	color_button = argument7;
	color_text = argument8;


	
	//align
	if (center_align){
	    draw_set_halign(fa_center);
	    draw_set_valign(fa_middle);
	} else {
	    draw_set_halign(fa_left);
	    draw_set_valign(fa_top);
	}
	
	//font stuff
	draw_set_font(font)
	height = string_height(text_to_draw)
	width = string_width(text_to_draw)
	
	// rectangle
	if (rectangle){
		if (center_align){
			draw_rectangle_color(x_cor - (.5 * width * font_scale), y_cor - (.5 * height * font_scale), x_cor + (.5 * width * font_scale), y_cor + (.5 * height * font_scale), 
			color_button, color_button, color_button, color_button, false);
		}else{
			draw_rectangle_color(x_cor, y_cor, x_cor + (width * font_scale), y_cor + (height * font_scale), 
			color_button, color_button, color_button, color_button, false);	
		}
		
	}
	
	// optional text
	draw_text_transformed_color(x_cor, y_cor, text_to_draw, font_scale, font_scale, 0, color_text, color_text, color_text, color_text,1)
	
	if (center_align){
		clicked = point_in_rectangle(mouse_x, mouse_y, 
									x_cor - (.5 * width * font_scale), y_cor - (.5 * height * font_scale),
									x_cor + (.5 * width * font_scale), y_cor + (.5 * height * font_scale)) 
									&& mouse_check_button_released(mb_left);
	} else{
		clicked = point_in_rectangle(mouse_x, mouse_y, 
									x_cor, y_cor,
									x_cor + (width * font_scale), y_cor + (height * font_scale)) 
									&& mouse_check_button_released(mb_left);	
	}
	

	return clicked
}