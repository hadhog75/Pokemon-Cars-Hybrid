/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 453F3445
/// @DnDArgument : "code" "draw_text(text_x, 125, "Race against your opponent to either destroy his car or be him/her to the finish line.");$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)for (i = 0; i < array_length(button); i++){$(13_10)	$(13_10)	$(13_10)	if (menu_index == i){$(13_10)		draw_set_color(c_red);$(13_10)	}$(13_10)	else{$(13_10)		draw_set_color(c_yellow);$(13_10)	}$(13_10)	draw_text(menu_x, menu_y+ (button_h * i), button[i]);$(13_10)$(13_10)}"
draw_text(text_x, 125, "Race against your opponent to either destroy his car or be him/her to the finish line.");




for (i = 0; i < array_length(button); i++){
	
	
	if (menu_index == i){
		draw_set_color(c_red);
	}
	else{
		draw_set_color(c_yellow);
	}
	draw_text(menu_x, menu_y+ (button_h * i), button[i]);

}