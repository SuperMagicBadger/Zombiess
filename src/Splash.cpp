#include "Splash.h"
using namespace Zombies;

//splash screen-----------------------------
//constructors--------------------
SplashScreen::SplashScreen(Ogre::Viewport* v){
    //setup silver
    host = v;
    mSilver = Gorilla::Silverback::getSingletonPtr();
    mSilver->loadAtlas("Splash");
    
    //setup screen and layers
    splashScreen = mSilver->createScreen(host, "Splash");
    splashLayer = splashScreen->createLayer();
    
    //setup image
    splashRect = splashLayer->createRectangle(0, 0, 640, 350);
    splashRect->background_image("splash");
}
//manips--------------------------
bool SplashScreen::toggle(){
    if(splashScreen->isVisible()){
        splashScreen->hide();
    } else {
        splashScreen->show();
    }
    return splashScreen->isVisible();
}
//handlers------------------------
bool SplashScreen::onKeys(OIS::KeyEvent arg){
    if(splashScreen->isVisible()){
        if(arg.key == OIS::KC_1){
            return false;
        }
       toggle();
    } else if(arg.key == OIS::KC_1){
        toggle();
    }
    return true;
}
bool SplashScreen::onMouse(OIS::MouseEvent arg){
    if(splashScreen->isVisible()){
        toggle();
    }
    return true;
}
//splash screen=============================