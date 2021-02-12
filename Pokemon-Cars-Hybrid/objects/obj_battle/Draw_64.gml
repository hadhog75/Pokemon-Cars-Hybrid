/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70C0CD03
/// @DnDArgument : "code" "//draws words in create event to the screen$(13_10)optionX = 32;$(13_10)optionY = 16;$(13_10)$(13_10)draw_set_font(font_battle_text);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)fontSize = font_get_size(font_battle_text); $(13_10)var Buffer = 12; //space between words$(13_10)$(13_10)//for loop that actually draws the text$(13_10)for(var i = 0; i < array_length(a_text); i++)$(13_10){$(13_10)	text = a_text[i];$(13_10)	if(selected_option == i){$(13_10)		draw_sprite(spr_arrow_sprite, 0, optionX - sprite_get_width(spr_arrow_sprite), optionY + ((fontSize + Buffer) * i));$(13_10)	}$(13_10)	draw_text(optionX, optionY + ((fontSize + Buffer) * i), text);$(13_10)}"
//draws words in create event to the screen
optionX = 32;
optionY = 16;

draw_set_font(font_battle_text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

fontSize = font_get_size(font_battle_text); 
var Buffer = 12; //space between words

//for loop that actually draws the text
for(var i = 0; i < array_length(a_text); i++)
{
	text = a_text[i];
	if(selected_option == i){
		draw_sprite(spr_arrow_sprite, 0, optionX - sprite_get_width(spr_arrow_sprite), optionY + ((fontSize + Buffer) * i));
	}
	draw_text(optionX, optionY + ((fontSize + Buffer) * i), text);
}