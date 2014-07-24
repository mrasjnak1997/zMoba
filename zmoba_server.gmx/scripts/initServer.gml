globalvar server, socks, players, clients;
server = network_create_server(network_socket_tcp, 1220, 6);
players = 0;
for(i = 0; i < 6; i += 1)
{
    socks[i] = noone;
}
clients = ds_map_create();
