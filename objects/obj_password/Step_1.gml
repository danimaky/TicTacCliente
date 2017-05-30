/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7834141F
/// @DnDArgument : "code" "//Calculate offset$(13_10)cursorPosition = x + string_width(string_hash_to_newline(string_copy(text, 1, cursor))) + 2 - offset;$(13_10)if(cursorPosition < x)$(13_10){$(13_10)    cursorPosition = x + 6;$(13_10)    offset = string_width(string_hash_to_newline(string_copy(text, 1, cursor)));$(13_10)}$(13_10)else if(cursorPosition >= x + sprite_width)$(13_10){$(13_10)    cursorPosition = x + sprite_width - 4;$(13_10)    offset = string_width(string_hash_to_newline(string_copy(text, 1, cursor))) - sprite_width + 6;$(13_10)}$(13_10)if(offset < 0)$(13_10){$(13_10)    offset = 0;$(13_10)    cursorPosition = x + string_width(string_hash_to_newline(string_copy(text, 1, cursor))) + 2;$(13_10)}$(13_10)$(13_10)"
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