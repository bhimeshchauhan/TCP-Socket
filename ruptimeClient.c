/***************************************************************************/
/*                                                                         */
/* Client program which gets as parameter the server name or               */
/*     address and tries to send the data into non-blocking server.        */
/* Usage: ruptimeClient.c <host> <port>                                    */
/* The message is sent after 5 seconds of wait                             */
/***************************************************************************/
#include "ruptimeClient.h"

struct sockaddr_in addr_server;
struct hostent *t_server;

void error(char *msg){
    perror(msg);
    exit(0);
}

/* Create a client socket to connect to the server.    */
/* Return: non-negative integer if successful else -1. */
/*******************************************************/

void c_socket(){
    t_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (t_socket < 0){
        error("ERROR opening socket");
    }
}

/* Connect to the server*/
void c_connect(){
    // Get server's DNS entry
    t_server = gethostbyname(host_name);
    if (t_server == NULL) {
        fprintf(stderr,"ERROR, no such host as %s\n", host_name);
        exit(0);
    }
    
    // Build internet Address
    bzero((char *) &addr_server, sizeof(addr_server));
    addr_server.sin_family = AF_INET;
    bcopy((char *)t_server -> h_addr, (char *)&addr_server.sin_addr.s_addr, t_server -> h_length);
    addr_server.sin_port = htons(t_portnum);
    
    // Connect with server
    if (connect(t_socket, (struct sockaddr *)&addr_server, sizeof(addr_server)) < 0){
        error("ERROR connecting\n");
    }

}

void c_write(){
    t_count = write(t_socket, buffer, strlen(buffer));
    if (t_count < 0){
        error("ERROR writing to socket\n");
    }
}

void c_read(){
    printf("Please Enter a Message: ");
    bzero(buffer, BUFFER);
    fgets(buffer, BUFFER, stdin);
}

void c_close() {
    close(t_socket);
}
    
int main(int argc, char **argv){
    if (argc != 5){
        fprintf(stderr,"usage: %s <hostname> <port> <hostname2> <port2>\n", argv[0]);
        exit(0);
    }
    
    host_name = argv[1];
    t_portnum = atoi(argv[2]);
    
    // Create Socket
    c_socket();
    
    // Connect to Server
    c_connect();
    
    // Read message from the user
    c_read();
    
    // Write the message to the server
    c_write();
    
    // Print Servers reply
    bzero(buffer, BUFFER);
    t_count = read(t_socket, buffer, BUFFER);
    if (t_count < 0){
      error("ERROR reading from socket");
    }
    printf("Echo from server: %s\n", buffer);
    
    // close socket
    c_close();
    
    return 0;
}
