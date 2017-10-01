var messageID = instance_create(0, argument1, argument0);
with(messageID) {
    self.text = other.str;
    self.box_width = scr_boxWidth(text);
    self.box_height = scr_boxHeight(text);

    return self.id;
}

