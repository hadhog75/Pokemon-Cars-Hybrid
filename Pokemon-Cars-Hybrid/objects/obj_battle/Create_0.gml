/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49E23904
/// @DnDArgument : "code" "//words on screen$(13_10)a_text[0] = "Attack"$(13_10)a_text[1] = "Defend"$(13_10)a_text[2] = "Item"$(13_10)a_text[3] = "Give Up"$(13_10)$(13_10)selected_option = 0; //which option is the arrow over$(13_10)$(13_10)playerTurn = true;$(13_10)$(13_10)ds_messages = ds_list_create();$(13_10)messageCounter = 0; //tracks the current message$(13_10)$(13_10)showBattleText = false; //display battle text or not$(13_10)$(13_10)messageTimer = 0;$(13_10)timeBeforeButtonAccepted = 30;$(13_10)$(13_10)enemyTimer = 0;$(13_10)timeTillEnemyAttacks = 15;"
//words on screen
a_text[0] = "Attack"
a_text[1] = "Defend"
a_text[2] = "Item"
a_text[3] = "Give Up"

selected_option = 0; //which option is the arrow over

playerTurn = true;

ds_messages = ds_list_create();
messageCounter = 0; //tracks the current message

showBattleText = false; //display battle text or not

messageTimer = 0;
timeBeforeButtonAccepted = 30;

enemyTimer = 0;
timeTillEnemyAttacks = 15;