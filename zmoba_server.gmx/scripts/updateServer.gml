var t = ds_map_find_value(async_load, "type");
if(t == network_type_connect)
{
    var eid = ds_map_find_value(async_load, "id");
    var inst = instance_create(players * 20, players * 20, objPlayer);
    ds_map_add(clients, players, inst);
    socks[players] = ds_map_find_value(async_load, "socket");
    players += 1;
}
if(t == network_type_disconnect)
{
    var eid = ds_map_find_value(async_load, "id");
    var inst = instance_create(players * 20, players * 20, objPlayer);
    ds_map_add(clients, players, inst);
    socks[players] = noone
    players -= 1;
}
