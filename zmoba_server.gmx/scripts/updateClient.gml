if(client == ds_map_find_value(async_load, "id"))
{
    var type = ds_map_find_value(async_load, "type");
    if(type == network_type_data)
    {
        var buff = ds_map_find_value(async_load, "buffer");
        var t = buffer_read(buff, buffer_string);
        if(t == "player")
        {
            var i = buffer_read(buff, buffer_s16);
            var xx = buffer_read(buff, buffer_s16);
            var yy = buffer_read(buff, buffer_s16);
            players[i].x = xx;
            players[i].y = yy;
        }
        if(t == "vision")
        {
            for(xx = 0; xx < round(room_width/16); xx += 1)
            {
                for(yy = 0; yy < round(room_height/16); yy += 1)
                {
                    var i = buffer_read(buff, buffer_s16);
                    if(i != 1)
                    {
                        ds_grid_set(visionMap, xx, yy, i);
                    }
                }
            }
        }
    }
}
