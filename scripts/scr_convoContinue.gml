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
if(!global.playerSpeaking)
{
    //var xTextSpawn = view_wview[0];
    var objType = obj_messagePlayer;
} else {
    //var xTextSpawn = 0;
    var objType = obj_messageOther;
}

//global.newMessageSpawn = global.newMessage.y + scr_boxHeight(str) + (global.padding* 4)

global.newMessage = scr_createBox(str, global.optionBoxStart, objType);
global.newMessage.convoID = id;

if(global.firstMessage == -1) {
    global.firstMessage = global.newMessage;
}

scr_moveMessage(str);

if (ds_exists(op0[on0,on1],ds_type_list) && ds_list_size(op0[on0,on1])>0){
    instance_destroy(obj_option);
    global.newMessage.transition = false;
    global.receiving = false;
    
    optionSizes[0] = 0;
    var listSize = ds_list_size(op0[on0,on1]);
    optionSpaceLeft = global.optionBoxSize;
    
    for(i=0;i<listSize;i++) {
        var txt = ds_list_find_value(op0[on0,on1],i);
        optionSpaceLeft -= scr_boxHeight(txt);
        optionSizes[i] = scr_boxHeight(txt);
    }
    
    var optionSpacing = optionSpaceLeft/(listSize + 1);
    
    for(i=0;i<listSize;i++) {
        var txt = ds_list_find_value(op0[on0,on1],i);
        var yPosition = global.optionBoxStart + (optionSpacing * (i + 1));
        
        for(j=0;j<i;j++) {
            yPosition += optionSizes[@ j];
        }
        
        var optionID = scr_createBox(txt, yPosition, obj_option);
        
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

