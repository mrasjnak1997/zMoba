globalvar client, players, eid;
client = network_create_socket(network_socket_tcp);
network_connect(client, "127.0.0.1", 1220);
for(i = 0; i < 6; i += 1)
{
    players[i] = instance_create(-100, -100, objPlayer);
}
eid = 0;
