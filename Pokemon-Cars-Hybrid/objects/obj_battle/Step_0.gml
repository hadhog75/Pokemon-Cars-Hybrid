/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 553222C8
/// @DnDArgument : "code" "#region SELECT OPTION$(13_10)$(13_10)if(playerTurn) && (!showBattleText){$(13_10)	$(13_10)	if(keyboard_check_pressed(vk_down))$(13_10)	{$(13_10)		if(selected_option + 1) <= (array_length_1d(a_text) - 1){$(13_10)			selected_option ++;$(13_10)		}$(13_10)		else{$(13_10)			selected_option = 0;$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if(keyboard_check_pressed(vk_up)){$(13_10)		if((selected_option - 1) >= 0){$(13_10)			selected_option--;$(13_10)		}$(13_10)		else{$(13_10)			selected_option = array_length_1d(a_text) - 1;$(13_10)		}$(13_10)	}$(13_10)	//if option is pressed$(13_10)	if(keyboard_check_pressed(vk_enter)){$(13_10)		//Attack$(13_10)		if(selected_option == 0){$(13_10)			a_message[0] = "Player ATTACKS!"$(13_10)		}$(13_10)		//Defend$(13_10)		if(selected_option == 1){$(13_10)			a_message[0] = "Player DEFENDS!"$(13_10)		}$(13_10)		//Item$(13_10)		if(selected_option == 2){$(13_10)			a_message[0] = "Player USES ITEM!"$(13_10)		}$(13_10)		//Give up$(13_10)		if(selected_option == 3){$(13_10)			a_message[0] = "Player GIVES UP!"$(13_10)		}$(13_10)		$(13_10)		showBattleText = true;$(13_10)	}$(13_10)}$(13_10)#endregion$(13_10)$(13_10)#region MESSAGES$(13_10)$(13_10)//cycle through messages$(13_10)if(showBattleText){$(13_10)	messageTimer++;$(13_10)	$(13_10)	if(messageTimer >= timeBeforeButtonAccepted){$(13_10)		if(keyboard_check_pressed(vk_enter)){$(13_10)			if(messageCounter + 1) <= (array_length_1d(a_message) - 1){$(13_10)				messageCounter++;$(13_10)			}$(13_10)			else{$(13_10)				playerTurn = !playerTurn;$(13_10)				showBattleText = false;$(13_10)			}$(13_10)			messageTimer = 0;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)#endregion$(13_10)$(13_10)#region ENEMY TURN$(13_10)$(13_10)if(!playerTurn){$(13_10)	$(13_10)}$(13_10)$(13_10)#endregion"
#region SELECT OPTION

if(playerTurn) && (!showBattleText){
	
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
	//if option is pressed
	if(keyboard_check_pressed(vk_enter)){
		//Attack
		if(selected_option == 0){
			a_message[0] = "Player ATTACKS!"
		}
		//Defend
		if(selected_option == 1){
			a_message[0] = "Player DEFENDS!"
		}
		//Item
		if(selected_option == 2){
			a_message[0] = "Player USES ITEM!"
		}
		//Give up
		if(selected_option == 3){
			a_message[0] = "Player GIVES UP!"
		}
		
		showBattleText = true;
	}
}
#endregion

#region MESSAGES

//cycle through messages
if(showBattleText){
	messageTimer++;
	
	if(messageTimer >= timeBeforeButtonAccepted){
		if(keyboard_check_pressed(vk_enter)){
			if(messageCounter + 1) <= (array_length_1d(a_message) - 1){
				messageCounter++;
			}
			else{
				playerTurn = !playerTurn;
				showBattleText = false;
			}
			messageTimer = 0;
		}
	}
}

#endregion

#region ENEMY TURN

if(!playerTurn){
	
}

#endregion