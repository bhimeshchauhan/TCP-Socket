#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>

#define BUFFER 1024


int t_socket, t_portnum, t_count;
char *host_name;
char buffer[BUFFER];
int main(int argc, char **argv);
void error(char *msg);
void c_socket();
void c_connect();
void c_write();
void c_read();
void c_close();

