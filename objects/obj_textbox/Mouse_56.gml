/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04236C48
/// @DnDArgument : "code" "if(selected && dragSelecting)$(13_10)    if(selectedStart == cursor)$(13_10)        selectedStart = -1;$(13_10)dragSelecting = false;$(13_10)$(13_10)"
if(selected && dragSelecting)
    if(selectedStart == cursor)
        selectedStart = -1;
dragSelecting = false;