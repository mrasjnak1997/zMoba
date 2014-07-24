globalvar visionMap;
visionMap = ds_grid_create(room_width/16, room_height/16);
ds_grid_set_region(visionMap, 0, 0, room_width/16, room_height/16, 1)

for(yy = 0; yy < room_height; yy += 16)
{
    for(xx = 0; xx < room_width; xx += 16)
    {
        for(i = 0; i < instance_number(objPlayer); i += 1)
        {
            inst = instance_find(objPlayer, i);
            if (point_distance(xx, yy, inst.x, inst.y) < 128)
            {
                if !(collision_line(xx, yy, inst.x, inst.y, objSolid, false, true))
                    ds_grid_set(visionMap, xx/16, yy/16, 0)
            }
        }
    }
}

draw_set_alpha(0.5);
draw_set_color(c_black);

for(yy = round(view_yview/16)*16-16; yy < round((view_yview+view_hview)/16)*16+16; yy += 16)
{
    for(xx = round(view_xview/16)*16-16; xx < round((view_xview+view_wview)/16)*16+16; xx += 16)
    {
        if (ds_grid_get(visionMap, xx/16, yy/16) == 1)
        {
            draw_rectangle(xx, yy, xx+16, yy+16, false)
            if (xx/16 < room_height-10)
            {
                if (ds_grid_get(visionMap, xx/16+1, yy/16) = 0)
                    draw_sprite_ext(sprTest, 0, xx+16, yy, 1, 1, 0, c_white, 0.5);
            }
            if (xx/16 > 10)
            {
                if (ds_grid_get(visionMap, xx/16-1, yy/16) = 0)
                    draw_sprite_ext(sprTest, 2, xx-16, yy, 1, 1, 0, c_white, 0.5);
            }
            if (yy/16 < room_height-10)
            {
                if (ds_grid_get(visionMap, xx/16, yy/16+1) = 0)
                    draw_sprite_ext(sprTest, 1, xx, yy+16, 1, 1, 0, c_white, 0.5);
            }
            if (yy/16 > 10)
            {
                if (ds_grid_get(visionMap, xx/16, yy/16-1) = 0)
                draw_sprite_ext(sprTest, 3, xx, yy-16, 1, 1, 0, c_white, 0.5);
            }
        }
    }
}

draw_set_alpha(1);
