function scr_healHurt(argument0)
{
	option = argument0;

	minVal = ga_attack[option, 1];
	maxVal = ga_attack[option, 2];

	totalVal = irandom_range(minVal, maxVal);

	return(totalVal);
	
}