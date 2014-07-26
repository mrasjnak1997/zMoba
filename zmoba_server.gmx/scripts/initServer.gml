globalvar server, clients, players, socks;
server = network_create_server(network_socket_tcp, 1220, 10);
for(i = 0; i < 10; i += 1)
{
    socks[i] = noone;
}
clients = ds_map_create();
players = 0;
