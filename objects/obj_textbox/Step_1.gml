//Calculate offset
cursorPosition = x + string_width(string_hash_to_newline(string_copy(text, 1, cursor))) + 2 - offset;
if(cursorPosition < x)
{
    cursorPosition = x + 6;
    offset = string_width(string_hash_to_newline(string_copy(text, 1, cursor)));
}
else if(cursorPosition >= x + sprite_width)
{
    cursorPosition = x + sprite_width - 4;
    offset = string_width(string_hash_to_newline(string_copy(text, 1, cursor))) - sprite_width + 6;
}
if(offset < 0)
{
    offset = 0;
    cursorPosition = x + string_width(string_hash_to_newline(string_copy(text, 1, cursor))) + 2;
}

