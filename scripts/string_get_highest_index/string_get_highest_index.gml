/// @description string_get_highest_index(string, find, highest)
/// @function string_get_highest_index
/// @param string
/// @param  find
/// @param  highest

for(var i = min(string_length(argument0), argument2); i >= 1; i --)
{
    if(string_char_at(argument0, i) == argument1)
    {
        if(i == 1)
            return i;
        else
        {
            if(string_char_at(argument0, i - 1) != argument1)
                return i;
        }
    }
}
return 0;
