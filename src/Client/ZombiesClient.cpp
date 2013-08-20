// ZombiesClient.cpp : Defines the entry point for the console application.
//
#include "ZombiesClient.h"
#include "../Actor.h"
#include "../clientController.h"

#include <sstream>
//Ogre
#include <OGRE/OgreVector3.h>

//Network Structures
#include "../../netStructs/nxMovement.h"
//
ZombiesClient::ZombiesClient(Ogre::SceneManager *mainScene, Zombies::Stage* stage){
	this->peerInterface = RakNet::RakPeerInterface::GetInstance();
	RakNet::SocketDescriptor sd;
	peerInterface->Startup(1,&sd, 1);

	peerInterface->Connect("169.236.107.48", SERVER_PORT, 0,0);
	printf("Connecting to server!");
	mSceneMgr = mainScene;
	mStage = stage;
	mPlayer = NULL;

	//Create List of Actors
	actorList = new Zombies::Actor *[MAX_NUMBER_OF_ACTORS];

	//Set all pointers to Null
	for(int i=0; i<MAX_NUMBER_OF_ACTORS; i++){
		actorList[i]=NULL;
	}
}

void ZombiesClient::listen(){
	RakNet::Packet *packet;
	for (packet=peerInterface->Receive(); packet; peerInterface->DeallocatePacket(packet), packet=peerInterface->Receive())
		handlePacket(packet);
}

void ZombiesClient::handlePacket(RakNet::Packet *packet){
	RakNet::BitStream bitsIn(packet->data,packet->length,false);
	switch (packet->data[0]){
		case ID_REMOTE_DISCONNECTION_NOTIFICATION:
			printf("Another client has disconnected.\n");
			break;
		case ID_REMOTE_CONNECTION_LOST:
			printf("Another client has lost the connection.\n");
			break;
		case ID_REMOTE_NEW_INCOMING_CONNECTION:
			printf("Another client has connected.\n");
			break;
		case ID_CONNECTION_REQUEST_ACCEPTED:
			printf("Our connection request has been accepted.\n");
			break;
		case INIT_CONNECTION:
			this->assignID(&bitsIn);
			break;
		case ID_NEW_INCOMING_CONNECTION:
			printf("A connection is incoming.\n");
			break;
		case ID_NO_FREE_INCOMING_CONNECTIONS:
			printf("The server is full.\n");
			break;
		case ID_DISCONNECTION_NOTIFICATION:
			printf("We have been disconnected.\n");
			break;
		case ID_CONNECTION_LOST:
			printf("Connection lost.\n");
			break;
		case CHAT_GAME_MESSAGE:
			handleChatMsg(&bitsIn);
			break;
		case CHARACTER_MOVEMENT:
			handleMove(&bitsIn);
			break;
		default:
			printf("Message with identifier %i has arrived.\n", packet->data[0]);
			break;
	}
}

void ZombiesClient::handleChatMsg(RakNet::BitStream * bsIn){
	RakNet::RakString rs;
	bsIn->IgnoreBytes(sizeof(RakNet::MessageID));
	bsIn->Read(rs);
	this->mHUD->debugMsg->text(rs.C_String());
}

void ZombiesClient::handleMove(RakNet::BitStream *bsIn){
	nxMovement movement;

	bsIn->IgnoreBytes(sizeof(RakNet::MessageID));
	bsIn->ReadAlignedBytes((unsigned char*) &movement, sizeof(movement));

	//If it doesn't exist, make it.
	if(!actorExist(movement.ID)) createActor(movement.ID);
	
	Ogre::Vector3 transVector = Ogre::Vector3::ZERO;
	transVector.x=movement.pos.x; transVector.y=1000; transVector.z=movement.pos.z;
	
	Ogre::Quaternion orient(movement.q.w, movement.q.x, movement.q.y, movement.q.z);
	
	if(movement.ID==this->ID){
		mController->setTarget(this->mPlayer);
	}else{
		mController->setTarget( actorList[movement.ID]);
	}

	mController->place(transVector);
	mController->setOrientation(orient);
	mStage->fixHeight(actorList[movement.ID]);

	char buffer [50];
    int n = sprintf(buffer, "This ID: %d, Move ID: %d", this->ID, movement.ID);

    this->mHUD->debugMsg->text(buffer);

}


