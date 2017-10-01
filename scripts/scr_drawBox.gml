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
    text = argument0;
    
    draw_set_font(font);
    box_width=scr_boxWidth(text);
    box_height=scr_boxHeight(text);
    
    return self.id;
}

