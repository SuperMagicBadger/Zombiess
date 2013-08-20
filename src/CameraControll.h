/* 
 * File:   CameraControll.h
 * Author: cow
 *
 * Created on May 4, 2012, 8:51 PM
 * 
 * http://www.ogre3d.org/tikiwiki/3rd+person+camera+system+tutorial&structure=Tutorials
 * 
 * This set of classes are used to setup a third person
 * camera system. you need a camear and a cam controller for this to work.
 * 
 * Camera------------
 * ------------------
 * the camera handles the actual movement of the camera, all the low
 * level shit.
 * 
 * CameraController--
 * ------------------
 * this is used to bind the camera to a player or some other actor.
 * it needs to be atatched to a frames update loop.  If you use the second constructor
 * it'll keep track of an internal camera.  just don't call bind camera if you
 * do this... thats how you summon cthulu.
 * 
 */

#ifndef CAMERACONTROLL_H
#define	CAMERACONTROLL_H

//includes-------------------------------------------------
#include <OGRE/OgreCamera.h>
#include <OGRE/OgreSceneManager.h>
#include <OGRE/OgreSceneNode.h>
#include <OGRE/OgreVector3.h>
#include <OGRE/OgreFrameListener.h>
#include <OGRE/ExampleFrameListener.h>
#include <OIS/OIS.h>

#include "Actor.h"
//includes=================================================

//defines--------------------------------------------------
//defines==================================================

//prototypes-----------------------------------------------
namespace Zombies{
class Camera;
class CameraController;
}
//prototypes===============================================

//definitions----------------------------------------------
namespace Zombies{
class Camera{
public:
	//constructors---------------------
	Camera(Ogre::String camName,  Ogre::SceneManager* scnManager, Ogre::Camera* _cam = NULL);
	~Camera();
	//camera manips---------------------
	void moveTo(Ogre::Vector3 sourcePos, Ogre::Vector3 targetPos);
private:
	//camera system---------------------
	Ogre::Camera* internalCam;
	Ogre::SceneNode* target;
	Ogre::SceneNode* source;
	bool delCam;
};
class CameraController : public FrameListener{
public:
	//constructors---------------------
	CameraController();
	CameraController(Ogre::String name, Ogre::SceneManager* scnman);
	~CameraController();
	//tracking manips------------------
	void bindCamera(Zombies::Camera* camera);
	void bindActor(Actor* a);
	void bindTarget(SceneNode* binding);
	void bindSource(SceneNode* binding);
	//handlers-------------------------
	virtual bool frameStarted(const FrameEvent& evt);
protected:
	//bindings-------------------------
	Zombies::Actor* actorBinding;
	Ogre::SceneNode* sourceBinding;
	Ogre::SceneNode* targetBinding;
	//camera---------------------------
	Zombies::Camera* cameraBinding;
	bool delCam;
};
}
//definitions==============================================

#endif	/* CAMERACONTROLL_H */

