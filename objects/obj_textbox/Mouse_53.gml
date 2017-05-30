/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10403465
/// @DnDArgument : "code" "if(mouse_x >= x && mouse_y >= y && mouse_x < x + sprite_width && mouse_y < y + sprite_height)$(13_10){$(13_10)    selected = true;$(13_10)    showCursor = true;$(13_10)    alarm[0] = cursorBlinkTime;$(13_10)    keyboard_string = "";$(13_10)    selectedStart = -1;$(13_10)    cursor = textbox_get_cursor_at(id, mouse_x);$(13_10)    dragSelecting = true;$(13_10)}$(13_10)else$(13_10){$(13_10)    selected = false;$(13_10)    showCursor = false;$(13_10)    alarm[0] = -1;$(13_10)    dragSelecting = false;$(13_10)}$(13_10)$(13_10)"
if(mouse_x >= x && mouse_y >= y && mouse_x < x + sprite_width && mouse_y < y + sprite_height)
{
    selected = true;
    showCursor = true;
    alarm[0] = cursorBlinkTime;
    keyboard_string = "";
    selectedStart = -1;
    cursor = textbox_get_cursor_at(id, mouse_x);
    dragSelecting = true;
}
else
{
    selected = false;
    showCursor = false;
    alarm[0] = -1;
    dragSelecting = false;
}