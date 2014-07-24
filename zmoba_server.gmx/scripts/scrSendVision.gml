visionMap = ds_grid_create(room_width/16, room_height/16);
ds_grid_set_region(visionMap, 0, 0, floor(room_width/16), floor(room_height/16), 1)

for(xx = 0; xx < room_width; xx += 16)
{
    for(yy = 0; yy < room_height; yy += 16)
    {
        for(i = 0; i < instance_number(objPlayer); i += 1)
        {
            inst = instance_find(objPlayer, i);
            if (point_distance(xx, yy, inst.x, inst.y) < 128)
            {
                if !(collision_line(xx, yy, inst.x, inst.y, objSolid, false, true))
                    ds_grid_set(visionMap, xx/16, yy/16, 0)
            }
        }
    }
}

var buff = buffer_create(256, buffer_grow, 1);
buffer_seek(buff, buffer_seek_start, 0);
for(xx = 0; xx < floor(room_width/16); xx += 1)
{
    for(yy = 0; yy < floor(room_height/16); yy += 1)
    {
        buffer_write(buff, buffer_string, "vision");
        buffer_write(buff, buffer_s16, xx);
        buffer_write(buff, buffer_s16, yy);
        buffer_write(buff, buffer_s16, ds_grid_get(visionMap, xx, yy));
    }
}
for(i = 0; i < 10; i += 1)
{
    if(socks[i] != noone)
    {
        network_send_packet(socks[i], buff, buffer_tell(buff));
    }
}
