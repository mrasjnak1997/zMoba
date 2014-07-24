draw_set_alpha(0.5);
draw_set_color(c_black);
for(xx = round(view_xview/16)*16-16; xx < round((view_xview+view_wview)/16)*16+16; xx += 16)
{
    for(yy = round(view_yview/16)*16-16; yy < round((view_yview+view_hview)/16)*16+16; yy += 16)
    {
        if (ds_grid_get(visionClient, xx/16, yy/16) == 1)
        {
            draw_rectangle(xx, yy, xx+16, yy+16, false)
        }
    }
}
draw_set_alpha(1);
