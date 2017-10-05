//Not needed
//global.newMessage.transition = false;
var newRoom = room_duplicate(rom_base);
room_goto(newRoom);

global.ending = argument0;
instance_create(0, 0, obj_ending);
