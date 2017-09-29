if ds_exists(op0[on0,on1],ds_type_list) && ds_list_size(op0[on0,on1])>0{
    instance_destroy(obj_option);
    
    optionSize[0] = 0;
    optionSpace = view_hview - (view_hview[0]/2);
    var listSize = ds_list_size(op0[on0,on1]);
    for(i=0;i<listSize;i++){
        //Execute the dialog jumping!
        //view_wview[0] = view_wview[0]/3.333
        //scr_text(ds_list_find_value(op0[on0,on1],i),font_size+(font_size/2), max_width)
        //scr_createMessage(ds_list_find_value(op0[on0,on1],i), 0, 0, obj_message);
        with(obj_option) {
            optionID = other.i;
            other.optionSize[other.i] = self.box_height
            other.optionSpace -= self.box_height;
        }
    }
    
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
    
} else {
    scrNPCDialogContinue();
    scr_messageCreate();
}
