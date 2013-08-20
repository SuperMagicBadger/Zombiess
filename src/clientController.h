/*
 * Client Controller
 * 
 * Initialy thought up by alex, smoothed out by john.
 * Lets do this shit.
 */

#ifndef _CLIENT_CONTROLLER_H_
#define _CLIENT_CONTROLLER_H_

//includes-------------------------------------------------
#include <OGRE/OgreVector3.h>
#include "Actor.h"
//includes=================================================

//prototypes-----------------------------------------------
class clientController;
#define move_speed 1
#define sprint_speed 4 
//prototypes===============================================

//definitions----------------------------------------------
class clientController : public Ogre::FrameListener{
	private:
		Zombies::Actor *mActor;
		bool go;
	public:
		//constructors-----------------
		clientController(Zombies::Actor *actor);
		//manips-----------------------
		void setTarget(Zombies::Actor *target);
		void place(Ogre::Vector3 position);
		//handlers---------------------
		void setOrientation(Ogre::Quaternion q);
		void recieveGo();
		void recieveStop();
		//inherited--------------------
		virtual bool frameStarted(const FrameEvent& evt);
		
};
//definitions==============================================
#endif