/// @description textbox_get_cursor_at(textbox, xCoordinate)
/// @function textbox_get_cursor_at
/// @param textbox
/// @param  xCoordinate
var X = argument1 - argument0.x + offset;
with(argument0)
{
    for(var i = 1; i <= string_length(text); i ++)
    {
        if(string_width(string_hash_to_newline(string_copy(text, 1, i))) > X)
        {
            return i - 1;
        }
    }
    return string_length(text);
}
