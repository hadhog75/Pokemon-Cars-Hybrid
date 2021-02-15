/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49E23904
/// @DnDArgument : "code" "//words on screen$(13_10)a_text[0] = "Attack"$(13_10)a_text[1] = "Defend"$(13_10)a_text[2] = "Item"$(13_10)a_text[3] = "Give Up"$(13_10)$(13_10)$(13_10)a_attack_text [0] = "SLAM";$(13_10)a_attack_text [1] = "DRIFT";$(13_10)a_attack_text [2] = "SPIKES";$(13_10)$(13_10)global.playerHP = 100;$(13_10)playerMAXHP = 100;$(13_10)$(13_10)global.opponentHP = 100;$(13_10)oppMAXHP = 100;$(13_10)$(13_10)selected_option = 0; //which option is the arrow over$(13_10)attack_option = 0; //option attack arrow is over$(13_10)$(13_10)playerTurn = true;$(13_10)$(13_10)ds_messages = ds_list_create();$(13_10)messageCounter = 0; //tracks the current message$(13_10)$(13_10)showBattleText = false; //display battle text or not$(13_10)$(13_10)messageTimer = 0;$(13_10)timeBeforeButtonAccepted = 15;$(13_10)$(13_10)enemyTimer = 0;$(13_10)timeTillEnemyAttacks = 15;$(13_10)$(13_10)battleOption = 0; //Which option has been selected by the opponent$(13_10)$(13_10)playerDead = false;$(13_10)battle = true;$(13_10)victory = false;$(13_10)$(13_10)showAttackOptions = false; //show attacks menu or not$(13_10)attack_option = 0; //which attack to use$(13_10)"
//words on screen
a_text[0] = "Attack"
a_text[1] = "Defend"
a_text[2] = "Item"
a_text[3] = "Give Up"


a_attack_text [0] = "SLAM";
a_attack_text [1] = "DRIFT";
a_attack_text [2] = "SPIKES";

global.playerHP = 100;
playerMAXHP = 100;

global.opponentHP = 100;
oppMAXHP = 100;

selected_option = 0; //which option is the arrow over
attack_option = 0; //option attack arrow is over

playerTurn = true;

ds_messages = ds_list_create();
messageCounter = 0; //tracks the current message

showBattleText = false; //display battle text or not

messageTimer = 0;
timeBeforeButtonAccepted = 15;

enemyTimer = 0;
timeTillEnemyAttacks = 15;

battleOption = 0; //Which option has been selected by the opponent

playerDead = false;
battle = true;
victory = false;

showAttackOptions = false; //show attacks menu or not
attack_option = 0; //which attack to use