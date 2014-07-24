if (keyboard_check(keyCamUp) || mouse_y < view_yview + camEdge )
    view_yview -= camSpeed;
if (keyboard_check(keyCamDown) || mouse_y > view_yview + view_hview - camEdge)
    view_yview += camSpeed;
if (keyboard_check(keyCamLeft) || mouse_x < view_xview + camEdge )
    view_xview -= camSpeed;
if (keyboard_check(keyCamRight) || mouse_x > view_xview + view_wview - camEdge)
    view_xview += camSpeed;
    
if (view_xview < 20)
    view_xview = 20;
if (view_yview < 20)
    view_yview = 20;
if (view_xview + view_wview > room_width - 20)
    view_xview = room_width - view_wview - 20;
if (view_yview + view_hview > room_height - 20)
    view_yview = room_height - view_hview - 20;
