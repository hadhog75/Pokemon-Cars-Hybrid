/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 553222C8
/// @DnDArgument : "code" "#region SELECT OPTION$(13_10)$(13_10)if(keyboard_check_pressed(vk_down))$(13_10){$(13_10)	if(selected_option + 1) <= (array_length_1d(a_text) - 1){$(13_10)		selected_option ++;$(13_10)	}$(13_10)	else{$(13_10)		selected_option = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(keyboard_check_pressed(vk_up)){$(13_10)	if((selected_option - 1) >= 0){$(13_10)		selected_option--;$(13_10)	}$(13_10)	else{$(13_10)		selected_option = array_length_1d(a_text) - 1;$(13_10)	}$(13_10)}$(13_10)$(13_10)#endregion"
#region SELECT OPTION

if(keyboard_check_pressed(vk_down))
{
	if(selected_option + 1) <= (array_length_1d(a_text) - 1){
		selected_option ++;
	}
	else{
		selected_option = 0;
	}
}

if(keyboard_check_pressed(vk_up)){
	if((selected_option - 1) >= 0){
		selected_option--;
	}
	else{
		selected_option = array_length_1d(a_text) - 1;
	}
}

#endregion