//scr_text("Text",x,y);
if(global.speaker == "player")
{
    txt = instance_create(100,700,obj_text);
} else if(global.speaker == "other"){
    txt = instance_create(300,700,obj_text);
}
//txt = instance_create(argument[1],argument[2],obj_text);
with (txt)
{
    padding = 10;
    max_width = view_wview[0]/3.33;
    text = argument[0];
    font = fnt_base;
    
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2), max_width);
    text_height = string_height_ext(text,font_size+(font_size/2), max_width);
    
    box_width = text_width + (padding * 2);
    box_height = text_height + (padding * 2);
    
    with(obj_text)
    {
        y -= (box_height + (padding * 2));
    }
}

