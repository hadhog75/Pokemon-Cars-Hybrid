/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0258BE36
/// @DnDArgument : "code" "audio_stop_all()$(13_10)if menu_index == 0$(13_10)	room_goto(Battle_room)$(13_10)else if menu_index == 1$(13_10)	room_goto(InstructionsMenu)$(13_10)else if menu_index == 2$(13_10)	game_end()"
audio_stop_all()
if menu_index == 0
	room_goto(Battle_room)
else if menu_index == 1
	room_goto(InstructionsMenu)
else if menu_index == 2
	game_end()