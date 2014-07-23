for(yy = floor(view_yview/32)*32-32; yy < ceil(view_yview+view_hview/32)*32; yy += 16)
{
    for(xx = floor(view_xview/32)*32-32; yy < ceil(view_xview+view_wview/32)*32; xx += 16)
    {
        draw_set_alpha(0.5)
        draw_rectangle(xx, yy, xx+16, yy+16, false);
    }
}
