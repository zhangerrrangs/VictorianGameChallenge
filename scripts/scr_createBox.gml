//scr_createBox(String, ySpawn, objType)

var messageID = instance_create(0, argument1, argument2);
with(messageID) {
    self.text = argument0;
    self.box_width = scr_boxWidth(text);
    self.box_height = scr_boxHeight(text);

    return self.id;
}

