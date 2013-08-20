/*
-----------------------------------------------------------------------------
Filename:    TutorialApplication.h
-----------------------------------------------------------------------------

This source file is part of the
   ___                 __    __ _ _    _ 
  /___\__ _ _ __ ___  / / /\ \ (_) | _(_)
 //  // _` | '__/ _ \ \ \/  \/ / | |/ / |
/ \_// (_| | | |  __/  \  /\  /| |   <| |
\___/ \__, |_|  \___|   \/  \/ |_|_|\_\_|
      |___/                              
      Tutorial Framework
      http://www.ogre3d.org/tikiwiki/
-----------------------------------------------------------------------------
*/
#ifndef __TutorialApplication_h_
#define __TutorialApplication_h_
#include <string.h>
#include "BaseApplication.h"
#include "hud.h"
#include "Client/ZombiesClient.h"
#include "Actor.h"
#include "PlayerController.h"
#include "Splash.h"
#include <OGRE/OgreOverlay.h>
#include "../src/gridmap.h"

class TutorialApplication : public BaseApplication{
public:
	TutorialApplication(void);
    virtual ~TutorialApplication(void);
	Gridmap fake;
	float t0;
protected:
	virtual void createScene(void);
	virtual bool keyPressed( const OIS::KeyEvent &arg );
	virtual bool keyReleased( const OIS::KeyEvent &arg);
	virtual bool mouseMoved(const OIS::MouseEvent& arg);
	virtual bool mousePressed(const OIS::MouseEvent& arg, OIS::MouseButtonID id);
	virtual bool mouseReleased(const OIS::MouseEvent& arg, OIS::MouseButtonID id);
	virtual bool frameRenderingQueued(const Ogre::FrameEvent& evt);
	
	//HUD Related Stuff
	HUD *mHUD;
	Ogre::Timer *mTimer;
	string chatMsg;
	unsigned long timePressed;

	//Networking Related Stuff
	ZombiesClient *mClient;
	Ogre::Vector3 movementVector;

	//stage framework
	Zombies::Stage* stage;
	Zombies::PlayerControll* pcon;
	
	//splash image
	Zombies::SplashScreen* splash;
};



#endif // #ifndef __TutorialApplication_h_
