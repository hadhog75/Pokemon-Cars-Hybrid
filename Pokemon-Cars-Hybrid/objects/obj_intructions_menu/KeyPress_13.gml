/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59994DC8
/// @DnDArgument : "code" "audio_stop_all()$(13_10)if menu_index == 0$(13_10)	room_goto(Main_menu)$(13_10)else if menu_index == 1$(13_10)	room_goto(Battle_room)"
audio_stop_all()
if menu_index == 0
	room_goto(Main_menu)
else if menu_index == 1
	room_goto(Battle_room)