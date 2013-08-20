#include <stdio.h>
#include <time.h>
#include <string.h>
using namespace std;

#include "RakPeerInterface.h"
#include "MessageIdentifiers.h"
#include "BitStream.h"
#include "RakNetTypes.h"  // MessageID

#include "../../netStructs/nxMovement.h"

#define MAX_CLIENTS 10
#define SERVER_PORT 56660

enum GameMessages{
	CHAT_GAME_MESSAGE=ID_USER_PACKET_ENUM+1,
	CHARACTER_MOVEMENT=ID_USER_PACKET_ENUM+2,
	INIT_CONNECTION = ID_USER_PACKET_ENUM+3,
	STOP_MOVEMENT = ID_USER_PACKET_ENUM + 4,
	HIT_CHARACTER = ID_USER_PACKET_ENUM + 5
};

enum{
	MAX_PLAYERS = MAX_CLIENTS,
	PLAYER_SPEED = 50,
	MAX_ZOMBIES= 64 - MAX_PLAYERS,
	ZOMBIE_SPAWN_RATE = 10000, //10 seconds
	MOVEMENT_TIME = 50,
	MILLI_IN_SEC = 1000
};


int main(void){
	srand( time(NULL));
	char str[512];
	float x, y, z;
	time_t startTime;
	time_t deltaT, lastT;
	time_t zombiesDeltaT, zombiesLastT;

	int numberofZombies=0;

	nxMovement list[MAX_ZOMBIES + MAX_PLAYERS];
	
	for(int i=0; i<MAX_ZOMBIES + MAX_PLAYERS; i++){
		list[i].pos.x=0.0f;
		list[i].pos.y=0.0f;
		list[i].pos.z=0.0f;
	}

	startTime = time(NULL);
	lastT = startTime;
	zombiesLastT = startTime;

	RakNet::RakPeerInterface *peer = RakNet::RakPeerInterface::GetInstance();
	RakNet::Packet *packet;
	int numofConnects=0;


	RakNet::SocketDescriptor sd(SERVER_PORT,0);
	peer->Startup(MAX_CLIENTS, &sd, 1);
	
	printf("Starting the server.\n");
	// We need to let the server accept incoming connections from the clients
	peer->SetMaximumIncomingConnections(MAX_CLIENTS);
	
	while (1){
		for (packet=peer->Receive(); packet; peer->DeallocatePacket(packet), packet=peer->Receive()){
			switch (packet->data[0]){
				case ID_REMOTE_DISCONNECTION_NOTIFICATION:
					printf("Another client has disconnected.\n");
					break;
				case ID_REMOTE_CONNECTION_LOST:
					printf("Another client has lost the connection.\n");
					break;
				case ID_REMOTE_NEW_INCOMING_CONNECTION:{
					printf("Another client has connected.\n");
					int newID = numofConnects;

					// Use a BitStream to write a custom user message
					// Bitstreams are easier to use than sending casted structures, and handle endian swapping automatically
					RakNet::BitStream bsOut;
					bsOut.Write((RakNet::MessageID)INIT_CONNECTION);
					bsOut.WriteAlignedBytes((const unsigned char*) &newID, sizeof(newID));
					peer->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,packet->systemAddress,false);
				
					RakNet::RakString rs;
					bsOut.IgnoreBytes(sizeof(RakNet::MessageID));
					bsOut.Read(rs);
					printf("Assigned ID: %d", (int)((rs.C_String())[0])-48);
					numofConnects++;
					}
					break;
				case ID_CONNECTION_REQUEST_ACCEPTED:{
						printf("Our connection request has been accepted.\n");

					}
					break;
				case ID_NEW_INCOMING_CONNECTION:{
					printf("A connection is incoming.\n");
					
					int newID = numofConnects;

					// Use a BitStream to write a custom user message
					// Bitstreams are easier to use than sending casted structures, and handle endian swapping automatically
					RakNet::BitStream bsOut;
					bsOut.Write((RakNet::MessageID)INIT_CONNECTION);
					bsOut.WriteAlignedBytes((const unsigned char*) &newID, sizeof(newID));
					peer->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,packet->systemAddress,false);
				
					RakNet::RakString rs;
					bsOut.IgnoreBytes(sizeof(RakNet::MessageID));
				
					int id;
					bsOut.ReadAlignedBytes((unsigned char*) &id, sizeof(id));

					printf("Assigned ID: %d\n", id);
					numofConnects++;
					}
					break;
				case ID_NO_FREE_INCOMING_CONNECTIONS:
					printf("The server is full.\n");
					break;
				case ID_DISCONNECTION_NOTIFICATION:
					printf("A client has disconnected.\n");
					break;
				case ID_CONNECTION_LOST:
					printf("A client lost the connection.\n");
					break;
				case CHAT_GAME_MESSAGE:{
						printf("RECEIVED A CHAT PACKET.\n");
						RakNet::RakString rs;
						RakNet::BitStream bsIn(packet->data,packet->length,false);
						bsIn.IgnoreBytes(sizeof(RakNet::MessageID));
						
						int ID;

						bsIn.Read(rs);
						
						printf("%s\n", rs.C_String());

						//Broadcast Chat Message
					
						RakNet::SystemAddress *adds = new RakNet::SystemAddress[20];
						unsigned short numofConnects;
						peer->GetConnectionList(adds, &numofConnects);

						RakNet::BitStream bsOut;
						bsOut.Write((RakNet::MessageID)CHAT_GAME_MESSAGE);
						bsOut.Write(rs);

						for(int i=0; i<numofConnects; i++){
							peer->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,peer->GetSystemAddressFromIndex(i),false);
						}
					}
					break;
				case CHARACTER_MOVEMENT:{
					nxMovement movement;
					RakNet::BitStream bsIn(packet->data,packet->length,false);
					bsIn.IgnoreBytes(sizeof(RakNet::MessageID));

					bsIn.ReadAlignedBytes((unsigned char*) &movement, sizeof(movement));
					
					list[movement.ID].pos.x+=movement.pos.x * PLAYER_SPEED * ((float)MOVEMENT_TIME / (float)MILLI_IN_SEC);
					list[movement.ID].pos.y+=movement.pos.y * PLAYER_SPEED * ((float)MOVEMENT_TIME / (float)MILLI_IN_SEC);
					list[movement.ID].pos.z+=movement.pos.z * PLAYER_SPEED * ((float)MOVEMENT_TIME / (float)MILLI_IN_SEC);
					list[movement.ID].q = movement.q;

					movement.pos.x=list[movement.ID].pos.x; movement.pos.y=list[movement.ID].pos.y; movement.pos.z=list[movement.ID].pos.z;

					//Floods the new position.
					RakNet::BitStream bsOut;
					bsOut.Write((RakNet::MessageID)CHARACTER_MOVEMENT);
					//Change Floats to a Smaller Value;
					bsOut.WriteAlignedBytes((const unsigned char*) &movement, sizeof(movement));
					
					RakNet::SystemAddress *adds = new RakNet::SystemAddress[20];
					unsigned short numofConnects;
					peer->GetConnectionList(adds, &numofConnects);
					for(int i=0; i<numofConnects; i++){
						peer->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,peer->GetSystemAddressFromIndex(i),false);
					}

					printf("New Position of Character %d, x:%f, y:%f, z:%f Orientation - W:%f,x: %f, y: %f, z: %f.\n",
						movement.ID, movement.pos.x,movement.pos.y,movement.pos.z, movement.q.w, movement.q.x, movement.q.y, movement.q.z);
					}
					break;
				case HIT_CHARACTER:{
					int charID;
					RakNet::BitStream bsIn(packet->data,packet->length,false);
					bsIn.IgnoreBytes(sizeof(RakNet::MessageID));
					bsIn.ReadAlignedBytes((unsigned char*) &charID, sizeof(charID));
					
					list[charID].pos.x = (rand()%(720+660))-660;
					list[charID].pos.y = (rand()%(720+660))-660;

					RakNet::BitStream bsOut;
					bsOut.Write((RakNet::MessageID)CHARACTER_MOVEMENT);
					
					//Change Floats to a Smaller Value;
					bsOut.WriteAlignedBytes((const unsigned char*) &(list[charID]), sizeof( (list[charID]) ));
					
					RakNet::SystemAddress *adds = new RakNet::SystemAddress[20];
					unsigned short numofConnects;
					peer->GetConnectionList(adds, &numofConnects);
					for(int i=0; i<numofConnects; i++){
						peer->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,peer->GetSystemAddressFromIndex(i),false);
					}

					}
					break;
				case STOP_MOVEMENT:{
					//
						RakNet::BitStream bsOut(packet->data,packet->length,false);
						RakNet::SystemAddress *adds = new RakNet::SystemAddress[20];
						unsigned short numofConnects;
						peer->GetConnectionList(adds, &numofConnects);
						for(int i=0; i<numofConnects; i++){
							peer->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,peer->GetSystemAddressFromIndex(i),false);
						}
					}
					break;
				default:
					printf("Message with identifier %i has arrived.\n", packet->data[0]);
					break;
				}
			}
		deltaT = time(NULL)-lastT;
		if(deltaT > 500){//500ms
			// PING people to find RTT

			//Transmit coords.
			lastT+=500;
		}
		
		zombiesDeltaT = time(NULL) - zombiesLastT;
		if(deltaT>ZOMBIE_SPAWN_RATE){//10 s
			if(numberofZombies < MAX_ZOMBIES){
				//CREATE A ZOMBIE in a RANDOM POSITION!
				numberofZombies++;

			}
			zombiesLastT+=ZOMBIE_SPAWN_RATE;
		}
	}


	RakNet::RakPeerInterface::DestroyInstance(peer);

	return 0;
}