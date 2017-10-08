//Not needed
//global.newMessage.transition = false;
var newRoom = room_duplicate(rom_ending);
//room_set_background_colour(newRoom, c_white, true);

Positive = "Positive";
Block = "Block";
Broke = "Broke";
Dead = "Dead";
Murdered = "Murdered";
Negative = "Negative";


global.ending = string(argument0);
room_goto(newRoom);

