/* 
 * File:   Splash.h
 * Author: cow
 *
 * Created on May 7, 2012, 4:04 PM
 */

#ifndef SPLASH_H
#define	SPLASH_H

//includes-------------------------------------------------
#include "Gorilla.h"
#include "OIS/OIS.h"
#include <OGRE/OgreViewport.h>
//includes=================================================

//defines--------------------------------------------------
#define SplashAtlas "Splash"
//defines==================================================

//prototypes-----------------------------------------------
namespace Zombies{
class SplashScreen;
}
//prototypes===============================================

//definitions----------------------------------------------
namespace Zombies{
class SplashScreen{
public:
	//constructors----------------
	SplashScreen(Ogre::Viewport* v);
	//manips----------------------
	bool toggle();
	//handlers--------------------
	bool onMouse(OIS::MouseEvent arg);
	bool onKeys(OIS::KeyEvent arg);
private:
	Gorilla::Silverback* mSilver;
	Gorilla::Screen* splashScreen;
	Gorilla::Layer* splashLayer;
	Gorilla::Rectangle* splashRect;
	Ogre::Viewport* host;
};
}
//definitions==============================================

#endif	/* SPLASH_H */

