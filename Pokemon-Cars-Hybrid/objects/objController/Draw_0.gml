/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 7955598E
/// @DnDApplyTo : {objEvo}
/// @DnDArgument : "x1" "objEvo.x-50"
/// @DnDArgument : "y1" "objEvo.y-50"
/// @DnDArgument : "x2" "objEvo.x+150"
/// @DnDArgument : "y2" "objEvo.y-35"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FFCCCCCC"
/// @DnDArgument : "maxcol" "$FF00FF04"
with(objEvo) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(objEvo.x-50, objEvo.y-50, objEvo.x+150, objEvo.y-35, __dnd_health, $FFFFFFFF, $FFCCCCCC & $FFFFFF, $FF00FF04 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));
}

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 3C8A6B74
/// @DnDApplyTo : {objSTI}
/// @DnDArgument : "x1" "objSTI.x-50"
/// @DnDArgument : "y1" "objSTI.y+150"
/// @DnDArgument : "x2" "objSTI.x+150"
/// @DnDArgument : "y2" "objSTI.y+135"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FFCCCCCC"
/// @DnDArgument : "maxcol" "$FF00FF04"
with(objSTI) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(objSTI.x-50, objSTI.y+150, objSTI.x+150, objSTI.y+135, __dnd_health, $FFFFFFFF, $FFCCCCCC & $FFFFFF, $FF00FF04 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));
}