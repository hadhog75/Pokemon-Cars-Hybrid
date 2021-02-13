/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 553222C8
/// @DnDArgument : "code" "if(battle == true){$(13_10)$(13_10)	#region SELECT OPTION$(13_10)$(13_10)	if(playerTurn) && (!showBattleText){$(13_10)	$(13_10)		if(keyboard_check_pressed(vk_down))$(13_10)		{$(13_10)			if(selected_option + 1) <= (array_length_1d(a_text) - 1){$(13_10)				selected_option ++;$(13_10)			}$(13_10)			else{$(13_10)				selected_option = 0;$(13_10)			}$(13_10)		}$(13_10)$(13_10)		if(keyboard_check_pressed(vk_up)){$(13_10)			if((selected_option - 1) >= 0){$(13_10)				selected_option--;$(13_10)			}$(13_10)			else{$(13_10)				selected_option = array_length_1d(a_text) - 1;$(13_10)			}$(13_10)		}$(13_10)		//if option is pressed$(13_10)		if(keyboard_check_pressed(vk_enter)){$(13_10)			messageCounter = 0;$(13_10)			if(!ds_exists(ds_messages, ds_type_list)){$(13_10)				ds_messages = ds_list_create();$(13_10)			}$(13_10)			//Attack$(13_10)			if(selected_option == 0){$(13_10)				$(13_10)				enDMG = irandom_range(10, 30); //opponent attack when just driving$(13_10)				$(13_10)				ds_messages[| 0] = "Player ATTACKS!";$(13_10)				roll = choose("HIT", "MISS");$(13_10)			$(13_10)				if(roll == "MISS"){$(13_10)					ds_messages[| 1] = "But missed";$(13_10)				}$(13_10)				else{$(13_10)					dmg = irandom_range(20, 30);$(13_10)					ds_messages[| 1] = "And hits for " + string(dmg) + " damage!";$(13_10)					global.opponentHP -= dmg;$(13_10)				}$(13_10)			$(13_10)				battleOption = 0;$(13_10)			}$(13_10)			//Defend$(13_10)			if(selected_option == 1){$(13_10)				ds_messages[| 0] = "Player drives DEFENSIVELY!";$(13_10)				battleOption = 1;$(13_10)				enDMG = irandom_range(1, 10); //opponent attack when driving defensively$(13_10)			}$(13_10)			//Item$(13_10)			if(selected_option == 2){$(13_10)				ds_messages[| 0] = "Player uses an ITEM!";$(13_10)				battleOption = 2;$(13_10)			}$(13_10)			//Give up$(13_10)			if(selected_option == 3){$(13_10)				ds_messages[| 0] = "Player GIVES UP!";$(13_10)				battleOption = 3;$(13_10)			}$(13_10)		$(13_10)			showBattleText = true;$(13_10)		}$(13_10)	}$(13_10)$(13_10)	#endregion$(13_10)$(13_10)$(13_10)$(13_10)	#region MESSAGES$(13_10)$(13_10)	//cycle through messages$(13_10)	if(showBattleText){$(13_10)		messageTimer++;$(13_10)	$(13_10)		if(messageTimer >= timeBeforeButtonAccepted){$(13_10)			if(keyboard_check_pressed(vk_enter)){$(13_10)				if(messageCounter + 1) <= (ds_list_size(ds_messages) - 1){$(13_10)					messageCounter++;$(13_10)				}$(13_10)				else{$(13_10)					playerTurn = !playerTurn;$(13_10)					messageCounter = 0;$(13_10)				$(13_10)					if(ds_exists(ds_messages, ds_type_list)){$(13_10)						ds_list_destroy(ds_messages);$(13_10)					}$(13_10)					showBattleText = false;$(13_10)				}$(13_10)				messageTimer = 0;$(13_10)			$(13_10)				//check for player death$(13_10)				if(global.playerHP <= 0){$(13_10)					playerDead = true;$(13_10)					ds_messages[| 2] = "Player dies...";$(13_10)				}$(13_10)				$(13_10)				//check for opponent death$(13_10)				if(global.opponentHP <= 0){$(13_10)					ds_messages[| 2] = "Player wins the battle!";$(13_10)					battle = false;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)$(13_10)	#endregion$(13_10)$(13_10)	if(playerDead){$(13_10)		battle = false;$(13_10)		room_goto(Dead);$(13_10)	}$(13_10)$(13_10)	#region ENEMY TURN$(13_10)$(13_10)	if(!playerTurn) && (!showBattleText){$(13_10)		enemyTimer++;$(13_10)	$(13_10)		if(enemyTimer >= timeTillEnemyAttacks){$(13_10)		$(13_10)			if(!ds_exists(ds_messages, ds_type_list)){$(13_10)				ds_messages = ds_list_create();$(13_10)			}$(13_10)			messageCounter = 0;$(13_10)			showBattleText = true;$(13_10)			enemyTimer = 0;$(13_10)		$(13_10)			ds_messages[| 0] = "Enemy Driver ATTACKS";$(13_10)			battleOption = 0;$(13_10)		$(13_10)			roll = choose("Hit", "Misses");$(13_10)		$(13_10)			if(roll == "Hit"){$(13_10)				//enDMG = irandom_range(10, 30);$(13_10)				ds_messages[| 1] = "And hits for " + string(enDMG) + " damage!";$(13_10)				global.playerHP -= enDMG;$(13_10)			}$(13_10)			else{$(13_10)				ds_messages[| 1] = "But misses!";$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	#endregion$(13_10)}$(13_10)$(13_10)if(victory == true){$(13_10)	room_goto(Victory);$(13_10)}"
if(battle == true){

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
			messageCounter = 0;
			if(!ds_exists(ds_messages, ds_type_list)){
				ds_messages = ds_list_create();
			}
			//Attack
			if(selected_option == 0){
				
				enDMG = irandom_range(10, 30); //opponent attack when just driving
				
				ds_messages[| 0] = "Player ATTACKS!";
				roll = choose("HIT", "MISS");
			
				if(roll == "MISS"){
					ds_messages[| 1] = "But missed";
				}
				else{
					dmg = irandom_range(20, 30);
					ds_messages[| 1] = "And hits for " + string(dmg) + " damage!";
					global.opponentHP -= dmg;
				}
			
				battleOption = 0;
			}
			//Defend
			if(selected_option == 1){
				ds_messages[| 0] = "Player drives DEFENSIVELY!";
				battleOption = 1;
				enDMG = irandom_range(1, 10); //opponent attack when driving defensively
			}
			//Item
			if(selected_option == 2){
				ds_messages[| 0] = "Player uses an ITEM!";
				battleOption = 2;
			}
			//Give up
			if(selected_option == 3){
				ds_messages[| 0] = "Player GIVES UP!";
				battleOption = 3;
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
				if(messageCounter + 1) <= (ds_list_size(ds_messages) - 1){
					messageCounter++;
				}
				else{
					playerTurn = !playerTurn;
					messageCounter = 0;
				
					if(ds_exists(ds_messages, ds_type_list)){
						ds_list_destroy(ds_messages);
					}
					showBattleText = false;
				}
				messageTimer = 0;
			
				//check for player death
				if(global.playerHP <= 0){
					playerDead = true;
					ds_messages[| 2] = "Player dies...";
				}
				
				//check for opponent death
				if(global.opponentHP <= 0){
					ds_messages[| 2] = "Player wins the battle!";
					battle = false;
				}
			}
		}
	}

	#endregion

	if(playerDead){
		battle = false;
		room_goto(Dead);
	}

	#region ENEMY TURN

	if(!playerTurn) && (!showBattleText){
		enemyTimer++;
	
		if(enemyTimer >= timeTillEnemyAttacks){
		
			if(!ds_exists(ds_messages, ds_type_list)){
				ds_messages = ds_list_create();
			}
			messageCounter = 0;
			showBattleText = true;
			enemyTimer = 0;
		
			ds_messages[| 0] = "Enemy Driver ATTACKS";
			battleOption = 0;
		
			roll = choose("Hit", "Misses");
		
			if(roll == "Hit"){
				//enDMG = irandom_range(10, 30);
				ds_messages[| 1] = "And hits for " + string(enDMG) + " damage!";
				global.playerHP -= enDMG;
			}
			else{
				ds_messages[| 1] = "But misses!";
			}
		}
	}
	#endregion
}

if(victory == true){
	room_goto(Victory);
}