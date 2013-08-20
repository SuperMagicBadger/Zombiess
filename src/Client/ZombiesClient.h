#ifndef _ZOMBIES_CLIENT_H_
#define _ZOMBIES_CLIENT_H_

#include <stdio.h>
#include <string>
using namespace std;
#include "RakPeerInterface.h"
#include "PacketPriority.h"
#include "DS_List.h"
#include "RakNetSocket.h"

#include "MessageIdentifiers.h"
#include "BitStream.h"
#include "RakNetTypes.h"  // MessageID

#include "../Actor.h"
#include "../clientController.h"

#include <string.h>
#include "../hud.h"

#include <OGRE/OgreVector3.h>


#define MAX_CLIENTS 10
#define SERVER_PORT 56660
#define MAX_NUMBER_OF_ACTORS 64

enum GameMessages{
	CHAT_GAME_MESSAGE=ID_USER_PACKET_ENUM+1,
	CHARACTER_MOVEMENT=ID_USER_PACKET_ENUM+2,
	INIT_CONNECTION = ID_USER_PACKET_ENUM+3,
	STOP_MOVEMENT = ID_USER_PACKET_ENUM + 4,
	HIT_CHARACTER = ID_USER_PACKET_ENUM + 5
};

class ZombiesClient{
	private:
		HUD *mHUD;
		Zombies::Stage* mStage;
		clientController *mController;
		Ogre::SceneManager *mSceneMgr;
		int ID;
		RakNet::RakPeerInterface *peerInterface;
		void handleChatMsg(RakNet::BitStream *bsInput);
		void handleMove(RakNet::BitStream *bsInput);
		void assignID(RakNet::BitStream *bsInput);
		
		//Mange Actors
		Zombies::Actor **actorList;
		void createActor(int _id);
		bool actorExist(int _id);
	public:
		Zombies::Actor *mPlayer;
		ZombiesClient(Ogre::SceneManager *mainScene, Zombies::Stage* stage);
		void connectHUD(HUD *inputHud);
		void connectActor(Zombies::Actor *mActor);
		void listen();
		void handlePacket(RakNet::Packet *packet);
		void sendChatMsg(string s);
		void sendMove(Ogre::Vector3 position,Ogre::Quaternion q, int deltaT);
		void sendMove(float x, float y, float z, float qW, float qX, float qY, float qZ, int deltaT);
		void hitCharacter(int charID);
		void stopMovement();
};

#endif