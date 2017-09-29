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
    padding=10;
    max_width=view_wview[0]/3.33;
    text=argument0;
    font=fnt_base;
    
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width=string_width_ext(text,font_size+(font_size/2), max_width);
    text_height=string_height_ext(text,font_size+(font_size/2), max_width);
    
    box_width=text_width + (padding * 2);
    box_height=text_height + (padding * 2);
    
    if(argument3 == obj_text)
    {
        with(obj_text)
        {
            y -= (box_height + (padding * 2));
        }
    }
}

