#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <netdb.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define BUFFER 1024

char buffer[BUFFER];
char uptime[100];
char *host_addr;
int flag;
int s_num;
int s_psocket;
int s_csocket;
int s_portnum;
unsigned int s_client_addrlen;


void s_socket();
void s_bind();
void s_listen();
void s_read();
void s_write();
void s_close();
