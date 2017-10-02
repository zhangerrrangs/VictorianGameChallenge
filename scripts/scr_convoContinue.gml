str="";

//lastLine = line[on0,on1];

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
    //var xTextSpawn = view_wview[0];
    var objType = obj_messagePlayer;
} else {
    //var xTextSpawn = 0;
    var objType = obj_messageOther;
}

global.newMessage = scr_createBox(objType, global.yTextSpawn);
global.newMessage.convoID = id;

with(obj_messageOther) {
    y -= (scr_boxHeight(other.str) + (global.padding * 4));
    //show_debug_message(scr_boxHeight(other.str));
}

with(obj_messagePlayer) {
    y -= (scr_boxHeight(other.str) + (global.padding * 4));
    //show_debug_message(scr_boxHeight(other.str));
}

instance_destroy(obj_option);
    
if (ds_exists(op0[on0,on1],ds_type_list) && ds_list_size(op0[on0,on1])>0){
    global.newMessage.transition = false;
    
    optionSizes[0] = 0;
    var listSize = ds_list_size(op0[on0,on1]);
    var optionSpaceStart = round(view_hview[0] - global.optionBoxSize);
    optionSpaceLeft = global.optionBoxSize;
    
    for(i=0;i<listSize;i++) {
        var txt = ds_list_find_value(op0[on0,on1],i);
        optionSpaceLeft -= scr_boxHeight(txt);
        optionSizes[i] = scr_boxHeight(txt);
    }
    
    var optionSpacing = optionSpaceLeft/(listSize + 1);
    
    for(i=0;i<listSize;i++) {
        var txt = ds_list_find_value(op0[on0,on1],i);
        var yPosition = optionSpaceStart + (optionSpacing * (i + 1));
        
        for(j=0;j<i;j++) {
            yPosition += optionSizes[@ j];
        }
        
        var optionID = scr_createBox(obj_option, yPosition);
        
        with(optionID) {
            self.convoID = other.id
            self.optionID = other.i;
        }
    }
}

/*if p=0{
    //Draw without scripts
    var messageID = scr_createMessage(str, xTextSpawn, yTextSpawn, obj_message);
    
} else {
    //Draws the line with scripts
    var messageID = scr_createMessage(string_copy(str,1,p-1), xTextSpawn, yTextSpawn, obj_message);
}*/

