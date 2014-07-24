globalvar visionMap;
visionMap = ds_grid_create(room_width/16, room_height/16);
ds_grid_set_region(visionMap, 0, 0, room_width/16, room_height/16, 1)

for(yy = 0; yy < room_height/16; yy += 1)
{
    for(xx = 0; xx < room_width/16; xx += 1)
    {
        for(i = 0; i < instance_number(objPlayer); i += 1)
        {
            inst = instance_find(objPlayer, i);
            if (point_distance(xx*16, yy*16, inst.x, inst.y) < 128)
            {
                if !(collision_line(xx*16, yy*16, inst.x, inst.y, objSolid, false, true))
                    ds_grid_set(visionMap, xx, yy, 0)
            }
        }
    }
}

draw_set_alpha(0.5);
draw_set_color(c_black);

for(yy = round(view_yview/16)-1; yy < round((view_yview+view_hview)/16)+1; yy += 1)
{
    if (yy < 0)
        yy = 0;
        
    for(xx = round(view_xview/16)-1; xx < round((view_xview+view_wview)/16)+1; xx += 1)
    {
        if (xx < 0)
            xx = 0;
            
        if (ds_grid_get(visionMap, xx, yy) == 1)
        {
            draw_sprite(sprShadow, 0, xx*16, yy*16);
            if (xx < room_height)
            {
                if (ds_grid_get(visionMap, xx+1, yy) = 0)
                    draw_sprite(sprShadow, 1, xx*16+16, yy*16);
            }
            if (xx > 0)
            {
                if (ds_grid_get(visionMap, xx-1, yy) = 0)
                    draw_sprite(sprShadow, 3, xx*16-16, yy*16);
            }
            if (yy < room_height)
            {
                if (ds_grid_get(visionMap, xx, yy+1) = 0)
                    draw_sprite(sprShadow, 2, xx*16, yy*16+16);
            }
            if (yy > 0)
            {
                if (ds_grid_get(visionMap, xx, yy-1) = 0)
                    draw_sprite(sprShadow, 4, xx*16, yy*16-16);
            }
        }
    }
}

draw_set_alpha(1);
