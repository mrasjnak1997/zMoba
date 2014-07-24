if(keyboard_check_direct(up))
{
    if(view_yview[0] > 5)
    {
        view_yview[0] -= 2;
    }
}
if(keyboard_check_direct(down))
{
    if(view_yview[0] + view_hview[0] < room_height - 5)
    {
        view_yview[0] += 2;
    }
}

if(keyboard_check_direct(left))
{
    if(view_xview[0] > 5)
    {
        view_xview[0] -= 2;
    }
}
if(keyboard_check_direct(right))
{
    if(view_xview[0] + view_wview[0] < room_width - 5)
    {
        view_xview[0] += 2;
    }
}

if(mouse_x < 30)
{
    if(view_xview[0] > 5)
    {
        view_xview[0] -= 2;
    }
}
if(mouse_x > view_xview[0] + view_wview[0] - 30)
{
    if(view_xview[0] + view_wview[0] < room_width - 5)
    {
        view_xview[0] += 2;
    }
}

if(mouse_y < 30)
{
    if(view_yview[0] > 5)
    {
        view_yview[0] -= 2;
    }
}
if(mouse_y > view_yview[0] + view_hview[0] - 30)
{
    if(view_yview[0] + view_hview[0] < room_height - 5)
    {
        view_yview[0] += 2;
    }
}
