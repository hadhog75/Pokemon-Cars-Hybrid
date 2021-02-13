/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0147336E
/// @DnDArgument : "code" "if(ds_exists(ds_messages, ds_type_list)){$(13_10)	ds_list_destroy(ds_messages);$(13_10)}"
if(ds_exists(ds_messages, ds_type_list)){
	ds_list_destroy(ds_messages);
}