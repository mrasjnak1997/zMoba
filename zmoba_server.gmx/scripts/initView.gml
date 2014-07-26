globalvar displayWidth, displayHeight, visionMap;
displayWidth = display_get_width();
displayHeight = display_get_height();
visionMap = ds_grid_create(room_width/16, room_height/16);
ds_grid_set_region(visionMap, 0, 0, room_width/16, room_height/16, 1);

view_wview = displayWidth/4;
view_hview = displayHeight/4;
view_wport = displayWidth;
view_hport = displayHeight;
