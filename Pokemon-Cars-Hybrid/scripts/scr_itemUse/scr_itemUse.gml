
function scr_itemUse(argument0)
{
	option = argument0;

	minVal = ga_item[option, 1];
	maxVal = ga_item[option, 2];

	totalVal = irandom_range(minVal, maxVal);

	return(totalVal);
	
}