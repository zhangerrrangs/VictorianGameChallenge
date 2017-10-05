//scr_addMessage(str, object);
with(obj_messageOther) {
    y -= (scr_boxHeight(argument0, global.max_width) + global.padding * 4);
    //y -= scr_boxHeight(argument0);
    //show_debug_message(scr_boxHeight(other.str));
}

with(obj_messagePlayer) {
    y -= (scr_boxHeight(argument0, global.max_width) + global.padding * 4);
    //y -= scr_boxHeight(argument0);
    //show_debug_message(scr_boxHeight(other.str));
}
