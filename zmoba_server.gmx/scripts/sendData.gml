for(i = 0; i < 10; i += 1)
{
    if(ds_map_exists(clients, socks[i]))
    {
        var inst = ds_map_find_value(clients, socks[i]);
        var xx = inst.x;
        var yy = inst.y;
        var buff = buffer_create(256, buffer_grow, 1);
        buffer_seek(buff, buffer_seek_start, 0);
        buffer_write(buff, buffer_string, "player");
        buffer_write(buff, buffer_s16, i);
        buffer_write(buff, buffer_s16, xx);
        buffer_write(buff, buffer_s16, yy);
        for(j = 0; j < 10; j += 1)
        {
            if(socks[j] != noone)
            {
                network_send_packet(socks[j], buff, buffer_tell(buff));
            }
        }
    }
}

updateVision();
buff = buffer_create(256, buffer_grow, 1);
buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff, buffer_string, "vision");
for(xx = 0; xx < round(room_width/16); xx += 1)
{
    for(yy = 0; yy < round(room_height/16); yy += 1)
    {
        buffer_write(buff, buffer_s16, ds_grid_get(visionMap, xx, yy));
    }
}
for(j = 0; j < 10; j += 1)
{
    if(socks[j] != noone)
    {
        network_send_packet(socks[j], buff, buffer_tell(buff));
    }
}
