/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12A1C20A
/// @DnDArgument : "code" "//-------------------------------------$(13_10)// Variables that change the appearence$(13_10)//-------------------------------------$(13_10)$(13_10)//How many steps that the cursor should be visible/invisible$(13_10)cursorBlinkTime = room_speed / 2;$(13_10)//The color of the text$(13_10)textColor = c_black;$(13_10)//The transparancy of the text$(13_10)textAlpha = 1;$(13_10)//What text the textbox should have when created$(13_10)text = "";$(13_10)secret="";$(13_10)//The transparancy of the selected area$(13_10)selectionAlpha = .4;$(13_10)//The color of the selected area$(13_10)selectionColor = c_blue;$(13_10)//The transparancy of the selected area when the textbox loses focus$(13_10)selectionUnfocusAlpha = .4;$(13_10)//The color of the selected area when the textbox loses focus$(13_10)selectionUnfocusColor = c_gray;$(13_10)$(13_10)//----------------------------------------$(13_10)// Variables that needs to be initialized $(13_10)//----------------------------------------$(13_10)$(13_10)selected = false;$(13_10)showCursor = false;$(13_10)cursor = 0;$(13_10)cursorPosition = 0;$(13_10)selectedStart = -1;$(13_10)keyDownTime = 0;$(13_10)keyDownPrevious = 0;$(13_10)offset = 0;$(13_10)dragSelecting = false;$(13_10)surf = surface_create(x + sprite_width, y + sprite_height);$(13_10)$(13_10)"
//-------------------------------------
// Variables that change the appearence
//-------------------------------------

//How many steps that the cursor should be visible/invisible
cursorBlinkTime = room_speed / 2;
//The color of the text
textColor = c_black;
//The transparancy of the text
textAlpha = 1;
//What text the textbox should have when created
text = "";
secret="";
//The transparancy of the selected area
selectionAlpha = .4;
//The color of the selected area
selectionColor = c_blue;
//The transparancy of the selected area when the textbox loses focus
selectionUnfocusAlpha = .4;
//The color of the selected area when the textbox loses focus
selectionUnfocusColor = c_gray;

//----------------------------------------
// Variables that needs to be initialized 
//----------------------------------------

selected = false;
showCursor = false;
cursor = 0;
cursorPosition = 0;
selectedStart = -1;
keyDownTime = 0;
keyDownPrevious = 0;
offset = 0;
dragSelecting = false;
surf = surface_create(x + sprite_width, y + sprite_height);