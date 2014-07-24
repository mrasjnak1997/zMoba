if(client == ds_map_find_value(async_load, "socket"))
{
    ds_grid_clear(visionClient, 1);
    var buff =ds_map_find_value(async_load, "buffer");
    
    if(argument0 == "vision")
    {
        for(i = 0; i < (buffer_sizeof(buff)-1)/3; i += 1)
        {
            var xx = buffer_read(buff, buffer_s16);
            var yy = buffer_read(buff, buffer_s16);
            var val = buffer_read(buff, buffer_s16);
            ds_grid_add(visionClient, xx, yy, val);
        }
    }
}
