//scr_text("Text",x,y,object);
/*
if(global.playerSpeaking)
{
    txt=instance_create(100,700,obj_text);
} else {
    txt=instance_create(300,700,obj_text);
}
*/

txt = instance_create(argument1,argument2,argument3);

with (txt)
{
    padding = other.padding;
    max_width = other.max_width;
    text = argument0;
    font = other.font;
    
    font_size = other.font_size;
    
    icon_size = ((font_size/2) + (padding * 2));

    draw_set_font(font);
    box_width=scr_boxWidth(text);
    box_height=scr_boxHeight(text);
    
    return self.id;
}