void ZombiesClient::sendChatMsg(string input){
	RakNet::RakString msg;

	char *a=new char[input.size()+1];
	a[input.size()]=0;
	memcpy(a,input.c_str(),input.size());
	msg=a;
	msg = msg.SubStr(6, msg.GetLength()-6);
	
	RakNet::BitStream bsOut;
	bsOut.Write((RakNet::MessageID)CHAT_GAME_MESSAGE); //Add tag
	bsOut.Write(msg);
	//bsOut.WriteAlignedBytes((const unsigned char*) input.c_str(), sizeof(unsigned char*) * input.size());
	peerInterface->Send(&bsOut,MEDIUM_PRIORITY,RELIABLE_ORDERED,0,peerInterface->GetSystemAddressFromIndex(0),false);
}

void ZombiesClient::sendMove(Ogre::Vector3 position, Ogre::Quaternion q, int deltaT){
	sendMove(position.x,position.y,position.z, q.w, q.x, q.y, q.z, deltaT);
}

void ZombiesClient::sendMove(float x, float y, float z, float qW, float qX, float qY, float qZ, int deltaT){
	//Input is a vector of the direction moving.
	RakNet::BitStream bsOut;
	nxMovement movePack;
	
	movePack.ID = this->ID;

	movePack.pos.x = x; movePack.pos.y=y; movePack.pos.z =z;
	movePack.q.w = qW; movePack.q.x = qX; movePack.q.y = qY; movePack.q.z = qZ;

	bsOut.Write((RakNet::MessageID)CHARACTER_MOVEMENT);
	
	//Change Floats to a Smaller Value;
	bsOut.WriteAlignedBytes((const unsigned char*)&movePack, sizeof(movePack));
	
	peerInterface->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,peerInterface->GetSystemAddressFromIndex(0),false);
}

void ZombiesClient::assignID(RakNet::BitStream * bsIn){
	RakNet::RakString rs;
	bsIn->IgnoreBytes(sizeof(RakNet::MessageID));
	bsIn->ReadAlignedBytes((unsigned char*) &(this->ID), sizeof(this->ID));

	actorList[this->ID]=mPlayer;
}

void ZombiesClient::connectHUD(HUD *inputHud){
	mHUD=inputHud;
}

void ZombiesClient::connectActor(Zombies::Actor *mActor){
	mPlayer = mActor;
	mController = new clientController(mActor);
}

void ZombiesClient::createActor(int _id){
	if(actorList[_id]==NULL){
		std::stringstream idString;
		idString<<_id;
		actorList[_id] = new Zombies::Actor("scout_mesh.mesh", ("player"+idString.str()), mSceneMgr);
		mStage->addActor(actorList[_id]);
                clientController* c = new clientController(actorList[_id]);
	}
}

bool ZombiesClient::actorExist(int _id){
	if(actorList[_id]==NULL) return false;
	return true;
}

void ZombiesClient::stopMovement(){
	RakNet::BitStream bsOut;
	
	bsOut.Write((RakNet::MessageID)STOP_MOVEMENT);
	bsOut.WriteAlignedBytes((const unsigned char*)&(ID), sizeof(ID));
	
	peerInterface->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,peerInterface->GetSystemAddressFromIndex(0),false);
}

void ZombiesClient::hitCharacter(int charID){
	RakNet::BitStream bsOut;
	
	bsOut.Write((RakNet::MessageID)HIT_CHARACTER);
	bsOut.WriteAlignedBytes((const unsigned char*)&(ID), sizeof(ID));
	
	peerInterface->Send(&bsOut,HIGH_PRIORITY,RELIABLE_ORDERED,0,peerInterface->GetSystemAddressFromIndex(0),false);
}