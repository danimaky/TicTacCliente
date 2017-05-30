if(selected && dragSelecting)
{
    if(selectedStart == -1)
        textbox_text_selected_set(id, cursor, textbox_get_cursor_at(id, mouse_x));
    else
        textbox_text_selected_set(id, selectedStart, textbox_get_cursor_at(id, mouse_x));
}

