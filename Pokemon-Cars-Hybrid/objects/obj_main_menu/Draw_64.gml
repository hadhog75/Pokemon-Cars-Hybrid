/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5356363C
/// @DnDArgument : "code" "var i = 0;$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_color(c_yellow);$(13_10)//draw_text(0,0, string(global.numb_of_clues) + " of 4 clues found");$(13_10)draw_text(683, 150, "Hot Rod Hoard");$(13_10)$(13_10)draw_text(683, 350, "Use arrow keys to highlight option, and 'Enter' to select.");$(13_10)$(13_10)$(13_10)for (i = 0; i < array_length(button); i++){$(13_10)	$(13_10)	$(13_10)	if (menu_index == i){$(13_10)		draw_set_color(c_red);$(13_10)	}$(13_10)	else{$(13_10)		draw_set_color(c_yellow);$(13_10)	}$(13_10)	draw_text(menu_x, menu_y+ (button_h * i), button[i]);$(13_10)$(13_10)}$(13_10)$(13_10)"
var i = 0;
draw_set_halign(fa_center);
draw_set_color(c_yellow);
//draw_text(0,0, string(global.numb_of_clues) + " of 4 clues found");
draw_text(683, 150, "Hot Rod Hoard");

draw_text(683, 350, "Use arrow keys to highlight option, and 'Enter' to select.");


for (i = 0; i < array_length(button); i++){
	
	
	if (menu_index == i){
		draw_set_color(c_red);
	}
	else{
		draw_set_color(c_yellow);
	}
	draw_text(menu_x, menu_y+ (button_h * i), button[i]);

}