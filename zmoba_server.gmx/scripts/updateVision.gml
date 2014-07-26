visionMap = ds_grid_create(room_width/16, room_height/16);
ds_grid_set_region(visionMap, 0, 0, room_width/16, room_height/16, 1);

for(xx = 0; xx < room_width/16; xx += 1)
{
    for(yy = 0; yy < room_height/16; yy += 1)
    {
        for(i = 0; i < instance_number(objPlayer); i += 1)
        {
            inst = ds_map_find_value(clients, socks[i]);
            if (point_distance(xx*16, yy*16, inst.x, inst.y) < 128)
            {
                if !(collision_line(xx*16, yy*16, inst.x, inst.y, objSolid, false, true))
                    ds_grid_set(visionMap, xx, yy, 0);
            }
        }
    }
}
