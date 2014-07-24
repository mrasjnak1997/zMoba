for(i = 0; i < 6; i += 1)
{
    if(ds_map_exists(clients, i))
    {
        var inst = ds_map_find_value(clients, i);
        var xx = inst.x;
        var yy = inst.y;
        var buff = buffer_create(256, buffer_grow, 1);
        buffer_seek(buff, buffer_seek_start, 0);
        buffer_write(buff, buffer_string, "player");
        buffer_write(buff, buffer_s16, i);
        buffer_write(buff, buffer_s16, xx);
        buffer_write(buff, buffer_s16, yy);
        for(j = 0; j < 6; j += 1)
        {
            if(socks[j] != noone)
            {
                buffer_write(buff, buffer_s32, j);
                network_send_packet(socks[j], buff, buffer_tell(buff));
            }
        }
    }
}
