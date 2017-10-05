//scr_createBox(String, ySpawn, objType)

var messageID = instance_create(0, argument1, argument2);
draw_set_font(global.font);

with(messageID) {
    self.text = argument0;
    self.box_width = scr_boxWidth(text, global.max_width);
    self.box_height = scr_boxHeight(text, global.max_width);

    return self.id;
}

