//scr_addMessage(str, object);
with(obj_messageOther) {
    y -= (scr_boxHeight(argument0) + (global.padding * 4));
    //show_debug_message(scr_boxHeight(other.str));
}

with(obj_messagePlayer) {
    y -= (scr_boxHeight(argument0) + (global.padding * 4));
    //show_debug_message(scr_boxHeight(other.str));
}
