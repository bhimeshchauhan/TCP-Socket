/***************************************************************************/
/*                                                                         */
/* Server program which gets as parameter the server name or               */
/*     address and tries to send the data into non-blocking server.        */
/* Usage: ruptimeServer.c <port>                                           */
/* The message is recieve for 5 seconds                                    */
/***************************************************************************/
#include "ruptimeServer.h"

struct sockaddr_in s_address;
struct sockaddr_in c_address;
struct hostent *s_host;


void error(char *message){
    perror(message);
    exit(1);
}

void s_socket(){
    s_psocket = socket(AF_INET, SOCK_STREAM, 0);
    if (s_psocket < 0){
        error("ERROR opening socket");
    }
}

void s_bind(){
    flag = 1;
    setsockopt(s_psocket, SOL_SOCKET, SO_REUSEADDR, (const void *)&flag, sizeof(int));
    bzero((char *)&s_address, sizeof(s_address));
    s_address.sin_family = AF_INET;
    s_address.sin_port = htons((unsigned short) s_portnum);
    if (bind(s_psocket, (struct sockaddr *) &s_address,
       sizeof(s_address)) < 0){
        error("ERROR on binding");
    }
}

void s_listen(){
    if (listen(s_psocket, 5) < 0){ /* allow 5 requests to queue up */
        error("ERROR on listen");
    }
}


void s_read(){
    s_client_addrlen = sizeof(c_address);
    while(1){
        s_csocket = accept(s_psocket, (struct sockaddr *) &c_address, &s_client_addrlen);
        if (s_csocket < 0){
            error("ERROR on accept");
        }
        
        s_host = gethostbyaddr((const char *)&c_address.sin_addr.s_addr, sizeof(c_address.sin_addr.s_addr), AF_INET);
        if (s_host == NULL){
            error("ERROR on gethostbyaddr");
        }
        
        host_addr = inet_ntoa(c_address.sin_addr);
        if (host_addr == NULL){
            error("ERROR on inet_ntoa\n");
        }
        printf("server established connection with %s (%s)\n", s_host->h_name, host_addr);
        
        bzero(buffer, BUFFER);
        s_num = read(s_csocket, buffer, BUFFER);
        
        if (s_num < 0){
            error("ERROR reading from socket");
        }
        printf("server received %d bytes: %s", s_num, buffer);
    }
}

void s_write(){

    s_num = write(s_csocket, buffer, strlen(buffer));
    if (s_num < 0){
        error("ERROR writing to socket");
    }
}

void s_close(){
    close(s_csocket);
}

int main(int argc, char **argv){
    
    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }
    s_portnum = atoi(argv[1]);
    
    // Create parent socket
    s_socket();
    
    // Bind the socket
    s_bind();
    
    // Listen for a request
    s_listen();
    
    // Read data
    s_read();
    
    // Write ack
    s_write();
    return 0;
}
