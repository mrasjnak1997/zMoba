draw_set_alpha(0.5);
draw_set_color(c_black);
for(xx = round(view_xview/16)-1; xx < round((view_xview+view_wview)/16)+1; xx += 1)
{
    if (xx < 0)
        xx = 0;
    for(yy = round(view_yview/16)-1; yy < round((view_yview+view_hview)/16)+1; yy += 1)
    {
        if (yy < 0)
            yy = 0;
            
        if (ds_grid_get(visionMap, xx, yy) == 1)
        {
            draw_sprite(sprShadow, 0, xx*16, yy*16);
            if (xx < room_width)
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
