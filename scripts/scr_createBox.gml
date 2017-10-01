with(messageID) {
    self.text = other.str;
    self.box_width = scr_boxWidth(text);
    self.box_height = scr_boxHeight(text);

    return self.id;
}

