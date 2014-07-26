globalvar keyCamUp, keyCamDown, keyCamLeft, keyCamRight, camSpeed, camEdge, visionMap;

keyCamUp = vk_up;
keyCamDown = vk_down;
keyCamLeft = vk_left;
keyCamRight = vk_right;
camSpeed = 8;
camEdge = 4;
visionMap = ds_grid_create(room_width / 16, room_height / 2);
