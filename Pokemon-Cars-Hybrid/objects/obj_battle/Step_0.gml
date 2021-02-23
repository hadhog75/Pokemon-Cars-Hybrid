/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 553222C8
/// @DnDArgument : "code" "// STEP CODE$(13_10)if(battle == true)$(13_10){$(13_10)$(13_10)	#region SELECT OPTION$(13_10)$(13_10)	if(playerTurn) && (!showBattleText)$(13_10)	{$(13_10)	$(13_10)		if (!showAttackOptions) && (!showItemsOptions)//show turn options$(13_10)		{$(13_10)			if(keyboard_check_pressed(vk_down))$(13_10)			{$(13_10)				if(selected_option + 1) <= (array_length_1d(a_text) - 1)$(13_10)				{$(13_10)					selected_option ++;$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					selected_option = 0;$(13_10)				}$(13_10)			}$(13_10)$(13_10)			if(keyboard_check_pressed(vk_up))$(13_10)			{$(13_10)				if((selected_option - 1) >= 0)$(13_10)				{$(13_10)					selected_option--;$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					selected_option = array_length_1d(a_text) - 1;$(13_10)				}$(13_10)			}$(13_10)		$(13_10)				//if option is pressed$(13_10)				if(keyboard_check_pressed(vk_enter))$(13_10)				{$(13_10)					messageCounter = 0;$(13_10)					if(!ds_exists(ds_messages, ds_type_list))//if list doesn't exist, make it$(13_10)					{$(13_10)						ds_messages = ds_list_create();$(13_10)					}$(13_10)		$(13_10)					//Attack$(13_10)					if(selected_option == 0)$(13_10)					{$(13_10)						//if selected option is attack show attack menu$(13_10)						showAttackOptions = true;$(13_10)						battleOption = 0;$(13_10)					}$(13_10)					//Defend$(13_10)					if(selected_option == 1)$(13_10)					{$(13_10)						ds_messages[| 0] = "Player drives DEFENSIVELY!";$(13_10)						battleOption = 1;$(13_10)						enDMG = irandom_range(1, 10); //opponent attack when driving defensively$(13_10)					}$(13_10)					//Item$(13_10)					if(selected_option == 2)$(13_10)					{$(13_10)						showItemsOptions = true;$(13_10)						battleOption = 2;$(13_10)					}$(13_10)				$(13_10)					//Give up$(13_10)					if(selected_option == 3)$(13_10)					{$(13_10)						ds_messages[| 0] = "Player GIVES UP!";$(13_10)						battleOption = 3;$(13_10)					}$(13_10)					//if attack wasn't selected show the battle text in region MESSAGES$(13_10)					if (selected_option != 0) && (selected_option != 2)$(13_10)					{$(13_10)						showBattleText = true;$(13_10)					}$(13_10)				}$(13_10)		}$(13_10)		$(13_10)		else$(13_10)		{$(13_10)			//SHOW ATTACK MENU$(13_10)			if (showAttackOptions)$(13_10)			{$(13_10)				//show different attacks in the attack option$(13_10)			$(13_10)				if(keyboard_check_pressed(vk_down))$(13_10)				{$(13_10)					if(attack_option + 1) <= (array_length_1d(a_attack_text) - 1)$(13_10)					{$(13_10)						attack_option ++;$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						attack_option = 0;$(13_10)					}$(13_10)				}$(13_10)			$(13_10)$(13_10)				if(keyboard_check_pressed(vk_up))$(13_10)				{$(13_10)					if((attack_option - 1) >= 0)$(13_10)					{$(13_10)						attack_option--;$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						attack_option = array_length_1d(a_attack_text) - 1;$(13_10)					}$(13_10)				}$(13_10)				$(13_10)				//CHOOSE ATTACK$(13_10)				if (keyboard_check_pressed(vk_enter))$(13_10)				{$(13_10)					enDMG = scr_healHurt(attack_option);$(13_10)					//ATTACK 1$(13_10)					if (attack_option == 0)$(13_10)					{$(13_10)						ds_messages [| 0] = "Player attacks with " + a_attack_text[attack_option];$(13_10)						ds_messages [| 1] = "and deals " + string(enDMG) + "dmg!";$(13_10)						global.opponentHP += enDMG;$(13_10)					}$(13_10)					//ATTACK 2$(13_10)					if (attack_option == 1)$(13_10)					{$(13_10)						ds_messages [| 0] = "Player attacks with " + a_attack_text[attack_option];$(13_10)						ds_messages [| 1] = "and deals " + string(enDMG) + "dmg!";$(13_10)						global.opponentHP += enDMG;$(13_10)					}$(13_10)					//ATTACK 3$(13_10)					if (attack_option == 2)$(13_10)					{$(13_10)						ds_messages [| 0] = "Player attacks with " + a_attack_text[attack_option];$(13_10)						ds_messages [| 1] = "and deals " + string(enDMG) + "dmg!";$(13_10)						global.opponentHP += enDMG;$(13_10)					}$(13_10)					$(13_10)					//CONTINUE BATTLE$(13_10)					showBattleText = true;$(13_10)					showAttackOptions = false;$(13_10)				}$(13_10)			}$(13_10)		$(13_10)			//SHOW ITEM OPTIONS$(13_10)			if (showItemsOptions)$(13_10)			{$(13_10)				//show different items in the item option$(13_10)			$(13_10)				if(keyboard_check_pressed(vk_down))$(13_10)				{$(13_10)					if(item_option + 1) <= (array_length_1d(a_item_text) - 1)$(13_10)					{$(13_10)						item_option ++;$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						item_option = 0;$(13_10)					}$(13_10)				}$(13_10)			$(13_10)$(13_10)				if(keyboard_check_pressed(vk_up))$(13_10)				{$(13_10)					if((item_option - 1) >= 0)$(13_10)					{$(13_10)						item_option--;$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						item_option = array_length_1d(a_item_text) - 1;$(13_10)					}$(13_10)				}$(13_10)				$(13_10)				//CHOOSE ITEM$(13_10)				if (keyboard_check_pressed(vk_enter))$(13_10)				{$(13_10)					enItem = scr_itemUse(item_option);$(13_10)					//ITEM 1$(13_10)					if (item_option == 0)$(13_10)					{$(13_10)						ds_messages [| 0] = "Player attacks with " + a_item_text[item_option];$(13_10)						ds_messages [| 1] = "and deals " + string(enItem) + "dmg!";$(13_10)					}$(13_10)					//ITEM 2$(13_10)					if (item_option == 1)$(13_10)					{$(13_10)						ds_messages [| 0] = "Player pulls the " + a_item_text[item_option];$(13_10)						ds_messages [| 1] = "and counters the dmg!";$(13_10)						defendItem = true;$(13_10)					}$(13_10)					//ITEM 3 HEAL$(13_10)					if (item_option == 2)$(13_10)					{$(13_10)						ds_messages [| 0] = "Player calls upon " + a_item_text[item_option];$(13_10)						ds_messages [| 1] = "and heals for " + string(enItem) + "points!";$(13_10)						global.playerHP += enItem;$(13_10)					}$(13_10)					$(13_10)					//CONTINUE BATTLE$(13_10)					showBattleText = true;$(13_10)					showItemsOptions = false;$(13_10)					showAttackOptions = false;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)			$(13_10)	}$(13_10)}$(13_10)$(13_10)	#endregion$(13_10)$(13_10)$(13_10)$(13_10)	#region MESSAGES$(13_10)$(13_10)	//cycle through messages$(13_10)	if(showBattleText)$(13_10)	{$(13_10)		messageTimer++;$(13_10)	$(13_10)		if(messageTimer >= timeBeforeButtonAccepted)$(13_10)		{$(13_10)			if(keyboard_check_pressed(vk_enter))$(13_10)			{$(13_10)				if(messageCounter + 1) <= (ds_list_size(ds_messages) - 1)$(13_10)				{$(13_10)					messageCounter++;$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					playerTurn = !playerTurn;$(13_10)					messageCounter = 0;$(13_10)				$(13_10)					if(ds_exists(ds_messages, ds_type_list))$(13_10)					{$(13_10)						ds_list_destroy(ds_messages);$(13_10)					}$(13_10)					showBattleText = false;$(13_10)				}$(13_10)				messageTimer = 0;$(13_10)			$(13_10)				//check for player death$(13_10)				if(global.playerHP <= 0)$(13_10)				{$(13_10)					ds_messages[| 2] = "Player dies...";$(13_10)					playerDead = true;$(13_10)				}$(13_10)				$(13_10)				//check for opponent death$(13_10)				if(global.opponentHP <= 0)$(13_10)				{$(13_10)					ds_messages[| 2] = "Player wins the battle!";$(13_10)					battle = false;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)$(13_10)	#endregion$(13_10)$(13_10)	if(playerDead)$(13_10)	{$(13_10)		battle = false;$(13_10)		room_goto(Dead);$(13_10)	}$(13_10)$(13_10)	#region ENEMY TURN$(13_10)$(13_10)	if(!playerTurn) && (!showBattleText)$(13_10)	{$(13_10)		enemyTimer++;$(13_10)	$(13_10)		if(enemyTimer >= timeTillEnemyAttacks)$(13_10)		{$(13_10)		$(13_10)			if(!ds_exists(ds_messages, ds_type_list))$(13_10)			{$(13_10)				ds_messages = ds_list_create();$(13_10)			}$(13_10)			messageCounter = 0;$(13_10)			showBattleText = true;$(13_10)			enemyTimer = 0;$(13_10)		$(13_10)			ds_messages[| 0] = "Enemy Driver ATTACKS";$(13_10)			battleOption = 0;$(13_10)		$(13_10)			roll = choose("Hit", "Misses");$(13_10)		$(13_10)			if(roll == "Hit")$(13_10)			{$(13_10)				enDMG = irandom_range(10, 30);$(13_10)				if (defendItem == true)$(13_10)				{$(13_10)					ds_messages[| 1] = "But it was countered with E-BRAKE!";$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)				ds_messages[| 1] = "And hits for " + string(enDMG) + " damage!";$(13_10)				global.playerHP -= enDMG;$(13_10)				}$(13_10)				defendItem = false;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				ds_messages[| 1] = "But misses!";$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	#endregion$(13_10)$(13_10)if(victory == true)$(13_10){$(13_10)	room_goto(Victory);$(13_10)}"
// STEP CODE
if(battle == true)
{

	#region SELECT OPTION

	if(playerTurn) && (!showBattleText)
	{
	
		if (!showAttackOptions) && (!showItemsOptions)//show turn options
		{
			if(keyboard_check_pressed(vk_down))
			{
				if(selected_option + 1) <= (array_length_1d(a_text) - 1)
				{
					selected_option ++;
				}
				else
				{
					selected_option = 0;
				}
			}

			if(keyboard_check_pressed(vk_up))
			{
				if((selected_option - 1) >= 0)
				{
					selected_option--;
				}
				else
				{
					selected_option = array_length_1d(a_text) - 1;
				}
			}
		
				//if option is pressed
				if(keyboard_check_pressed(vk_enter))
				{
					messageCounter = 0;
					if(!ds_exists(ds_messages, ds_type_list))//if list doesn't exist, make it
					{
						ds_messages = ds_list_create();
					}
		
					//Attack
					if(selected_option == 0)
					{
						//if selected option is attack show attack menu
						showAttackOptions = true;
						battleOption = 0;
					}
					//Defend
					if(selected_option == 1)
					{
						ds_messages[| 0] = "Player drives DEFENSIVELY!";
						battleOption = 1;
						enDMG = irandom_range(1, 10); //opponent attack when driving defensively
					}
					//Item
					if(selected_option == 2)
					{
						showItemsOptions = true;
						battleOption = 2;
					}
				
					//Give up
					if(selected_option == 3)
					{
						ds_messages[| 0] = "Player GIVES UP!";
						battleOption = 3;
					}
					//if attack wasn't selected show the battle text in region MESSAGES
					if (selected_option != 0) && (selected_option != 2)
					{
						showBattleText = true;
					}
				}
		}
		
		else
		{
			//SHOW ATTACK MENU
			if (showAttackOptions)
			{
				//show different attacks in the attack option
			
				if(keyboard_check_pressed(vk_down))
				{
					if(attack_option + 1) <= (array_length_1d(a_attack_text) - 1)
					{
						attack_option ++;
					}
					else
					{
						attack_option = 0;
					}
				}
			

				if(keyboard_check_pressed(vk_up))
				{
					if((attack_option - 1) >= 0)
					{
						attack_option--;
					}
					else
					{
						attack_option = array_length_1d(a_attack_text) - 1;
					}
				}
				
				//CHOOSE ATTACK
				if (keyboard_check_pressed(vk_enter))
				{
					enDMG = scr_healHurt(attack_option);
					//ATTACK 1
					if (attack_option == 0)
					{
						ds_messages [| 0] = "Player attacks with " + a_attack_text[attack_option];
						ds_messages [| 1] = "and deals " + string(enDMG) + "dmg!";
						global.opponentHP += enDMG;
					}
					//ATTACK 2
					if (attack_option == 1)
					{
						ds_messages [| 0] = "Player attacks with " + a_attack_text[attack_option];
						ds_messages [| 1] = "and deals " + string(enDMG) + "dmg!";
						global.opponentHP += enDMG;
					}
					//ATTACK 3
					if (attack_option == 2)
					{
						ds_messages [| 0] = "Player attacks with " + a_attack_text[attack_option];
						ds_messages [| 1] = "and deals " + string(enDMG) + "dmg!";
						global.opponentHP += enDMG;
					}
					
					//CONTINUE BATTLE
					showBattleText = true;
					showAttackOptions = false;
				}
			}
		
			//SHOW ITEM OPTIONS
			if (showItemsOptions)
			{
				//show different items in the item option
			
				if(keyboard_check_pressed(vk_down))
				{
					if(item_option + 1) <= (array_length_1d(a_item_text) - 1)
					{
						item_option ++;
					}
					else
					{
						item_option = 0;
					}
				}
			

				if(keyboard_check_pressed(vk_up))
				{
					if((item_option - 1) >= 0)
					{
						item_option--;
					}
					else
					{
						item_option = array_length_1d(a_item_text) - 1;
					}
				}
				
				//CHOOSE ITEM
				if (keyboard_check_pressed(vk_enter))
				{
					enItem = scr_itemUse(item_option);
					//ITEM 1
					if (item_option == 0)
					{
						ds_messages [| 0] = "Player attacks with " + a_item_text[item_option];
						ds_messages [| 1] = "and deals " + string(enItem) + "dmg!";
					}
					//ITEM 2
					if (item_option == 1)
					{
						ds_messages [| 0] = "Player pulls the " + a_item_text[item_option];
						ds_messages [| 1] = "and counters the dmg!";
						defendItem = true;
					}
					//ITEM 3 HEAL
					if (item_option == 2)
					{
						ds_messages [| 0] = "Player calls upon " + a_item_text[item_option];
						ds_messages [| 1] = "and heals for " + string(enItem) + "points!";
						global.playerHP += enItem;
					}
					
					//CONTINUE BATTLE
					showBattleText = true;
					showItemsOptions = false;
					showAttackOptions = false;
				}
			}
		}
			
	}
}

	#endregion



	#region MESSAGES

	//cycle through messages
	if(showBattleText)
	{
		messageTimer++;
	
		if(messageTimer >= timeBeforeButtonAccepted)
		{
			if(keyboard_check_pressed(vk_enter))
			{
				if(messageCounter + 1) <= (ds_list_size(ds_messages) - 1)
				{
					messageCounter++;
				}
				else
				{
					playerTurn = !playerTurn;
					messageCounter = 0;
				
					if(ds_exists(ds_messages, ds_type_list))
					{
						ds_list_destroy(ds_messages);
					}
					showBattleText = false;
				}
				messageTimer = 0;
			
				//check for player death
				if(global.playerHP <= 0)
				{
					ds_messages[| 2] = "Player dies...";
					playerDead = true;
				}
				
				//check for opponent death
				if(global.opponentHP <= 0)
				{
					ds_messages[| 2] = "Player wins the battle!";
					battle = false;
				}
			}
		}
	}

	#endregion

	if(playerDead)
	{
		battle = false;
		room_goto(Dead);
	}

	#region ENEMY TURN

	if(!playerTurn) && (!showBattleText)
	{
		enemyTimer++;
	
		if(enemyTimer >= timeTillEnemyAttacks)
		{
		
			if(!ds_exists(ds_messages, ds_type_list))
			{
				ds_messages = ds_list_create();
			}
			messageCounter = 0;
			showBattleText = true;
			enemyTimer = 0;
		
			ds_messages[| 0] = "Enemy Driver ATTACKS";
			battleOption = 0;
		
			roll = choose("Hit", "Misses");
		
			if(roll == "Hit")
			{
				enDMG = irandom_range(10, 30);
				if (defendItem == true)
				{
					ds_messages[| 1] = "But it was countered with E-BRAKE!";
				}
				else
				{
				ds_messages[| 1] = "And hits for " + string(enDMG) + " damage!";
				global.playerHP -= enDMG;
				}
				defendItem = false;
			}
			else
			{
				ds_messages[| 1] = "But misses!";
			}
		}
	}
	#endregion

if(victory == true)
{
	room_goto(Victory);
}