var type = ds_map_find_value(async_load, "type");
if(type == network_type_connect)
{
    var inst = instance_create(players * 20, players * 20, objPlayer);
    var sock = ds_map_find_value(async_load, "socket");
    ds_map_add(clients, sock, inst);
    socks[players] = sock;
    players += 1;
}
if(type == network_type_disconnect)
{
    var sock = ds_map_find_value(async_load, "socket");
    with(ds_map_find_value(clients, sock))
    {
        instance_destroy();
    }
    ds_map_delete(clients, sock);
    socks[players] = noone;
    players -= 1;
}
