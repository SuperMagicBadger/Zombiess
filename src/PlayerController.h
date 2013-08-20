/* 
 * File:   PlayerController.h
 * Author: cow
 *
 * Created on May 5, 2012, 11:56 AM
 */

#ifndef PLAYERCONTROLLER_H
#define	PLAYERCONTROLLER_H

//includes-------------------------------------------------
#include <OIS/OIS.h>
#include <OGRE/OgreSceneNode.h>
#include <OGRE/OgreFrameListener.h>

#include "Actor.h"
#include "CameraControll.h"
//includes=================================================

//defines--------------------------------------------------
#define key_fore OIS::KC_W
#define key_back OIS::KC_S
#define key_left OIS::KC_A
#define key_right OIS::KC_D
#define key_sprint OIS::KC_LSHIFT
#define move_speed 1
#define sprint_speed 4 
//defines==================================================

//prototypes-----------------------------------------------
namespace Zombies{
class PlayerControll;
}
//prototypes===============================================

//definitions----------------------------------------------
namespace Zombies{
class PlayerControll : public CameraController{
public:
	//constructor----------------------
	PlayerControll();
	PlayerControll(Ogre::String name, Ogre::SceneManager* sm);
	//handlers-------------------------	
	bool frameStarted(const FrameEvent& evt);
	bool keyPressed(const OIS::KeyEvent &arg );
	bool keyReleased(const OIS::KeyEvent &arg);
	bool mouseMoved(const OIS::MouseEvent& arg);
	bool mousePressed(const OIS::MouseEvent& arg, OIS::MouseButtonID id);
	bool mouseReleased(const OIS::MouseEvent& arg, OIS::MouseButtonID id);
private:
	bool checkCollision(Vector3 dir);
	bool foreward, left, right, back;
	float speed;
	float killRot;
	int invertYaw;
	int invertPitch;	
};
}
//definitions==============================================

#endif	/* PLAYERCONTROLLER_H */

