/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 019385BF
/// @DnDArgument : "code" "if(selected && dragSelecting)$(13_10){$(13_10)    if(selectedStart == -1)$(13_10)        textbox_text_selected_set(id, cursor, textbox_get_cursor_at(id, mouse_x));$(13_10)    else$(13_10)        textbox_text_selected_set(id, selectedStart, textbox_get_cursor_at(id, mouse_x));$(13_10)}$(13_10)$(13_10)"
if(selected && dragSelecting)
{
    if(selectedStart == -1)
        textbox_text_selected_set(id, cursor, textbox_get_cursor_at(id, mouse_x));
    else
        textbox_text_selected_set(id, selectedStart, textbox_get_cursor_at(id, mouse_x));
}