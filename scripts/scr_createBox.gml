//scr_createBox(String, ySpawn, objType)

var messageID = instance_create(0, argument1, argument2);
draw_set_font(global.font);

with(messageID) {
    self.text = argument0;
    self.box_width = scr_boxWidth(text, argument3);
    self.box_height = scr_boxHeight(text, argument3);

    return self.id;
}

