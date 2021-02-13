/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70C0CD03
/// @DnDArgument : "code" "if(battle == true){$(13_10)$(13_10)	//draws words in create event to the screen$(13_10)	optionX = 32;$(13_10)	optionY = 16;$(13_10)$(13_10)	draw_set_font(font_battle_text);$(13_10)	draw_set_halign(fa_left);$(13_10)	draw_set_valign(fa_top);$(13_10)	draw_set_color(c_white);$(13_10)$(13_10)	fontSize = font_get_size(font_battle_text); $(13_10)	var Buffer = 12; //space between words$(13_10)$(13_10)	if(playerTurn) && (!showBattleText){$(13_10)$(13_10)		//for loop that actually draws the text$(13_10)		for(var i = 0; i < array_length(a_text); i++)$(13_10)		{$(13_10)			text = a_text[i];$(13_10)			if(selected_option == i){$(13_10)				draw_sprite(spr_arrow_sprite, 0, optionX - sprite_get_width(spr_arrow_sprite), optionY + ((fontSize + Buffer) * i));$(13_10)			}$(13_10)			draw_text(optionX, optionY + ((fontSize + Buffer) * i), text);$(13_10)		}$(13_10)	}$(13_10)$(13_10)	//Draw messages$(13_10)	guiX = surface_get_width(application_surface) / 2;$(13_10)	guiY = surface_get_height(application_surface);$(13_10)$(13_10)	draw_sprite(spr_textbox, 0, guiX, guiY)$(13_10)$(13_10)	if(showBattleText){$(13_10)		textX = guiX - ((sprite_get_width(spr_textbox) / 2) - Buffer)$(13_10)		textY = guiY - (sprite_get_height(spr_textbox) - Buffer)$(13_10)	$(13_10)		for(var a = 0; a <= messageCounter; a++;){$(13_10)			draw_text_ext(textX, textY + ((fontSize + Buffer) * a), ds_messages[| a], (fontSize + Buffer), sprite_get_width(spr_textbox) - (Buffer));$(13_10)		}$(13_10)	}$(13_10)$(13_10)	//draw player HP$(13_10)	draw_set_valign(fa_bottom);$(13_10)	draw_set_halign(fa_left);$(13_10)	hpX = Buffer;$(13_10)	hpY = surface_get_height(application_surface) - Buffer;$(13_10)$(13_10)	draw_text(hpX, hpY, string(global.playerHP) + "/" + string(playerMAXHP));$(13_10)$(13_10)	//draw opponent$(13_10)	oppX = surface_get_width(application_surface) / 2;$(13_10)	oppY = surface_get_height(application_surface) / 2;$(13_10)$(13_10)	draw_sprite_ext(spr_opponent1, 0, oppX, oppY, 3, 3, 0, c_white, 1);$(13_10)}"
if(battle == true){

	//draws words in create event to the screen
	optionX = 32;
	optionY = 16;

	draw_set_font(font_battle_text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);

	fontSize = font_get_size(font_battle_text); 
	var Buffer = 12; //space between words

	if(playerTurn) && (!showBattleText){

		//for loop that actually draws the text
		for(var i = 0; i < array_length(a_text); i++)
		{
			text = a_text[i];
			if(selected_option == i){
				draw_sprite(spr_arrow_sprite, 0, optionX - sprite_get_width(spr_arrow_sprite), optionY + ((fontSize + Buffer) * i));
			}
			draw_text(optionX, optionY + ((fontSize + Buffer) * i), text);
		}
	}

	//Draw messages
	guiX = surface_get_width(application_surface) / 2;
	guiY = surface_get_height(application_surface);

	draw_sprite(spr_textbox, 0, guiX, guiY)

	if(showBattleText){
		textX = guiX - ((sprite_get_width(spr_textbox) / 2) - Buffer)
		textY = guiY - (sprite_get_height(spr_textbox) - Buffer)
	
		for(var a = 0; a <= messageCounter; a++;){
			draw_text_ext(textX, textY + ((fontSize + Buffer) * a), ds_messages[| a], (fontSize + Buffer), sprite_get_width(spr_textbox) - (Buffer));
		}
	}

	//draw player HP
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_left);
	hpX = Buffer;
	hpY = surface_get_height(application_surface) - Buffer;

	draw_text(hpX, hpY, string(global.playerHP) + "/" + string(playerMAXHP));

	//draw opponent
	oppX = surface_get_width(application_surface) / 2;
	oppY = surface_get_height(application_surface) / 2;

	draw_sprite_ext(spr_opponent1, 0, oppX, oppY, 3, 3, 0, c_white, 1);
}