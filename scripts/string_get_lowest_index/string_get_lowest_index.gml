/// @description string_get_lowest_index(string, find, lowest)
/// @function string_get_lowest_index
/// @param string
/// @param  find
/// @param  lowest

var m = string_length(argument0);
for(var i = argument2; i <= m; i ++)
{
    if(string_char_at(argument0, i) == argument1)
    {
        if(i == m)
            return i;
        else
        {
            if(string_char_at(argument0, i + 1) != argument1)
                return i;
        }
    }
}
return m;
