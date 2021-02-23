globalvar ga_attack;
globalvar ga_item;
//Create Attack Array

ga_attack[0,0] = "SLAM";
ga_attack[0,1] = 5; //Min damage
ga_attack[0,2] = 20; //Max damage
ga_attack[0,3] = 2; //Attack point used per heal

ga_attack[1, 0] = "DRIFT";
ga_attack[1, 1] = 8;
ga_attack[1, 2] = 8;
ga_attack[1, 3] = 5;

ga_attack[2, 0] = "SPIKES";
ga_attack[2, 1] = 1;
ga_attack[2, 2] = 30;
ga_attack[2, 3] = 5;

//Create Item Array
ga_item[0,0] = "NITROUS";
ga_item[0,1] = 5; //Min damage
ga_item[0,2] = 20; //Max damage
ga_item[0,3] = 2; //Attack point used per heal

ga_item[1, 0] = "E-BRAKE";
ga_item[1, 1] = 8;
ga_item[1, 2] = 8;
ga_item[1, 3] = 5;

ga_item[2, 0] = "ROBO MECHANIC";
ga_item[2, 1] = 1;//Min heal
ga_item[2, 2] = 30;//Max Heal
ga_item[2, 3] = 5;