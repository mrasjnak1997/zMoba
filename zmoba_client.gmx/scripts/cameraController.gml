if (keyboard_check(keyCamUp))
    view_yview -= camSpeed;
if (keyboard_check(keyCamDown))
    view_yview += camSpeed;
if (keyboard_check(keyCamLeft))
    view_xview -= camSpeed;
if (keyboard_check(keyCamRight))
    view_xview += camSpeed;
    
if (view_xview < 0)
    view_xview = 0;
if (view_yview < 0)
    view_yview = 0;
if (view_xview + view_wview > room_width)
    view_xview = room_width - view_wview;
if (view_yview + view_hview > room_height)
    view_yview = room_height - view_hview;
