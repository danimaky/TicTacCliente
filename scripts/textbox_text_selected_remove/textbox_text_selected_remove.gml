/// @description textbox_text_selected_remove(textbox)
/// @function textbox_text_selected_remove
/// @param textbox
if(cursor < selectedStart)
    text = string_delete(text, cursor + 1, selectedStart - cursor);
else
{
    text = string_delete(text, selectedStart + 1, cursor - selectedStart);
    cursor = selectedStart;
}
if(cursor > string_length(text))
    cursor = string_length(text);
selectedStart = -1;
