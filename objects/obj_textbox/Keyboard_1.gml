/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F0DDA71
/// @DnDArgument : "code" "if(selected)$(13_10){$(13_10)    if(keyboard_lastkey == keyDownPrevious)$(13_10)    {$(13_10)        keyDownTime += 1;$(13_10)    }$(13_10)    else$(13_10)    {$(13_10)        keyDownTime = 0;$(13_10)    }$(13_10)    if(keyboard_check(vk_backspace) && string_length(text) > 0 && (keyDownTime == 0 || keyDownTime >= room_speed / 2))$(13_10)    {$(13_10)        if(selectedStart != -1)$(13_10)            textbox_text_selected_remove(id);$(13_10)        else$(13_10)        {$(13_10)            text = string_delete(text, cursor, 1);$(13_10)            cursor -= 1;$(13_10)        }   $(13_10)        showCursor = true;$(13_10)        alarm[0] = cursorBlinkTime;$(13_10)    }$(13_10)    else if(keyboard_check(vk_delete) && string_length(text) > 0 && (keyDownTime == 0 || keyDownTime >= room_speed / 2))$(13_10)    {$(13_10)        if(selectedStart != -1)$(13_10)            textbox_text_selected_remove(id);$(13_10)        else$(13_10)            text = string_delete(text, cursor + 1, 1);$(13_10)            $(13_10)        showCursor = true;$(13_10)        alarm[0] = cursorBlinkTime;$(13_10)    }$(13_10)    else if(keyboard_check(vk_left) && (keyDownTime == 0 || keyDownTime >= room_speed / 2))$(13_10)    {$(13_10)        if(keyboard_check(vk_shift))$(13_10)        {$(13_10)            if(selectedStart == -1)$(13_10)                selectedStart = cursor;$(13_10)        }$(13_10)        else$(13_10)            selectedStart = -1;$(13_10)            $(13_10)        if(keyboard_check(vk_control))$(13_10)        {$(13_10)            var temp = cursor;$(13_10)            cursor = string_get_highest_index(text, " ", cursor);$(13_10)            if(cursor > temp)$(13_10)                cursor = 0;$(13_10)        }$(13_10)        cursor -= cursor > 0;$(13_10)        showCursor = true;$(13_10)        alarm[0] = cursorBlinkTime;$(13_10)    }$(13_10)    else if(keyboard_check(vk_right) && (keyDownTime == 0 || keyDownTime >= room_speed / 2))$(13_10)    {$(13_10)        if(keyboard_check(vk_shift))$(13_10)        {$(13_10)            if(selectedStart == -1)$(13_10)                selectedStart = cursor;$(13_10)        }$(13_10)        else$(13_10)            selectedStart = -1;$(13_10)        if(keyboard_check(vk_control))$(13_10)        {$(13_10)            var temp = cursor;$(13_10)            cursor = string_get_lowest_index(text, " ", cursor + 1) - 1;$(13_10)            if(cursor < temp)$(13_10)                cursor = string_length(text);$(13_10)        }$(13_10)        cursor += cursor < string_length(text);$(13_10)        showCursor = true;$(13_10)        alarm[0] = cursorBlinkTime;$(13_10)    }$(13_10)    else if(keyboard_check(vk_control) && keyboard_check(ord("C")) && selectedStart != -1)$(13_10)    {$(13_10)        clipboard_set_text(textbox_text_selected_get(id));$(13_10)    }$(13_10)    else if(keyboard_check(vk_control) && keyboard_check(ord("X")) && selectedStart != -1)$(13_10)    {$(13_10)        clipboard_set_text(textbox_text_selected_get(id));$(13_10)        textbox_text_selected_remove(id);$(13_10)    }$(13_10)    else if(keyboard_check(vk_control) && keyboard_check(ord("V")) && clipboard_has_text() && keyDownTime == 0)$(13_10)    {$(13_10)        if(selectedStart != -1)$(13_10)            textbox_text_selected_remove(id);$(13_10)        textbox_text_insert(id, clipboard_get_text());$(13_10)    }$(13_10)    else if(keyboard_check(vk_control) && keyboard_check(ord("A")) && string_length(text) > 0)$(13_10)    {$(13_10)        cursor = string_length(text);$(13_10)        selectedStart = 0;$(13_10)    }$(13_10)    else if(keyboard_check(vk_end))$(13_10)    {$(13_10)        if(keyboard_check(vk_shift))$(13_10)        {$(13_10)            if(selectedStart == -1)$(13_10)                selectedStart = cursor;$(13_10)        }$(13_10)        else$(13_10)            selectedStart = -1;$(13_10)        cursor = string_length(text);$(13_10)    }$(13_10)    else if(keyboard_check(vk_home))$(13_10)    {$(13_10)        if(keyboard_check(vk_shift))$(13_10)        {$(13_10)            if(selectedStart == -1)$(13_10)                selectedStart = cursor;$(13_10)        }$(13_10)        else$(13_10)            selectedStart = -1;$(13_10)        cursor = 0;$(13_10)    }$(13_10)    $(13_10)    else if(keyboard_string != "")$(13_10)    {$(13_10)        if(selectedStart != -1)$(13_10)            textbox_text_selected_remove(id);$(13_10)        if(keyboard_string == "#")$(13_10)            textbox_text_insert(id, "\\#");$(13_10)        else$(13_10)            textbox_text_insert(id, keyboard_string);$(13_10)        keyboard_string = "";$(13_10)    }$(13_10)    if(keyboard_lastkey != vk_lshift && keyboard_lastkey != vk_rshift && keyboard_lastkey != vk_lcontrol && keyboard_lastkey != vk_rcontrol)$(13_10)        keyDownPrevious = keyboard_lastkey;$(13_10)}$(13_10)$(13_10)"
if(selected)
{
    if(keyboard_lastkey == keyDownPrevious)
    {
        keyDownTime += 1;
    }
    else
    {
        keyDownTime = 0;
    }
    if(keyboard_check(vk_backspace) && string_length(text) > 0 && (keyDownTime == 0 || keyDownTime >= room_speed / 2))
    {
        if(selectedStart != -1)
            textbox_text_selected_remove(id);
        else
        {
            text = string_delete(text, cursor, 1);
            cursor -= 1;
        }   
        showCursor = true;
        alarm[0] = cursorBlinkTime;
    }
    else if(keyboard_check(vk_delete) && string_length(text) > 0 && (keyDownTime == 0 || keyDownTime >= room_speed / 2))
    {
        if(selectedStart != -1)
            textbox_text_selected_remove(id);
        else
            text = string_delete(text, cursor + 1, 1);
            
        showCursor = true;
        alarm[0] = cursorBlinkTime;
    }
    else if(keyboard_check(vk_left) && (keyDownTime == 0 || keyDownTime >= room_speed / 2))
    {
        if(keyboard_check(vk_shift))
        {
            if(selectedStart == -1)
                selectedStart = cursor;
        }
        else
            selectedStart = -1;
            
        if(keyboard_check(vk_control))
        {
            var temp = cursor;
            cursor = string_get_highest_index(text, " ", cursor);
            if(cursor > temp)
                cursor = 0;
        }
        cursor -= cursor > 0;
        showCursor = true;
        alarm[0] = cursorBlinkTime;
    }
    else if(keyboard_check(vk_right) && (keyDownTime == 0 || keyDownTime >= room_speed / 2))
    {
        if(keyboard_check(vk_shift))
        {
            if(selectedStart == -1)
                selectedStart = cursor;
        }
        else
            selectedStart = -1;
        if(keyboard_check(vk_control))
        {
            var temp = cursor;
            cursor = string_get_lowest_index(text, " ", cursor + 1) - 1;
            if(cursor < temp)
                cursor = string_length(text);
        }
        cursor += cursor < string_length(text);
        showCursor = true;
        alarm[0] = cursorBlinkTime;
    }
    else if(keyboard_check(vk_control) && keyboard_check(ord("C")) && selectedStart != -1)
    {
        clipboard_set_text(textbox_text_selected_get(id));
    }
    else if(keyboard_check(vk_control) && keyboard_check(ord("X")) && selectedStart != -1)
    {
        clipboard_set_text(textbox_text_selected_get(id));
        textbox_text_selected_remove(id);
    }
    else if(keyboard_check(vk_control) && keyboard_check(ord("V")) && clipboard_has_text() && keyDownTime == 0)
    {
        if(selectedStart != -1)
            textbox_text_selected_remove(id);
        textbox_text_insert(id, clipboard_get_text());
    }
    else if(keyboard_check(vk_control) && keyboard_check(ord("A")) && string_length(text) > 0)
    {
        cursor = string_length(text);
        selectedStart = 0;
    }
    else if(keyboard_check(vk_end))
    {
        if(keyboard_check(vk_shift))
        {
            if(selectedStart == -1)
                selectedStart = cursor;
        }
        else
            selectedStart = -1;
        cursor = string_length(text);
    }
    else if(keyboard_check(vk_home))
    {
        if(keyboard_check(vk_shift))
        {
            if(selectedStart == -1)
                selectedStart = cursor;
        }
        else
            selectedStart = -1;
        cursor = 0;
    }
    
    else if(keyboard_string != "")
    {
        if(selectedStart != -1)
            textbox_text_selected_remove(id);
        if(keyboard_string == "#")
            textbox_text_insert(id, "\\#");
        else
            textbox_text_insert(id, keyboard_string);
        keyboard_string = "";
    }
    if(keyboard_lastkey != vk_lshift && keyboard_lastkey != vk_rshift && keyboard_lastkey != vk_lcontrol && keyboard_lastkey != vk_rcontrol)
        keyDownPrevious = keyboard_lastkey;
}