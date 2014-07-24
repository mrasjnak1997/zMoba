var t = ds_map_find_value(async_load, "type");
if(client == ds_map_find_value(async_load, "id"))
{
if(t == network_type_data)
{
    if(ds_map_find_value(async_load, "id") == client)
    {
        var buff = ds_map_find_value(async_load, "buff");
        var type = buffer_read(buff, buffer_string);
        if(type == "player")
        {
            eid = buffer_read(buff, buffer_s32);
            var i = buffer_read(buff, buffer_s16);
            var xx = buffer_read(buff, buffer_s16);
            var yy = buffer_read(buff, buffer_s16);
            players[i].x = xx;
            players[i].y = yy;
        }
    }
}
}
