//Not needed
//global.newMessage.transition = false;
var newRoom = room_duplicate(rom_base);
room_instance_add(newRoom, 0, 0, obj_ending);
room_set_background_colour(newRoom, c_white, true);

global.ending = argument0;

room_goto(newRoom);
