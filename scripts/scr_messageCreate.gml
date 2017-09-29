str="";

var p=string_pos("|",line[on0,on1]);

if p=0 {
    str=line[on0,on1]
} else {
    str=string_copy(line[on0,on1],1,p-1)
}
show_debug_message(str);
//show_debug_message(string(on0) + " " + string(on1));
//Move global if into just the variable
if(global.playerSpeaking)
{
    var xTextSpawn = 100;
} else {
    var xTextSpawn = 300;
}

scr_drawBox(str, xTextSpawn, yTextSpawn, obj_message);

with(obj_message) {
    y -= (scr_boxHeight(other.str) + (padding * 2));
    //show_debug_message(scr_boxHeight(other.str));
}

instance_destroy(obj_option);

if (ds_exists(op0[on0,on1],ds_type_list) && ds_list_size(op0[on0,on1])>0){
    
    optionSize[0] = 0;
    optionSpace = view_hview - (view_hview[0]/2);
    var listSize = ds_list_size(op0[on0,on1]);
    
    optionSpace /= listSize;
    
    for(i=0;i<listSize;i++) {
        var txt = ds_list_find_value(op0[on0,on1],i);
        
        yPosition = (view_hview - (view_hview[0]/2)) + (optionSpace * i);
        //Got to add up the sizes of previous options since they vary along the way
        //Please make this neater
        for(j=0;j<i;j++) {
            yPosition += optionSize[@ j];
        }
        scr_drawBox(txt, view_wview[0]/2, yPosition, obj_option);
    }
    
    for(i=0;i<listSize;i++){
        //Execute the dialog jumping!
        //view_wview[0] = view_wview[0]/3.333
        //scr_text(ds_list_find_value(op0[on0,on1],i),font_size+(font_size/2), max_width)
        //scr_createMessage(ds_list_find_value(op0[on0,on1],i), 0, 0, obj_message);
        with(obj_option) {
            self.optionID = other.i;
            other.optionSize[other.i] = self.box_height
            other.optionSpace -= self.box_height;
        }
    }
    
} else {
    scrNPCDialogContinue();
    scr_messageCreate();
}
/*if p=0{
    //Draw without scripts
    var messageID = scr_createMessage(str, xTextSpawn, yTextSpawn, obj_message);
    
} else {
    //Draws the line with scripts
    var messageID = scr_createMessage(string_copy(str,1,p-1), xTextSpawn, yTextSpawn, obj_message);
}*/

